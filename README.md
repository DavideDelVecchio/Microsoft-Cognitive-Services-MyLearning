# Microsoft-Cognitive-Services-MyLearning
My simple scripts on learning Microsoft Azure Machine Learning and Cognitive Services. Sample text data from http://www.gutenberg.org/ and images from https://unsplash.com/ .

##### 1. How-to utilize the [Computer Vision API example notebook] (https://github.com/AlexanderTodorovic/Microsoft-Cognitive-Services-MyLearning/blob/master/python/notebooks/AzureCognitiveServicesComputerVisionAPI.ipynb)
> * [Free Azure account] (https://azure.microsoft.com/de-de/free/)
> * [Login to Azure] (https://portal.azure.com)
> * + New -> Intelligence + analytics - API type Computer Vision API - Pricing Tier F0 Free
> * [Login to Microsoft Azure Jupyter Notebooks] (https://notebooks.azure.com/)
> * Choose Open in Jupyter or Add Notebooks
> * Import the [Computer Vision API example notebook] (https://github.com/AlexanderTodorovic/Microsoft-Cognitive-Services-MyLearning/blob/master/python/notebooks/AzureCognitiveServicesComputerVisionAPI.ipynb)
> * Copy from your Computer Vision API key1
> * Put your key1 here -> Azure'Ocp-Apim-Subscription-Key': __'put_your_key1_here'__
> * Go to Cell - Run All to run the notebook.

##### 2. How-to utilize the [Text Translator API example] (https://github.com/AlexanderTodorovic/Microsoft-Cognitive-Services-MyLearning/blob/master/python/MicrosoftAzureMLCallCognitiveServiceTranslatorTextAPI.py)
> * [Free Azure account] (https://azure.microsoft.com/de-de/free/)
> * [Login to Azure] (https://portal.azure.com)
> * + New -> Intelligence + analytics - API type Translator Text API - Pricing Tier F0 Free
> * + New -> Intelligence + analytics - Machine Learning Workspace - Workspace Pricing Tier Standard - Web Service Pricing Tier DevText Standard
> * Create new experiment in Machine Learning Workspace
> * Add the Enter Data Manually component and copy the [example data] (https://github.com/AlexanderTodorovic/Microsoft-Cognitive-Services-MyLearning/blob/master/python/MicrosoftAzureMLCallCognitiveServiceTranslatorTextAPI_SampleData.csv) into the component
> * Add the Text Analytics -> Detect Language component
> * Add the Execute Python Script component
> * Copy key1 from your Text Translator API Service in the Azure Portal
> * Copy your key1 in the [source code] (https://github.com/AlexanderTodorovic/Microsoft-Cognitive-Services-MyLearning/blob/master/python/MicrosoftAzureMLCallCognitiveServiceTranslatorTextAPI.py) 'Ocp-Apim-Subscription-Key': __'put_your_key1_here'__
> * Add the source code (https://github.com/AlexanderTodorovic/Microsoft-Cognitive-Services-MyLearning/blob/master/python/MicrosoftAzureMLCallCognitiveServiceTranslatorTextAPI.py) to the Execute PYthon Script component
> * Run the experiment
