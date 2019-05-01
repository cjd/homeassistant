for F in `grep " *-.*\." recorder.yaml |sed -e 's/^.*- //g'`;do sqlite3 home-assistant_v2.db "delete from states where entity_id='$F'";done
