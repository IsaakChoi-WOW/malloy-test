## Import linux base image
# For optimisation look at: https://cloud.google.com/compute/docs/containers
FROM debian:bullseye-slim

## Set working dir within image to /app
WORKDIR /app

## Copy from src into image
COPY src .

## Add execute permissions to malloy composer binary
# RUN chmod a+x composer

## NOT NEEDED??
EXPOSE $PORT

## Execute the application (in background; not required)
CMD [ "./composer", "--port", $PORT, "--host", "0.0.0.0", "data"]

