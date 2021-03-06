# Azure Queue Service Sample - The Queue Service provides reliable messaging for workflow processing and for communication
# between loosely coupled components of cloud services. This sample demonstrates how to perform common tasks including
# creating, listing, and deleting queues.
# For more documentation, refer to http://go.microsoft.com/fwlink/?LinkId=786321
# For Cmdlet reference, refer to http://go.microsoft.com/fwlink/?LinkId=785079

# Set the name of selected subscription.
# To Retrieve the name of your subscription, run the following two commands:
	# Add-AzureRMAccount
	# Get-AzureRMSubscription | Format-Table SubscriptionName, IsDefault, IsCurrent, CurrentStorageAccountName
$SubscriptionName= "<Subscription Name>"

# Provide the name of your resource group
$ResourceGroupName= "<Resource Group Name>"

# Provide the name of your Storage account.
$StorageAccountName= "<Storage Account Name>"

# Provide a name for your new table.
$QueueName = "<Queue Name>"

# Add your Azure account to the local PowerShell environment.
Add-AzureRMAccount

# Set default Azure subscription.
Get-AzureRmSubscription -SubscriptionName $SubscriptionName | Select-AzureRmSubscription

# Set default Storage account.
Set-AzureRmCurrentStorageAccount -ResourceGroupName $ResourceGroupName -StorageAccountName $StorageAccountName

# 1. Create a new queue.
New-AzureStorageQueue -Name $QueueName

# 2. List all queues.
Get-AzureStorageQueue

# 3. Remove queue
Remove-AzureStorageQueue -Name $QueueName
