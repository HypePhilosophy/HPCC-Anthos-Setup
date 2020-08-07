# -------------------
# Cluster information
# To set project: gcloud config set project <PROJECT_ID>
# To list current project: gcloud config list

# Use az, eksctl and gcloud to get AKS, EKS and GKE cluster names
#$clusters = @("eks-hpcc-1","aks-myhpcc-admin","gke-hpcc-1")
#$region_zones = @("us-east-1", "", "us-east1-b")
#$cluster_types = @("aws", "azure", "gcp")
#$storage_types = @("efs", "azure", "nfs")
$use_region = $false

$cluster_types = @("azure")
$clusters = @("aks-hpcc-3-admin")
$region_zones = @("us-east-1")
$storage_types = @("azure")

#$cluster_types = @("aws")
#$clusters = @("eks-hpcc-3")
#$region_zones = @("us-east-1")
#$storage_types = @("efs")

#$cluster_types = @("gcp")
#$clusters = @("gke-hpcc-3")
#$region_zones = @("us-east1-b")
#$storage_types = @("nfs")

# -------------------
# GCP Account
# To find out run: gcloud config get-value core/account
$GCP_EMAIL_ADDRESS = "email"
$USER_INITIAL = "initials"

# -------------------
# HPCC Platform deployment
$hpcc_namespace = "hpcc-system"
#$hpcc_namespace = "default"
$hpcc_version = "pilot-agent"
#$hpcc_version = "community_7.10.8-1"
$hpcc_cluster_name = "hpcc-anthos-test"
$efs_id = "fs-739f91f3"
#$hpcc_local_name = "HPCC-Platform"
$hpcc_local_name = "HPCC-Platform-XW"
#$git_user = "hpcc-systems"
$git_user = "xwang2713"

# -------------------
# Global Settings 
# Powershell Subsequent calls do not display UI.
$global:ProgressPreference = 'SilentlyContinue' 

# -------------------
# Directories
$BUILD_DIR = "${repo_parent_directory}/build"
if (!(Test-Path -path $BUILD_DIR))
{
   New-Item -ItemType directory -Path ${BUILD_DIR}
}

$CREDS_DIR = "${BUILD_DIR}/creds"
if (!(Test-Path -path $CREDS_DIR))
{
   New-Item -ItemType directory -Path ${CREDS_DIR}
}

$TOKEN_DIR = "${BUILD_DIR}/tokens"
if (!(Test-Path -path $TOKEN_DIR))
{
   New-Item -ItemType directory -Path ${TOKEN_DIR}
}

$DOWNLOAD_DIR = "${BUILD_DIR}/download"
if (!(Test-Path -path $DOWNLOAD_DIR))
{
   New-Item -ItemType directory -Path ${DOWNLOAD_DIR}
}


# -------------------
# GCP Project 
# gcloud projects describe $PROJECT_ID
#$PROJECT_ID = "anthos-hpcc-1"
$PROJECT_ID = "intern-projects-278514"
$SERVICE_ACCOUNT_NAME = "svc-gke-cluster-3"
$LOCAL_KEY_PATH  = "${CREDS_DIR}/${SERVICE_ACCOUNT_NAME}-${PROJECT_ID}.json"
$KUBECONFIG_PATH = "~/.kube/config"
