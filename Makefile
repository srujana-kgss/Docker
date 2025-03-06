run_website:
		docker build -t newimage . && \
		docker run --rm --name newcontainer -p 8000:3000 newimage
