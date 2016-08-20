#!/usr/bin/env bash

start_seconds="$(date +%s)"
echo "Starting GitHub Pages initialization script."

apt_packages=(
    joe
    curl
    git-core
    nodejs
    libgmp3-dev
    ruby2.2
    ruby2.2-dev
    zlib1g-dev
)

ping_result="$(ping -c 2 8.8.4.4 2>&1)"
if [[ $ping_result != *bytes?from* ]]; then
    echo "Network connection unavailable. Try again later."
    exit 1
fi

# https://www.brightbox.com/docs/ruby/ubuntu/
echo "Adding Brightbox ruby-ng repo..."
sudo apt-add-repository -y ppa:brightbox/ruby-ng

echo "Updating apt..."
sudo apt-get update

echo "Upgrading all..."
sudo apt-get upgrade -y

echo "Installing packages..."
sudo apt-get install -y ${apt_packages[@]}

echo "Installing bundler..."
sudo gem install bundler --no-ri --no-rdoc

echo "Creating Gemfile..."
echo source \'https://rubygems.org\' > Gemfile
echo gem \'github-pages\', group: :jekyll_plugins >> Gemfile

echo "Installing Github Pages using bundler and Gemfile..."
bundle install


end_seconds="$(date +%s)"
echo "-----------------------------"
echo "Provisioning complete in "$(expr $end_seconds - $start_seconds)" seconds"
