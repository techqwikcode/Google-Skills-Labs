
export PROJECT_ID=$(gcloud config get-value project)

gsutil mb -l $REGION -c Standard gs://$PROJECT_ID

curl -O https://github.com/techqwikcode/Google-Skills-Labs/blob/main/Cloud%20Storage_%20Qwik%20Start%20-%20Cloud%20Console/kitten.png

gsutil cp kitten.png gs://$PROJECT_ID/kitten.png

gsutil iam ch allUsers:objectViewer gs://$PROJECT_ID
