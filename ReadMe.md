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

    5. gcloud compute firewall-rules create mynetwork-allow-custom --direction=INGRESS --network=mynetwork --action=ALLOW --rules=all
    > deny-all-ingress and allow-all-egress rules 

    6. Create a VM instance in the us-cental-1-c zone and europe-cental2-a zone. :machine type=>e2-micro (2 vCPU, 1 GB memory)
    Series => E2 
    