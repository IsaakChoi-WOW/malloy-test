## Import linux base image
# For optimisation look at: https://cloud.google.com/compute/docs/containers
FROM debian:bullseye-slim

## Set working dir within image to /app
WORKDIR /

## Copy from src into image
COPY src .

## Add execute permissions to malloy composer binary
# RUN chmod a+x composer
RUN ls

## NOT NEEDED??
## Expose port 4000 (within container)
# ENV PORT=4000
# EXPOSE 4000

## Execute the application (in background; not required)
CMD [ "./composer", "data", "&" ]

