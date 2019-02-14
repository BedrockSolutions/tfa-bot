# TFA Bot

Docker image of the wonderful TFA Bot, developed by The Factoid Authority.
  
  * [Website (*www.factoid.org*)](http://www.factoid.org)
  
  * [Github (*git.factoid.org*)](https://git.factoid.org/TFA/TFA-Bot)

## Supported tag and Dockerfile link

* [`latest` (*Dockerfile*)](https://github.com/BedrockSolutions/dockerfile/blob/master/tfa-bot/Dockerfile)
  
## Environment variable

The image requires a single environment variable:

* **BOTURL**: The URL to the Google Sheet configuration document.

## Example

`docker run  -e 'BOTURL=https://url.to.google.sheet.conf' --name tfa-bot bedrocksolutions/tfa-bot:latest`
