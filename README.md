# frigate-history
package for homeassistant to provide history for detections


example for creating history for frigate detections

```
add frigate url to secrets.yaml:
frigate_cam_url: http://192.168.0.1:5000/cam1

insert frigate_history.yaml to packages directory on homeassistant (create if missing)
restart homeassistant 
execute setup_frigate script to create first images
reload automations
```
