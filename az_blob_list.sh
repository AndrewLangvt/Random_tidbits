#!/bin/bash

# Function to list blobs and handle pagination
list_all_blobs() {
    local storage_account_name=$1
    local container_name=$2
    local marker=""
    local output_file="${container_name}_blobs.txt"

    # Execute the first iteration without a marker defined
    blobs=$(az storage blob list --account-name $storage_account_name --container-name $container_name --output json --auth-mode login --show-next-marker)
    
    # Output blob names to file
    echo "$blobs" > "$output_file"
    
    # Extract next marker
    marker=$(echo "$blobs" | grep nextMarker | awk '{print $2}' | sed 's/\"//g')
    echo "First Marker: $marker"
    
    while true; do
        # List blobs with marker
        echo "Command: az storage blob list --account-name $storage_account_name --container-name $container_name --output json --marker '$marker' --auth-mode login --show-next-marker"
        blobs=$(az storage blob list --account-name $storage_account_name --container-name $container_name --output json --marker "$marker" --auth-mode login --show-next-marker)
        
        # Append blob names to file
        echo "$blobs" >> "$output_file"
        
        # Extract next marker
        marker=$(echo "$blobs" | grep nextMarker | awk '{print $2}' | sed 's/\"//g')
        echo "Next Marker: $marker"
        
        # Check if there are more blobs
        if [ "$marker" == "null" ]; then
            break
        fi
    done  
}

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <storage_account_name> <container_name>"
    exit 1
fi
  
# Call function with provided arguments
list_all_blobs "$1" "$2"
