### VPC Networking and Google Compute Engine

This projet sets up Google Cloud Virtual Private Cloud (VPC) which provides networking functionality to Compute Engine virtual machine (VM) instances, Kubernetes Engine containers, and App Engine flexible environment. 

It creates an Auto MOde VPC network with firewall rules and two VM instances in the followin steps:

    1. gcloud compute networks list
    > View available routes

    2. gcloud compute routes list
    > View available routes rules

    3. gcloud compute firewall-rules list
    > View available Firewall rules

    4. gcloud compute networks create mynetwork --subnet-mode=auto
    > Create an auto mode  VPC called mynetwork
    