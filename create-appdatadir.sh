#!/bin/bash

while true; do
    # Prompt for the app custom name or end to exit
    read -p "Enter the app custom name (or type 'end' to exit): " app_name

    if [ "$app_name" == "end" ]; then
        break
    fi

    # Define the app directory path using the user's home directory
    app_dir="$HOME/Appdata/$app_name"

    if [ -d "$app_dir" ]; then
        # If the directory already exists, skip and continue
        echo "Directory '$app_dir' already exists. Skipping..."
        continue
    fi

    # Create the main app directory
    mkdir -p "$app_dir"

    # Ask if the user wants to create a 'data' directory
    while true; do
        read -p "Do you want to create a 'data' directory? (y/n): " create_data

        if [ "$create_data" == "y" ]; then
            mkdir "$app_dir/data"
            echo "Directory created: $app_dir/data"
            break
        elif [ "$create_data" == "n" ]; then
            break
        else
            echo "Invalid input. Please enter 'y' or 'n'."
        fi
    done

    # Ask if the user wants to create a 'config' directory
    while true; do
        read -p "Do you want to create a 'config' directory? (y/n): " create_config

        if [ "$create_config" == "y" ]; then
            mkdir "$app_dir/config"
            echo "Directory created: $app_dir/config"
            break
        elif [ "$create_config" == "n" ]; then
            break
        else
            echo "Invalid input. Please enter 'y' or 'n'."
        fi
    done

    # Ask if the user wants to create an extra directory
    while true; do
        read -p "Do you want to create an extra directory? (y/n): " create_extra_dir

        if [ "$create_extra_dir" == "y" ]; then
            read -p "Enter the extra directory name: " extra_dir_name
            mkdir "$app_dir/$extra_dir_name"
            echo "Directory created: $app_dir/$extra_dir_name"
        elif [ "$create_extra_dir" == "n" ]; then
            break
        else
            echo "Invalid input. Please enter 'y' or 'n'."
        fi
    done
done
