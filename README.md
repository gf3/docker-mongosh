# Docker mongosh

A docker image for the [MongoDB Shell](https://github.com/mongodb-js/mongosh).

> The MongoDB Shell, mongosh, is a fully functional JavaScript environment for
> interacting with MongoDB deployments. You can use the MongoDB Shell to test
> queries and operations directly with your database.

**Note:** Built on mongosh 0.5.2

## Using

### 1. Build

```sh
docker build -t mongosh:latest .
```

### 2. Alias

**bash**

```sh
alias mongosh='docker run -it --rm --network host -v $(pwd):/root mongosh:latest'
```

**fish**

```fish
alias mongosh 'docker run -it --rm --network host -v (pwd):/root mongosh:latest'
```

### 3. Run

```sh
mongosh "mongodb://mongo-host:27017/database"
...
.load ./myFile.js
```
