#! /usr/bin/env bash

###########
# FUNCTIONS
###########
 
# function success
#
# Throws a success message (displayed in green).
#
# Called like: success <message>
# e.g. success "You made it!"
#
# Returns: nothing
function success
{
	local message=${1:-"Ok"}
 
	echo -e "\033[32m${message}\033[0m"
}



###########
# MAIN
###########

# Greetings
success "Let's kickstart this project"

# Get Modernizr's latest development version
success "Installing Modernizr..."
wget -O assets/js/vendor/modernizr.dev.js http://modernizr.com/downloads/modernizr-latest.js

# Get Prefixfree latest version
success "Installing Prefixfree..."
wget -O assets/js/vendor/prefixfree.js https://raw.github.com/LeaVerou/prefixfree/gh-pages/prefixfree.min.js

# Get Eucalypt's latest version
success "Installing Eucalypt..."
git clone git://github.com/crloscstillo/eucalypt.git scss

# Ready
success "Ok. You're all set. Now go make something!"