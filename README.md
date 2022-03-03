# MkDocs builder image

This image is used by my Jenkins server to build and deploy MkDocs sites:

- Unversioned
    - `mkdocs gh-deploy`
- Versioned _using_ mike (expects VERSION.cfg in root of repo)
    - `mike deploy n.n <alias>`
