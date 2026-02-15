# 🌐 Google Kubernetes Engine: Qwik Start || GSP100 🚀 [![Open Lab](https://img.shields.io/badge/Open-Lab-blue?style=flat)](https://www.skills.google/course_templates/744/labs/582693)

## ⚠️ Disclaimer ⚠️

<blockquote style="background-color: #fffbea; border-left: 6px solid #f7c948; padding: 1em; font-size: 15px; line-height: 1.5;">
<strong>Heads Up:</strong> This resource is here to help you learn and for educational purposes only! Check out the script to see how the cloud services connect—it’s a great way to boost your skills. 
 <br><br>
 <strong>Play by the Rules:</strong> Make sure you’re following the guidelines for Qwiklabs and YouTube. Let’s use this to learn more effectively, not just to bypass the challenge!
</blockquote>

---

<div style="padding: 15px; margin: 10px 0;">

## ☁️ Run in Cloud Shell:

```
export VM_NAME="lab-vm"
export ZONE="us-east4-c"  # Replace with your actual zone

gcloud compute instances stop lab-vm --zone [YOUR_ZONE]
# Example:
# gcloud compute instances stop lab-vm --zone us-east4-c

gcloud compute instances set-machine-type $VM_NAME \
  --machine-type e2-medium \
  --zone $ZONE

gcloud compute instances start lab-vm --zone us-east4-c

```
#### If you get error run 

```

gcloud auth list

export ZONE=$(gcloud compute project-info describe --format="value(commonInstanceMetadata.items[google-compute-default-zone])")

export PROJECT_ID=$(gcloud config get-value project)

gcloud config set compute/zone "$ZONE"

gcloud compute instances stop lab-vm --zone="$ZONE"

sleep 10

gcloud compute instances set-machine-type lab-vm --machine-type e2-medium --zone="$ZONE"

sleep 10

gcloud compute instances start lab-vm  --zone="$ZONE"


```

</div>

---

## 🎉 **Congratulations! Lab Completed Successfully!** 🏆  

<div style="text-align:center; padding: 10px 0; max-width: 640px; margin: 0 auto;">
  <h3 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-bottom: 14px;">📱 Join the Tech Qwik Code Community</h3>

  <a href="https://www.youtube.com/@techqwikcode?sub_confirmation=1" style="margin: 0 6px; display: inline-block;">
    <img src="https://img.shields.io/badge/Subscribe-TECH%20QWIK%20CODE-FF0000?style=for-the-badge&logo=youtube&logoColor=white" alt="YouTube Channel">
  </a>

  <a href="https://t.me/techqwikcode" style="margin: 0 6px; display: inline-block;">
    <img src="https://img.shields.io/badge/Telegram-Tech%20QWIK%20CODE-0088cc?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram Channel">
  </a>
</div>

---

<div align="center">
  <p style="font-size: 12px; color: #586069;">
    <em>This guide is provided for educational purposes. Always follow Qwiklabs terms of service and YouTube's community guidelines.</em>
  </p>
  <p style="font-size: 12px; color: #586069;">
    <em>Last updated: January 2026</em>
  </p>
</div>
