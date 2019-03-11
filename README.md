# learning
everything about small things that can make a big difference.

--------------------------------------------------------------------------------------
Part - 1a
1. run dotnet core, a very simple web api on mac/linux
      --Use an installer to install dotnet core on mac.
      --you are all set..

2. install git -- was installed by default in aws linux box.
3. install visual studio code.
4. run a sample microservice on mac
5. check with postman
---------------
Part - 1b
1. create a docker file for the microservice
2. create a docker image 
3. push the docker image to your repository
4. run the same microservice via the docker container
5. check with postman and ensure it works

docker build -t simplewebapi:v1 . --force-rm --no-cache
docker run -it --rm -p 8080:80 --name simplewebapi simplewebapi:v1
docker stop
docker rm
docker images
docker ps -a
docker rm -f $(docker ps -aq)
docker rmi $(docker images -q -f dangling=true) -- deletes dangling images
----------------

Part - 2a
1. Pull the same image into your new EC2 instance.
2. Run the docker container.
3. Ensure you can hit your service.

----------------
Part - 2b
1. run kubernetes and create a deployment.

ensure you have tagged the image in the below format.
gcloud docker -- push gcr.io/{PROJECT_ID}/{image}:tag

2. create a deployment for the microservice
3. run the same microservice in the kubernetes orchestration platform
4. scale the service
---------------

set context to GKE
https://cloud.google.com/kubernetes-engine/docs/how-to/exposing-apps

some hits..

kubectl get service my-simplewebapi-service --output yaml

-----steps to install docker-----
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

