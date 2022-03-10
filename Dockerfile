FROM golang:1.16-alpine

# Create a working directory called app
WORKDIR /app

# Copy all the files into the current directory
COPY . . 
RUN go build -o news_app

# Runs on localhost:3000
EXPOSE 3000
WORKDIR /app

CMD ["/app/news_app"]