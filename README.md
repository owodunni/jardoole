# jardoole

## Docker

### Build
```
docker build -t jardoole/wedding .
```

### Run
```
docker run -p 8080:8080 jardoole/wedding
```

### Develop
```
docker run -p 8080:8080 -v $(pwd)/src:/app/src jardoole/wedding
```

### Deploy
```
docker run -it -p 9005:9005 jardoole/wedding /bin/sh
```

```
yarn build
```

```
firebase login
firebase deploy
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
