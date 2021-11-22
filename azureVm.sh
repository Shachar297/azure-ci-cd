

# Create a vm

az vm create \
--resource-group ${RESOURCE_GROUP_NAME} \
 --name ${VM_NAME} \
  --image win2019Datacenter \
   --public-ip-sku Standard \
    --admin-username ${USER_NAME}

# Get a list of vms

az vm list

# Open port for web traffic
az vm open-port --port 80 --resource-group myResourceGroup --name myVM

# Get VM IP Address
az vm show -d -g groupName --name vmName --query publicIps -o tsv

# Create a remote desktop seesion from the local machine
# Windows
mstsc /v:publicIpAddress

# Mac
open rdp://${ipAdress}



# Stop a VM

az vm stop -g resourceName -n vmName