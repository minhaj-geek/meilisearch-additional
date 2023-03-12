# meilisearch-additional

Data is present in JSON file with name final-record.json.

1, Add the IP of your server/vm in line 21 of "meilisearch-execute.sh" file.
   Example: http://<ServerIP>:7700 to http://172.16.1.14:7700

2. Execute "meilisearch-execute.sh" file.
   Command: sudo chmod +x meilisearch-execute.sh && sudo ./meilisearch-execute.sh
   
It will run the meilisearch in docker container and upload the data present in the JSON file. 
