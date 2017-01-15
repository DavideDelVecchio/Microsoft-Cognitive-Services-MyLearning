# The script MUST contain a function named azureml_main
# which is the entry point for this module.

# imports up here can be used to 
import numpy as np
import pandas as pd
import http.client, urllib.request, urllib.parse, urllib.error, base64, requests
from bs4 import BeautifulSoup

def get_token():
    headers = {
    # Request headers
    'Ocp-Apim-Subscription-Key': 'str1HelloGoodBye', # secret key1
    }
    
    params = urllib.parse.urlencode({
    })
    try:
        conn = http.client.HTTPSConnection('api.cognitive.microsoft.com')
        conn.request("POST", "/sts/v1.0/issueToken?%s" % params, "{body}", headers)
        response = conn.getresponse()
        data = response.read()        
        mytoken = data.decode("utf-8") # from byte to string   
        #print(mytoken)
        conn.close()
        return mytoken
    except Exception as e:
        print("[Errno {0}] {1}".format(e.errno, e.strerror))        

def get_supported_languages(mytoken):
        #supported languages
        mylanguages = requests.get("https://api.microsofttranslator.com/v2/http.svc/GetLanguagesForTranslate?appid=Bearer "+mytoken)
        #print (mylanguages.text)        
        souplangs = BeautifulSoup(mylanguages.text,"lxml")
        
        #for lang in souplangs.find_all('string'):
            #print (lang.string)
        return souplangs

# The entry point function can contain up to two input arguments:
#   Param<dataframe1>: a pandas.DataFrame
#   Param<dataframe2>: a pandas.DataFrame
def azureml_main(dataframe1 = None, dataframe2 = None):
    #print(len(dataframe1))
    # Execution logic goes here

    try:
        mytoken = get_token()
        
        souplangs = get_supported_languages(mytoken)
        
        dataframe1.insert(loc=3, column='Translation', value=u'')
        for index, row in dataframe1.iterrows():
            #check if original language is supported
            if souplangs.find(string=row['Textline Iso6391 Name']) is not None:
                urlfull = "https://api.microsofttranslator.com/v2/http.svc/Translate?appid=Bearer "+mytoken+"&text="+row['Textline']+"&from="+row['Textline Iso6391 Name']+"&to=de"
                data = requests.get(urlfull)
                #print(data.status_code +' '+data.headers['content-type']+' '+data.encoding+' '+data.text)            
                souptrans = BeautifulSoup(data.text,"lxml")
                trans = souptrans.find("string").string
                #print(str(trans))
                # set translation as unicode with str, because tans is of type bs4.element.tag
                dataframe1.set_value(index,'Translation',str(trans))

    except Exception as e:
        print("[Errno {0}] {1}".format(e.errno, e.strerror))
      
    #print('Input pandas.DataFrame #1:\r\n\r\n{0}'.format(dataframe1))    

    # If a zip file is connected to the third input port is connected,
    # it is unzipped under ".\Script Bundle". This directory is added
    # to sys.path. Therefore, if your zip file contains a Python file
    # mymodule.py you can import it using:
    # import mymodule
    
    # Return value must be of a sequence of pandas.DataFrame
    return dataframe1,
