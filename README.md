Prerequisites : chocolatey,DockerDesktop 
(Currently works on windows)
Build and run using Docker Commands:
```
docker build -t newimage . 
docker run --rm --name newcontainer -p 8000:3000 newimage
```
Open `http://localhost:8000` in your browser.

Build and run using Makefile:

```
make run_website
```
Open `http://localhost:8000` in your browser.

Install Kind:
```
make install_kind
```
create Cluster
```
kind create cluster —name docker
```
