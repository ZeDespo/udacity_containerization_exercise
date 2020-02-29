[![Udacity](https://circleci.com/gh/udacity-containerization-exercise/circleci-docs.svg?style=shield)](https://app.circleci.com/jobs/github/adespotakis/udacity_containerization_exercise/7)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### How to use this repository
*Run the following scripts in the order of their appearance.* 
1. `run_docker.sh`
    - Builds and runs the docker image
    - To test, in a seperate terminal window, run `make_prediction.sh` and check for output. If you see the following, 
    you're on the right track: 
    ```
    {
        "prediction": [
            20.35373177134412
        ]
    }

    ```
2. `upload_docker.sh`
    - Takes the docker image and pushes it to hub.docker.com. Will need this for kubernetes

3. `run_kubernetes.sh`
    - *Kubernetes must be running on your machine for this to work.*
    - Pulls the docker image you just uploaded to hub.docker.com and instructs kubernetes to run it within
    a pod. 
    - The script will also list the pod name. Once the pod is ready, you can either run the script again, or use
    `kubectl port-forward $podname 8000:80`
    - You can test if the image was successful or not by running `make_prediction.sh`

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
