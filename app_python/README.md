# Random Number App Engine for Python

You can access the deployed application at [http://softwaredevproject1python.appspot.com/](http://softwaredevproject1python.appspot.com/).

We made these instructions in two steps. If you want to clone this directory into an appEngine and run it, that's part 1. Using the high-quality hello world tutorial and changing the code slightly might be even easier, and that's part two.

## 1: Using our sourcecode

### Prerequisites:

You need to have set up an appEngine project. You can follow the first two steps of part 2's Before you begin to see how to do this.

Our app engine came with everything we needed installed, so make sure you follow the tutorial's set up for creating the app engine.

### Running the code

cd into the given hello_world directory and run the following:

        virtualenv --python python3 ~/envs/hello_world
        source ~/envs/hello_world/bin/activate
        pip install -r requirements.txt
        gcloud app create
        gcloud app deploy app.yaml --project {yourProject}

## 2: Making this app yourself

### Before you begin

1. [Create a new Google Cloud Platform project, or use an existing one](https://console.cloud.google.com/project).

1. Navigate to [App Engine](https://console.cloud.google.com/appengine) from the sidebar.

1. Now follow the [tutorial](https://codelabs.developers.google.com/codelabs/cloud-app-engine-python/index.html?index=..%2F..index) to get a Hello World project set up in python.

### Modifying the example project to show a random number

1. This is a much more simple step than in Java, since instead of changing the index.html, we just need to change the main method. I have provided my project folder in a directory called "hello_world" for you to reference. I also left my "$(history)" in a file called history for you to reference should you need it.

1. You have two options. You can either make a new project and call it random_num instead of hello_world, or you can just change the hello world code and re-deploy. This walkthrough assumes the latter.

1. cd into your directory with main.py. For me it was

        cd python-docs-samples/appengine/standard_python37/hello_world

1. Use your favorite text editor (I used nano) to add the dependency for random. I put mine 1 line below Flask.

        import random

1. Now change the hello world return statement to a random number.

        num=random.randint(0,1000000)
        return str(num)

## Running and deploying the app

If you went ahead and deployed in the tutorial, you don't need to create again, you simply need to re-deploy, even if you made a new project.

        gcloud app deploy app.yaml --project {projectName}

Otherwise, you'll need to both create and deploy

        gcloud app create
        gcloud app deploy app.yaml --project {projectName}

I left a picture of the feedback you should get on successful deployment. This is where your link should be!
