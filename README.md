# LibreOffice

Docker image for LibreOffice (headless) made to use with led.

## Available versions

| Tag         | Description                             |
| ----------- | --------------------------------------- |
| **3.6**     | LibreOffice 3.6                         |

## Usage

Libreoffice daemon runs with user "dev". The user is created at boot in the entrypoint script with the uid from env variable `_UID`.

Libreoffice listens on 8100.
