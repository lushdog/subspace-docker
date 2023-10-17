# subspace-docker
Dockerfile for subspace

## farmer

farmer可以连接远程的node，所以能够只单独运行farmer程序。
注意node需要添加参数才可以被远程链接
`--rpc-cors all --unsafe-rpc-external --rpc-methods unsafe`

### 构建farmer

`docker build . -f Dockerfile.farm --tag subspace-farmer --no-cache`

`docker build . -f Dockerfile.farm --tag subspace-farmer --no-cache --build-arg IS_SKYLAKE=no`

### 运行farmer

`docker compose up -d farmer`

### 参数
NODE_RPC_URL为远程node的rpc地址，格式为ws://ip:9944

## node

farmer可以连接远程的node，所以开一个node就够用。

### 构建node

`docker build . -f Dockerfile.node --tag subspace-node --no-cache`

`docker build . -f Dockerfile.node --tag subspace-node --no-cache --build-arg IS_SKYLAKE=no`

### 运行node

`docker compose up -d node`

### 参数
NODE_BASE_PATH为存储数据的地方
NODE_NAME node唯一的名字
