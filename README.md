# DockerDev-Bluemix
Docker build for IBM Bluemix dev.

This will create a Docker container that contains the basic tools need to interact with the IBM Bluemix Cloud Foundry platform (https://www.ibm.com/cloud-computing/bluemix/runtimes).

## Instructions

To build the container image run: `make build`.

To run the container run: `make run`. By default this will mount the `$HOME/dev/Bluemix` directory on yoru Docker host, which should contain your Bluemix application project directories. From within the container this directory will be mapped to `/Bluemix`. If your Bluemix application project directories are in a different location you can specify that location by passing the PROJECT_DIR parameter to the `make run` command. Example: `make run PROJECT_DIR=/opt/myprojects`.  

## Getting Started With Bluemix

1. Go to [Bluemix.com] (https://bluemix.com) and create a free account.
2. From the Bluemix Catalog, navigate to the [Cloud Foundry Apps section] (https://console.ng.bluemix.net/catalog/?category=cf-apps).
3. Click the runtime you want to use.
4. Log in to Bluemix, if you have not already.
5. Provide the app name, modify the host name if required, and click __Create__.
6. Your app begins staging, and you should be redirected to the app's getting started page.
7. Use the `git clone` command provided or download the sample code to save the source code to your `PROJECT_DIR`.
8. Skip the step to run the application locally. Note, you can run the application locally if you update this container's configuration to support it, e.g. install language support and port configuration.
9. Follow remaining instructions to modify the app and deploy again.
