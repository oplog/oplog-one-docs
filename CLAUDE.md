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
- **use-cases/**: Business scenario documentation and integration guides

## Mintlify Components & Features

### Available Components
Based on the essentials documentation, you can use these Mintlify-specific components:

**Cards & Layout:**
- `<Card>`, `<CardGroup>` - For grouped content display
- `<Accordion>`, `<AccordionGroup>` - For collapsible content sections
- `<Tabs>`, `<Tab>` - For tabbed content organization

**Content Blocks:**
- `<Info>`, `<Warning>`, `<Note>`, `<Tip>` - For callout boxes
- `<CodeGroup>` - For multiple code examples
- `<Frame>` - For image/media containers

**Interactive Elements:**
- `<Check>` - For checklists
- `<Steps>` - For step-by-step guides
- `<Expandable>` - For expandable content sections

### Code Block Features
- Syntax highlighting for 100+ languages
- Line highlighting with `{1,3-5}` syntax
- Filename display: ```javascript filename="example.js"
- Copy-to-clipboard functionality (automatic)

### Navigation Structure
Navigation is defined in `docs.json` with:
- `navigation` array for main navigation structure
- `anchors` for top-level navigation tabs
- Page groups can be organized hierarchically
- Each page requires `title` and `description` metadata

### Styling & Theming
- Primary color: #16A34A (green)
- Light/dark mode support with separate logo variants
- Custom favicon and metadata configuration
- Responsive design with mobile optimization

### OpenAPI Integration
- Automatic endpoint documentation generation
- Method-specific color coding (GET, POST, etc.)
- Request/response schema visualization
- Interactive API testing capabilities

## Content Guidelines

### MDX Best Practices
- Use descriptive titles and descriptions for better SEO
- Utilize Mintlify components for better user experience
- Keep content hierarchical with proper heading structure
- Include code examples with syntax highlighting
- Use callout components (Info, Warning, etc.) for important notes

### API Documentation
- Reference actual OpenAPI schema fields only
- Provide realistic examples with proper data types
- Include error handling and validation information
- Use AccordionGroup for organizing complex endpoint details

### File Organization
- Keep related content in logical folders
- Use descriptive filenames
- Reference other pages with relative links
- Store reusable content in `/snippets/`

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
- For component issues: Check Mintlify component syntax and nesting rules
- For navigation issues: Validate `docs.json` structure and file paths