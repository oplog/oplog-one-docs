# 🌐 Network Access Setup for oplog.one Documentation

This guide explains how to make the oplog.one documentation accessible from other devices on your network.

## 🚀 Quick Start

### Option 1: Enhanced Network Script (Recommended)
```bash
./dev-network.sh
```

This script will:
- ✅ Automatically detect your network IP addresses
- ✅ Show all available access URLs
- ✅ Provide clear instructions for other devices
- ✅ Start the server on `0.0.0.0:3000`

### Option 2: Standard Network Script
```bash
./dev.sh
```

### Option 3: Manual Command
```bash
mintlify dev --host 0.0.0.0 --port 3000
```

## 📱 Accessing from Other Devices

Once the server is running with network access, you can access the documentation from:

### Same Network Devices
- **Laptops/Desktops**: `http://YOUR_IP:3000`
- **Mobile phones**: `http://YOUR_IP:3000`
- **Tablets**: `http://YOUR_IP:3000`
- **Smart TVs**: `http://YOUR_IP:3000`

### Finding Your IP Address

**Example output from the network script:**
```
📡 Available network addresses:
   • 192.168.1.100    (WiFi connection)
   • 10.0.0.50        (Ethernet connection)
```

**Manual IP detection:**

**macOS/Linux:**
```bash
ifconfig | grep "inet " | grep -v 127.0.0.1
```

**Windows:**
```cmd
ipconfig | findstr "IPv4"
```

## 🔧 Troubleshooting

### Port Already in Use
If port 3000 is busy, Mintlify will automatically try:
- Port 3001
- Port 3002
- Port 3003, etc.

### Can't Access from Other Devices

1. **Check Firewall Settings**
   
   **macOS:**
   - System Preferences → Security & Privacy → Firewall
   - Allow incoming connections for Node.js/Terminal

   **Windows:**
   - Windows Defender Firewall → Allow an app through firewall
   - Allow Node.js through the firewall

   **Linux:**
   ```bash
   sudo ufw allow 3000
   ```

2. **Verify Network Connection**
   - Ensure all devices are on the same network/WiFi
   - Test with ping: `ping YOUR_IP`

3. **Check Server Status**
   - Look for "Your local preview is available at..." message
   - Verify the correct IP and port in the output

### Node.js Version Issues
If you encounter Sharp/Node.js errors:
```bash
nvm use v20.17.0
nvm alias default v20.17.0
```

## 🎯 Use Cases

### Team Development
- Share documentation with team members
- Demo features to stakeholders
- Cross-device testing

### Mobile Testing
- Test documentation UI on mobile devices
- Verify responsive design
- Check mobile navigation

### Presentation Mode
- Display documentation on larger screens
- Present API guides in meetings
- Share with remote participants

## 🔒 Security Notes

- **Development Only**: This setup is for development/testing environments
- **Local Network**: Only accessible within your local network
- **No Authentication**: No built-in authentication for network access
- **Firewall**: Configure firewall rules appropriately

## 📋 Example Session

```bash
$ ./dev-network.sh

🔍 Detecting network interfaces...

📡 Available network addresses:
   • 192.168.1.105
   • 10.100.10.149

🚀 Starting oplog.one documentation server on network...
📝 Using Node.js v20.17.0
🔧 Using Mintlify at /Users/.../mintlify

🌐 Network Access URLs:
   • Local: http://localhost:3000
   • Network: http://192.168.1.105:3000

📱 To access from other devices on the same network:
   • Mobile/Tablet: http://192.168.1.105:3000
   • Other computers: http://192.168.1.105:3000

🔥 Starting server...
   Press Ctrl+C to stop

✔ Local Mintlify instance is ready. Launching your site...
Your local preview is available at http://localhost:3000
Press Ctrl+C any time to stop the local preview.
```

Now you can access the documentation from any device using: `http://192.168.1.105:3000`

## 🆘 Need Help?

- Check firewall settings
- Verify all devices are on the same network
- Try different ports if needed
- Restart the server with the network script

Happy documenting! 🚀