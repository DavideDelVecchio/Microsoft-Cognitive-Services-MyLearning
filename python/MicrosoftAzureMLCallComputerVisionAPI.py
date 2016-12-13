# The script MUST contain a function named azureml_main
# which is the entry point for this module.

# imports up here can be used to 
import pandas as pd

import http.client, urllib.request, urllib.parse, urllib.error, base64
import json

headers = {
    # Request headers
    'Content-Type': 'application/json',
    'Ocp-Apim-Subscription-Key': 'KeyHelloGoodbye', # secret key1
}

params = urllib.parse.urlencode({
    # Request parameters
    'visualFeatures': 'Description,Categories',
    #'details': '{string}',
    'language': 'en',        
})

#def extend_dataframe(dataframe1):
#    dataframe1.insert(loc=2, column='Description', value=u'')

# The entry point function can contain up to two input arguments:
#   Param<dataframe1>: a pandas.DataFrame
#   Param<dataframe2>: a pandas.DataFrame
def azureml_main(dataframe1 = None, dataframe2 = None):
    try:
        conn = http.client.HTTPSConnection('api.projectoxford.ai')
        # example
        #conn.request("POST", "/vision/v1.0/analyze?%s" % params, "{'url':'http://unsplash.com/photos/98Rcate6GCU/download?force=true'}", headers)
        dataframe1.insert(loc=2, column='Description', value=u'')
        dataframe1.insert(loc=3, column='Confidence', value=u'')
        for index, row in dataframe1.iterrows():
            body = "{'url':'"+row['url']+"'}"
            #print(body)
            conn.request("POST", "/vision/v1.0/analyze?%s" % params, body, headers)                 
            response = conn.getresponse()
            data = response.read()
            parsed_json = json.loads(data.decode("UTF-8"))
            #print(parsed_json)
            #print(parsed_json["description"]["captions"][0]["text"])
            #print(parsed_json["description"]["captions"][0]["confidence"])
            #print(parsed_json["categories"])
            dataframe1.set_value(index,'Description',str(parsed_json["description"]["captions"][0]["text"]))
            dataframe1.set_value(index,'Confidence',str(parsed_json["description"]["captions"][0]["confidence"]))
            #break
                    
        conn.close()
    except Exception as e:
        print("[Errno {0}] {1}".format(e.errno, e.strerror))
        
    # Execution logic goes here
    #print('Input pandas.DataFrame #1:\r\n\r\n{0}'.format(dataframe1))

    # If a zip file is connected to the third input port is connected,
    # it is unzipped under ".\Script Bundle". This directory is added
    # to sys.path. Therefore, if your zip file contains a Python file
    # mymodule.py you can import it using:
    # import mymodule
    
    # Return value must be of a sequence of pandas.DataFrame
    return dataframe1,
