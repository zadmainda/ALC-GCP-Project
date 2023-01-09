#!/bin/bash

#mainda.kinara@gmail.com

gcloud compute networks list

gcloud compute routes list

gcloud compute firewall-rules list

gcloud compute networks create mynetwork --subnet-mode=auto

gcloud compute firewall-rules create mynetwork-allow-custom --direction=INGRESS --network=mynetwork --action=ALLOW --rules=all

gcloud compute firewall-rules create mynetwork-allow-icmp --direction=INGRESS --network=mynetwork --action=ALLOW --rules=icmp

gcloud compute firewall-rules create mynetwork-allow-rdp --direction=INGRESS --network=mynetwork --action=ALLOW --rules=tcp:3389

gcloud compute firewall-rules create mynetwork-allow-ssh --direction=INGRESS --network=mynetwork --action=ALLOW --rules=tcp:22

gcloud compute instances create mynet-us-vm --zone=us-central1-c --machine-type=f1-micro --network=mynetwork

gcloud compute instances create mynet-eu-vm --zone=europe-central2-a --machine-type=f1-micro --network=mynetwork

gcloud compute firewall-rules delete mynetwork-allow-icmp

gcloud compute firewall-rules delete mynetwork-allow-custom

gcloud compute firewall-rules delete mynetwork-allow-ssh