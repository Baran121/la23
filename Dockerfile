FROM mcr.microsoft.com/azure-functions/node:3.0

ENV AzureWebJobsStorage=DefaultEndpointsProtocol=https;AccountName=expmovementsapi;AccountKey=1r1pxKUpY5a87lT0kNb6YkL0MS+kUN7Yt3/9M8XtXws/JTwCuSdjUrIBtaYtnExZdxEWhNd7sCYy/0oLJk32yQ==;BlobEndpoint=https://expmovementsapi.blob.core.windows.net/;QueueEndpoint=https://expmovementsapi.queue.core.windows.net/;TableEndpoint=https://expmovementsapi.table.core.windows.net/;FileEndpoint=https://expmovementsapi.file.core.windows.net/;
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true 
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true
ENV WEBSITE_HOSTNAME localhost
ENV WEBSITE_SITE_NAME sbaraneebus-la
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV serviceBus_connectionString Endpoint=sb://sbaraneebus.servicebus.windows.net/;SharedAccessKeyName=neoran;SharedAccessKey=jmMddIIsi+unfHbk/Mq8m2tI6JEjj4x4wDFA93gaCgE=;
COPY . /home/site/wwwroot
