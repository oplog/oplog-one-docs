# oplog.one Documentation

Official documentation for the oplog.one (Omnitro OpenAPI) platform. This documentation site provides comprehensive guides and API reference for developers integrating with oplog.one services.

## Features

- Complete API reference with interactive endpoints
- Developer guides and tutorials
- OpenAPI specification integration
- Responsive design with dark/light themes

### Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify) to preview the documentation changes locally. To install, use the following command

```
npm i -g mintlify
```

Run the following command at the root of your documentation (where docs.json is)

```
mintlify dev
```

### Publishing Changes

Documentation changes are automatically deployed to production when pushed to the default branch. 

#### Troubleshooting

- Mintlify dev isn't running - Run `mintlify install` it'll re-install dependencies.
- Page loads as a 404 - Make sure you are running in a folder with `docs.json`
