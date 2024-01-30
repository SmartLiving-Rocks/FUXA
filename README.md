# FUXA HomeAssistant Addon by SmartLiving.Rocks
Add FUXA to your Home Assistant. It is an easy web-based Process Visualization (SCADA/HMI/Dashboard) software

>This Addon is based on https://github.com/frangoteam/FUXA. All credits go to the team of frangoteam. Thanks for this awsome product. I instantly love it! Cheers Amon

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

## Add custom Repository to Home Assistant
Add this Repository `https://github.com/SmartLiving-Rocks/FUXA/` 
### Here is how you do it
- Go to Add-ons
- Click on ADD-ON-STORE in the lower right corner (Blue Button)
- Click on the three dots in the upper right corner
- Select `Repositories`
- Paste the url `https://github.com/SmartLiving-Rocks/FUXA/`
- Hit Add and then close
- Refresh the page
- The new Add-on `FUXA by SmartLiving.Rocks` is now visible
- Click on it
- Install the Add-on

 

## Installing and Running
FUXA is developed with NodeJS (backend) and Angular (frontend).

You need to have installed [Node](https://nodejs.org/en/about/previous-releases) Version 14.21.3 (npm 6.14.18) || 16.20.2 (npm 8.19.4) || 18.18.2 (npm 9.8.1).


```

Start the Server and Client (Browser) in Debug Mode
```
In vscode: Debug ‘Server & Client’
```
