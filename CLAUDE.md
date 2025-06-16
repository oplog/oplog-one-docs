# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Mintlify documentation site for oplog.one (Omnitro OpenAPI). The project uses Mintlify as the documentation framework with MDX files for content and a structured navigation system.

## Development Commands

**Start development server:**
```bash
mintlify dev
```
This runs the docs site locally at `http://localhost:3000`

**Start on custom port:**
```bash
mintlify dev --port 3333
```

**Install/reinstall dependencies:**
```bash
mintlify install
```

**Check for broken links:**
```bash
mintlify broken-links
```

**Update Mintlify CLI:**
```bash
npm i -g mintlify@latest
```

## Architecture & Structure

- **docs.json**: Main configuration file defining navigation, theme, and structure
- ***.mdx files**: Documentation content using MDX format (Markdown + JSX components)
- **api-reference/**: Contains OpenAPI specification and API documentation
  - **openapi.json**: Omnitro OpenAPI specification for oplog.one
  - Auto-generated endpoint pages from OpenAPI spec
- **essentials/**: Core documentation pages covering Mintlify features
- **images/**: Static assets including hero images and screenshots
- **logo/**: Brand assets with light/dark theme variants
- **snippets/**: Reusable content snippets

## Key Configuration

- Theme: Mint with green color scheme (#16A34A primary)
- Two-tab navigation: "Guides" and "API Reference"
- OpenAPI integration for automatic endpoint documentation
- MCP server configuration in `.cursor/mcp.json` for localhost:7701

## Prerequisites

- Node.js version 19 or higher
- Global Mintlify CLI installation

## Troubleshooting

- If dev server fails: Run `mintlify install` to reinstall dependencies
- For 404 errors: Ensure running in directory with `docs.json`
- For Node/Sharp issues: Remove global mintlify, upgrade Node, reinstall mintlify