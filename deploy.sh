#!/bin/bash
set -e

echo "Building and deploying the Python Nebula client package..."

# Install required build tools if not present
pip install --upgrade build twine

# Build the distribution packages
echo "Building distribution packages..."
python -m build

# Upload to PyPI
echo "Uploading to PyPI..."
twine upload dist/*

echo "Deployment complete! Users can now install with: pip install nebula-client" 