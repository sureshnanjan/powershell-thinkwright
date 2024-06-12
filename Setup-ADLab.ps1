. .\Check-Prerequisites.ps1
. .\Build-VMs.ps1
Build-VM
$machines = "DC1 ", "DC2 ", "DC3 ", "server ", "exchangeserver"
Test-HostAlive -cname $machines[0]


# Build the test lab virtual machines
    # Install the Hyper-V role
    # Create an internal virtual network
    # Build the domain controller
    # Build the file server and AD RMS server
# Install Active Directory Rights Management Services
# Build the mail server (SRV1)
# Build the client virtual machine (CLIENT1)