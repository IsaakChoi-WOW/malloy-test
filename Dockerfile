## Import default ubuntu build
FROM ubuntu

## Set working dir within image to /app
WORKDIR /app

## Copy malloy composer linux build from source to image
COPY malloy-composer-linux/composer ./

## Copy all source code to image
COPY . .

## Expose port 4000 (within container)
ENV PORT=4000
EXPOSE 4000

## Execute the application
CMD [ "./malloy-composer-linux/composer", "./malloy-composer-linux/malloy-samples" ]

