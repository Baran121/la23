FROM mcr.microsoft.com/azure-functions/node:3.0

ENV AzureWebJobsStorage DefaultEndpointsProtocol=https;AccountName=myownuni;AccountKey=BGH0vBcDOdvZsBJ44JBQfYmrQyvOgXcjIiGUVgjL/alqI6Cd6nWVxXtX78x0y4U62sTwELjaQ9dnXsR51ILsvg==;BlobEndpoint=https://myownuni.blob.core.windows.net/;QueueEndpoint=https://myownuni.queue.core.windows.net/;TableEndpoint=https://myownuni.table.core.windows.net/;FileEndpoint=https://myownuni.file.core.windows.net/;
ENV AzureWebJobsScriptRoot /home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled true 
ENV FUNCTIONS_V2_COMPATIBILITY_MODE true
ENV WEBSITE_HOSTNAME localhost
ENV WEBSITE_SITE_NAME sbaraneebus-la1
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV APPINSIGHTS_INSTRUMENTATIONKEY 887ff36f-e291-46c4-a72d-56724d5d73d7
ENV serviceBus_connectionString Endpoint=sb://tty-sample.servicebus.windows.net/;SharedAccessKeyName=OrderQSendRev;SharedAccessKey=m7p05lzCr/V6mylUxcghoQNNPPi97Zunci4XfasgMIs=;
COPY . /home/site/wwwroot
