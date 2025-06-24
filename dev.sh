#!/bin/bash

# Ensure we're using the correct Node.js version
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Use the version specified in .nvmrc
nvm use

# Ensure correct PATH
export PATH="$HOME/.nvm/versions/node/$(nvm current)/bin:$PATH"

# Get local IP address
LOCAL_IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -1)

# Start Mintlify development server
echo "🚀 Starting oplog.one documentation server..."
echo "📝 Using Node.js $(node --version)"
echo "🔧 Using Mintlify at $(which mintlify)"
echo "🌐 Server will be accessible on network at: http://$LOCAL_IP:3000"
echo "📱 Access from other devices using: http://$LOCAL_IP:3000"
echo ""

mintlify dev --host 0.0.0.0 --port 3000