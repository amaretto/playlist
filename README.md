# playlist
My own spotify playlist

## Setup
### 1. Create spotify developer app
Follow the below instructions
- [create-spotify-developer-app](https://learn.hashicorp.com/tutorials/terraform/spotify-playlist#create-spotify-developer-app)

### 2. Prepare tfvars for API key and backend
#### terraform.tfvars
Set API key you get at Step1
```
spotify_api_key = ${YOUR_API_KEY}
```

#### backend.tfvars
backend.tf uses gcs so please also update it if you need
```
bucket = ${YOUR_BUCKET_NAME}
```

#### init
```
$ terraform init -backend-config-path backend.tfvars
```
