## NOTE 
Linux composer binary is too big to commit to normal git repo.
Download and add the Linux composer binary to ./src as `composer` before building docker image.

## Login to gcloud to use BigQuery - Not yet working - Need to auth from within container
gcloud auth login --update-adc
gcloud config set project <Project Name>

## BUILD AND RUN
docker build -t faa .
docker run --network=host faa

