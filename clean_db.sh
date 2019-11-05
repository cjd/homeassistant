ENTITIES="sensor.tv_power_current 
CMD="docker-exec mysql mysql -uhass -pdhtfgujgftyfgj -h192.168.86.2 homeassistant"
for F in `grep " *-.*\." recorder.yaml |sed -e 's/^.*- //g'`;do sqlite3 home-assistant_v2.db "delete from states where entity_id='$F'";done
