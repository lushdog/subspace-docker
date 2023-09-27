# subspace-docker
Dockerfile for subspace

## farmer

farmer连接远程的node，所以可以只单独运行farmer程序。注意node需要添加参数才可以被远程链接
`--rpc-cors all --unsafe-rpc-external --rpc-methods unsafe`

### 构建

`docker build . -f Dockerfile.farm --tag subspace-farmer --no-cache`

### 运行

`docker compose up -d farmer`
