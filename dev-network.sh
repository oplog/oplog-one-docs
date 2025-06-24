#!/bin/bash

# Ensure we're using the correct Node.js version
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Use the version specified in .nvmrc
nvm use

# Ensure correct PATH
export PATH="$HOME/.nvm/versions/node/$(nvm current)/bin:$PATH"

# Get local IP addresses
echo "🔍 Detecting network interfaces..."
echo ""

# macOS/Linux compatible IP detection
if command -v ifconfig &> /dev/null; then
    echo "📡 Available network addresses:"
    ifconfig | grep "inet " | grep -v 127.0.0.1 | while read line; do
        IP=$(echo $line | awk '{print $2}')
        echo "   • $IP"
    done
    LOCAL_IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -1)
elif command -v ip &> /dev/null; then
    echo "📡 Available network addresses:"
    ip route get 1 | awk '{print $7}' | head -1
    LOCAL_IP=$(ip route get 1 | awk '{print $7}' | head -1)
else
    echo "⚠️  Could not detect IP address automatically"
    LOCAL_IP="YOUR_IP_ADDRESS"
fi

echo ""
echo "🚀 Starting oplog.one documentation server on network..."
echo "📝 Using Node.js $(node --version)"
echo "🔧 Using Mintlify at $(which mintlify)"
echo ""
echo "🌐 Network Access URLs:"
echo "   • Local: http://localhost:3000"
echo "   • Network: http://$LOCAL_IP:3000"
echo ""
echo "📱 To access from other devices on the same network:"
echo "   • Mobile/Tablet: http://$LOCAL_IP:3000"
echo "   • Other computers: http://$LOCAL_IP:3000"
echo ""
echo "🔥 Starting server..."
echo "   Press Ctrl+C to stop"
echo ""

mintlify dev --host 0.0.0.0 --port 3000