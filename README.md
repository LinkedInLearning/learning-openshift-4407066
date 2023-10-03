# Learning OpenShift
This is the repository for the LinkedIn Learning course Learning OpenShift. The full course is available from [LinkedIn Learning][lil-course-url].

![Learning OpenShift][lil-thumbnail-url] 

If you’re just getting started with Red Hat OpenShift, the Kubernetes-based enterprise platform as a service, you may be faced with a series of frustrating and exceedingly complex challenges. Because while OpenShift offers excellent security, cost effectiveness, and support features, it differs from Kubernetes in a number of critical ways. This course enables developers with Kubernetes experience to become proficient in OpenShift in a reasonably short amount of time. Get an overview of Red Hat OpenShift 4, exploring the major differences between it and Kubernetes. Along the way, instructor Adrian Kosmaczewski demonstrates how to start working with OpenShift 4 clusters, deploying applications, setting up CI/CD pipelines, working with operators and templates, monitoring services, and scaling applications.

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

This is the complete list of branches:

- Chapter 1: Getting Started
    - `01_07`: [Video 7: Solution: show how to install CRC in Linux](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/01_07)
- Chapter 2: Standard DevOps Practices
    - `02_01`: [Video 1: Understanding OpenShift security](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/02_01)
    - `02_02`: [Video 2: Deploying and debugging containers](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/02_02)
    - `02_03`: [Video 3: Building containers from source code](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/02_03)
    - `02_06`: [Video 6: Solution: setup a CI/CD pipeline in your cluster](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/02_06)
- Chapter 3: Advanced Cloud Native Apps
    - `03_02`: [Video 2: Serverless applications with Knative](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/03_02)
    - `03_03`: [Video 3: Microservices and Service Mesh](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/03_03)
    - `03_04`: [Video 4: Challenge: Deploy a Microservices application](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/03_04)
    - `03_05`: [Video 5: Solution: Deploy a Microservices application](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/03_05)
- Chapter 4: Scaling and Monitoring Apps
    - `04_01`: [Video 1: Logging](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/04_01)
    - `04_02`: [Video 2: Manual, Horizontal, and Vertical Scaling](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/04_02)
    - `04_03`: [Video 3: Monitoring apps with Prometheus](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/04_03)
    - `04_05`: [Video 5: Solution: Monitor an application](https://github.com/LinkedInLearning/learning-openshift-4407066/tree/04_05)

### Beware!

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:

    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Requirements

1. To use these exercise files, you must have the following installed:
	- Students should use a computer running Microsoft Windows, Apple macOS, or Linux.
    - Students should have Git installed.
    - They should also have a container management tool installed, such as [Podman](https://podman.io/) or [Docker](https://www.docker.com/).
2. Clone this repository into your local machine using the terminal (Mac, Linux), CMD (Windows), or a GUI tool like SourceTree.
3. Switch to the branch corresponding to the video you're currently watching.

### Recommended LinkedIn Learning Courses

To get the knowledge required to follow this course, we recommend the following three courses on LinkedIn Learning:

- ["Learning Docker" by Carlos Nunez](https://www.linkedin.com/learning/learning-docker-17236240/get-up-and-running-quick-with-docker)
- ["Learning Kubernetes" by Kim Schlesinger](https://www.linkedin.com/learning/learning-kubernetes-16086900/setting-sail-on-your-kubernetes-voyage)
- ["Learning Git and GitHub" by Ray Villalobos](https://www.linkedin.com/learning/learning-git-and-github-14213624/travel-the-multiverse-with-git-and-github)


### Instructor

Adrian Kosmaczewski 
                            


                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/adrian-kosmaczewski).

[lil-course-url]: https://www.linkedin.com/learning/learning-openshift?dApp=59033956&leis=LAA
[lil-thumbnail-url]: https://media.licdn.com/dms/image/D560DAQEPNCZkqBRNrA/learning-public-crop_675_1200/0/1695934210812?e=2147483647&v=beta&t=ib1wWBKZcEPkhSOsxquta3F_ppd7-du7atyINSzsa2k

