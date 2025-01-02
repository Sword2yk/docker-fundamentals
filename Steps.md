# Create and run 3 Nginx containers with different content using volumes. 
# Each container should serve its own custom HTML page. 
# Each container should be accessible on the localhost with it’s own unique port

## Get the file path for index.html in the container
```docker exec -it CONTAINER ID```

```/usr/share/nginx/html/index.html```


## Nginx container 1
```docker run -d --rm -p 12301:80 -v ./web1:/usr/share/nginx/html/ nginx```

## Nginx container 2
```docker run -d --rm -p 12302:80 -v ./web2:/usr/share/nginx/html/ nginx```

## Nginx container 3
```docker run -d --rm -p 12303:80 -v ./web3:/usr/share/nginx/html/ nginx```
