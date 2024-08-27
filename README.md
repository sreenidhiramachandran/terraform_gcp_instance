# terraform_gcp_instance


### Step 1 

Create a project in your GCP account, if you don't have one already.

### Step 2 

Under the project, navigate to IAM and & Admin section > Service Accounts >  Create Service Account.

a. Give a name and description.

b. Grant this service account access to project: Grant this service account access to the project so that it has permission to complete specific actions on the resources in your project. Here, we can 
   add roles for admin or editor or read access as required. Optionally, we can also add IAM condition, to grant access to principals only when the specified conditions are met.
   
c. Grant users access to this service account (optional): Grant users the permissions to deploy jobs and VMs with this service account

d. After the service account is created, find it in the list, click on it, and then navigate to the Keys tab

e. Click on Add Key and select Create New Key.
   Choose the JSON key type. Click Create. A JSON file containing your credentials will be downloaded to your computer. You can see a pop-up message 'Private key saved to your computer'

> NOTE: Make sure to store the JSON file securely. It contains sensitive information that grants access to your Google Cloud resources.

### Step 3

Configure GOOGLE_CREDENTIALS environment variable. 

To set this environment variable on Linux, use the below command. This will save the contents of the json file to the variable GOOGLE_CREDENTIALS
```sh
export GOOGLE_CREDENTIALS="$(cat path/to/centering-1234567890.json)"
```
### Step 4 

Enable Google Compute Engine API

APIs & Services > API Library> Compute Engine API > Click Enable

> Note: To enable Compute Engine API service, it is necessary to configure a billing account for the project.



