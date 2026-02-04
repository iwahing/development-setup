#!/bin/bash

command=$1
subcommand=$2

if [[ "$command" == "install" ]]; then
    case "$subcommand" in
        python)
            sudo apt update
            sudo apt install -y software-properties-common
            sudo add-apt-repository -y ppa:deadsnakes/ppa
            sudo apt update
            sudo apt install -y python3
            ;;
        uv)
            # Install uv (official installer)
            curl -LsSf https://astral.sh/uv/install.sh | sh
            ;;
        *)
            echo "Unknown install target: '$subcommand'"
            echo "Available options: python, uv"
            exit 1
            ;;
    esac
else
    echo "No action for '$command'"
    echo "Usage:"
    echo "  $0 install python"
    echo "  $0 install uv"
    exit 1
fi


# Python packages needed 

# https://github.com/astral-sh/uv
# uv - An extremely fast Python package and project manager, written in Rust.
#########
# # On macOS and Linux.
# curl -LsSf https://astral.sh/uv/install.sh | sh