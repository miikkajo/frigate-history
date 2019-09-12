# frigate-history
package for homeassistant to provide history for detections

information about packages https://www.home-assistant.io/docs/configuration/packages/

example for creating history for frigate detections

```
add frigate url to secrets.yaml:
frigate_cam1_url: http://192.168.0.1:5000/cam1

if using MQTT version:

add frigate topic to secrets.yaml:
frigate_cam1_topic: frigate/[camera_name]/snapshot


insert frigate_history.yaml or frigate_history_mqtt.yaml to packages directory on homeassistant (create directory if missing)
restart homeassistant 
```
for lovelace swiper card use config:

      - type: 'custom:swipe-card'
        start_card: 5
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
