# Courtdates app

SAP HANA XSA implementation of courtdates app

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Installation

- Open a new terminal and run `mbt build -t gen --mtar mta.tar && cf deploy gen/mta.tar`