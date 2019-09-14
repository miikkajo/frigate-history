# frigate-history version n+1

package for homeassistant to provide history of detected persons

information about packages https://www.home-assistant.io/docs/configuration/packages/

example for creating history for frigate detections

```
add frigate url to secrets.yaml:
frigate_cam1_url: http://192.168.0.1:5000/cam1

if using MQTT version:

add frigate topic to secrets.yaml:
frigate_cam1_topic: frigate/[camera_name]/snapshot

In automation adjust trigger accordingly, in example i'm using mqtt topic to trigger automation
if not using MQTT, you may want to trigger on binary_sensor of person detected


copy frigate_history.yaml or frigate_history_mqtt.yaml to packages directory on homeassistant (create directory if missing)
copy frigate_history.sh to config directory
restart homeassistant 
```

for lovelace swiper card use config:
```
resources:
  - type: module
    url: >-
      https://cdn.jsdelivr.net/gh/bramkragten/custom-ui@master/swipe-card/swipe-card.js
title: History
views:
  - badges: []
    cards:
      - cards:
          - entity: camera.cam1_history1
            type: picture-entity
          - entity: camera.cam1_history2
            type: picture-entity
          - entity: camera.cam1_history3
            type: picture-entity
          - entity: camera.cam1_history4
            type: picture-entity
          - entity: camera.cam1_history5
            type: picture-entity
          - entity: camera.cam1_history6
            type: picture-entity
          - entity: camera.cam1_history7
            type: picture-entity
          - entity: camera.cam1_history8
            type: picture-entity
          - entity: camera.cam1_history9
            type: picture-entity
          - entity: camera.cam1_history10
            type: picture-entity
        start_card: 10
        tap_action: none
        type: 'custom:swipe-card'
      - cards:
          - entity: camera.cam2_history1
            type: picture-entity
          - entity: camera.cam2_history2
            type: picture-entity
          - entity: camera.cam2_history3
            type: picture-entity
          - entity: camera.cam2_history4
            type: picture-entity
          - entity: camera.cam2_history5
            type: picture-entity
          - entity: camera.cam2_history6
            type: picture-entity
          - entity: camera.cam2_history7
            type: picture-entity
          - entity: camera.cam2_history8
            type: picture-entity
          - entity: camera.cam2_history9
            type: picture-entity
          - entity: camera.cam2_history10
            type: picture-entity
        start_card: 10
        tap_action: none
        type: 'custom:swipe-card'
```
