#Running Meilisearch in Docker Container:
#It will run the container which will be accessible via sever/vm public ip on port 7700
#JsON Converter https://www.aconvert.com/document/xlsx-to-json/ 

docker pull getmeili/meilisearch:v1.0

wait

docker run -d --rm \
  -p 7700:7700 \
  -v $(pwd)/meili_data:/meili_data \
  getmeili/meilisearch:v1.0

wait


**************************************************
#uploading JSON data into Meilisearch docker Contianer:
**************************************************

curl -X POST 'http://<ServerIP>:7700/indexes/records/documents?primaryKey=id'   -H 'Content-Type: application/json'   --data-binary @final-record.json
