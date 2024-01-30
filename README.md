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

 ![fuxa Add to Add on Store Home Assistant](/screenshot/Installing-FUXA-on-Home-Assistant-Add-on-Store.gif)

## Start the Add-on and use FUXA
- Press `Start`
- Check the `Logs`
- Now FUXA is started and you can use it on port `1881`
- You can use `homeasssitant.local:1881` (just replace the `:8123` with `:1881`)
- Have fun! 

![fuxa Add to Add on Store Home Assistant](/screenshot/Accessing-on-Home-Assistant.gif)

## Implement it into Home Assistant Dashboard
You can use the https://www.home-assistant.io/dashboards/iframe/ Lovelace card

https://www.home-assistant.io/dashboards/iframe/



