# oplog.one Documentation

Official documentation for the oplog.one (Omnitro OpenAPI) platform. This documentation site provides comprehensive guides and API reference for developers integrating with oplog.one services.

## Features

- Complete API reference with interactive endpoints
- Developer guides and tutorials
- OpenAPI specification integration
- Responsive design with dark/light themes

## Prerequisites

- Node.js version 20.17.0 or higher
- Global Mintlify CLI installation

## Development

**Node.js Version Requirement:**
This project requires Node.js v20.17.0 or higher. Use the included `.nvmrc` file:

```bash
nvm use v20.17.0
nvm alias default v20.17.0
```

**Install Mintlify CLI:**

```bash
npm i -g mintlify@latest
```

**Start development server (local only):**

```bash
mintlify dev
```

**Start server on network (accessible from other devices):**

```bash
mintlify dev --host 0.0.0.0 --port 3000
```

**Use convenience scripts:**

```bash
./dev.sh              # Local development with version check
./dev-network.sh       # Network development with IP display
```

**Install/reinstall dependencies:**

```bash
mintlify install
```

**Check for broken links:**

```bash
mintlify broken-links
```

## Network Access

When running with `--host 0.0.0.0`, the documentation becomes accessible from:
- Same computer: `http://localhost:3000`
- Other devices on network: `http://YOUR_IP_ADDRESS:3000`

Find your IP address:
```bash
# macOS/Linux
ifconfig | grep "inet " | grep -v 127.0.0.1

# Windows
ipconfig | findstr "IPv4"
```

## Publishing Changes

Documentation changes are automatically deployed to production when pushed to the default branch.

## Troubleshooting

- **Mintlify dev isn't running:** Run `mintlify install` to re-install dependencies
- **Page loads as a 404:** Make sure you are running in a folder with `docs.json`
- **Node/Sharp issues:** Remove global mintlify, upgrade Node.js, reinstall mintlify
- **Firewall issues:** Ensure port 3000 is open for network access
