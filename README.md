# frigate-history
package for homeassistant to provide history for detections

information about packages https://www.home-assistant.io/docs/configuration/packages/

example for creating history for frigate detections

```
add frigate url to secrets.yaml:
frigate_cam_url: http://192.168.0.1:5000/cam1

insert frigate_history.yaml to packages directory on homeassistant (create if missing)
restart homeassistant 
execute setup_frigate script to create first images
reload automations
```

for lovelace swiper card use config:

      - type: 'custom:swipe-card'
        cards:
          - type: picture-entity
            entity: camera.cam1_history1
          - type: picture-entity
            entity: camera.cam1_history2
          - type: picture-entity
            entity: camera.cam1_history3
          - type: picture-entity
            entity: camera.cam1_history4
          - type: picture-entity
            entity: camera.cam1_history5            
