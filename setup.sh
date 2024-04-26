# Download the script from https://dot.net/v1/dotnet-install.sh
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh

# Make sure you grant permission for this script to run as an executable
chmod +x ./dotnet-install.sh

# The script defaults to installing the latest long term support (LTS) SDK version, which is .NET 8. To install the latest release, which might not be an (LTS) version, use the --version latest parameter.
./dotnet-install.sh --version latest

# You can install a specific major version with the --channel parameter to indicate the specific version. The following command installs .NET 8.0 SDK.
./dotnet-install.sh --channel 8.0

dotnet --info
