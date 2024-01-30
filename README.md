# FUXA HomeAssistant Addon by SmartLiving.Rocks
Add FUXA to your Home Assistant. It is an easy web-based Process Visualization (SCADA/HMI/Dashboard) software

![fuxa logo](/client/src/favicon.ico) 
## FUXA
FUXA is a web-based Process Visualization (SCADA/HMI/Dashboard) software. With FUXA you can create modern process visualizations with individual designs for your machines and real-time data display.

![fuxa editor](/screenshot/fuxa-editor.png) 

![fuxa ani](/screenshot/fuxa-ani.gif)

![fuxa action](/screenshot/feature-action-move.gif)

## Features
- Devices connectivity with Modbus RTU/TCP, Siemens S7 Protocol, OPC-UA, BACnet IP, MQTT, Ethernet/IP (Allen Bradley)
- SCADA/HMI Web-Editor - Engineering and Design completely web-based
- Cross-Platform Full-Stack - Backend with NodeJs and Frontend with Web technologies (HTML5, CSS, Javascript, Angular, SVG)

## Live Demo
Here is a [live demo](https://frangoteam.github.io) example of FUXA editor.

## Installing and Running
FUXA is developed with NodeJS (backend) and Angular (frontend).

You need to have installed [Node](https://nodejs.org/en/about/previous-releases) Version 14.21.3 (npm 6.14.18) || 16.20.2 (npm 8.19.4) || 18.18.2 (npm 9.8.1).

**WARNING** In linux with nodejs Version 16.20.2 || 18.18.2 there are problems with the node-snap7 library for communication with Siemens S7 PLCs, if you don't intend to use it you can remove it from the server/package.json

Install from [NPM](https://www.npmjs.com/package/@frangoteam/fuxa) (first option)
In linux to use only with nodejs Version 14.21.3
```
npm install -g --unsafe-perm @frangoteam/fuxa
fuxa
```

Or [Download the latest release](https://github.com/frangoteam/FUXA/releases) and unpack it (second option)

```
cd ./server
npm install
npm start
```

Or in linux running from docker (third option)
```
docker pull frangoteam/fuxa:latest
docker run -d -p 1881:1881 frangoteam/fuxa:latest

// persistent storage of application data (project), daq (tags history), logs and images (resource)
docker run -d -p 1881:1881 -v fuxa_appdata:/usr/src/app/FUXA/server/_appdata -v fuxa_db:/usr/src/app/FUXA/server/_db -v fuxa_logs:/usr/src/app/FUXA/server/_logs -v fuxa_images:/usr/src/app/FUXA/server/_images frangoteam/fuxa:latest
```

Open up a browser (better Chrome) and navigate to http://localhost:1881

## Usage
Look the guide in [wiki](https://github.com/frangoteam/FUXA/wiki) pages

## To Debug (Full Stack)
Install and start to serve the frontend
```
cd ./client
npm install
npm start
```

Start the Server and Client (Browser) in Debug Mode
```
In vscode: Debug ‘Server & Client’
```
