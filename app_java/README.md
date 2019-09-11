# Random Number App Engine for Java

You can access the deployed application at [http://norse-antenna-251217.appspot.com/](http://norse-antenna-251217.appspot.com/).

The following steps explain how you could make this app yourself.

## Before you begin

1.  Download and install the [Google Cloud
    SDK](https://cloud.google.com/sdk/docs/).

1.  [Install and configure Apache Maven](http://maven.apache.org/index.html).

1.  [Create a new Google Cloud Platform project, or use an existing
 one](https://console.cloud.google.com/project).

1.  Initialize the Cloud SDK.

        gcloud init

1.  Install the Cloud SDK `app-engine-java` component.

        gcloud components install app-engine-java

1. Clone the repo for the example Java App Engine project.
        
        git clone https://github.com/GoogleCloudPlatform/appengine-try-java

## Modifying the example project to show a random number

The only modifications you need to make to the example project are in src/main/webapp/index.html and src/main/java/myapp/DemoServlet.java. Just change those files to match the corresponding files in this repo.

## Running and deploying the app

As you modify the example project, you may want to run and/or deploy it.

You can run the app with ```mvn clean appengine:run```. The app is then accessible at [localhost:8080](http://localhost:8080).

You can deploy the app to AppEngine with ```mvn clean appengine:deploy```.