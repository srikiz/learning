Session - 2
Run dotnetcore/nodewebapi on minikube setup.

Part -1 
Run nodewebapi locally and dockerize it.

Part-2
1. install minikube
2. Start a deployment using the yaml file.
3. Start a deployment via the kubectl command for nodewebapi
4. Expose a port via the port-forward option and show we are able to access nodewebapi.



--------------------------------------------------------------------------------------
Session - 1 - Run dotnetcore with docker.
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

----------------

Part - 2a
1. Pull the same image into your new EC2 instance.
2. Run the docker container.
3. Ensure you can hit your service.


