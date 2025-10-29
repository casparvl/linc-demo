#!/bin/bash

sed -i -e "s|/usr/local/share/linc/skymodels/A-Team_Midres.skymodel|${EBROOTLINC}/share/linc/skymodels/A-Team_Midres.skymodel|" test_jobs/HBA_target.json
sed -i -e "s|/usr/local/share/linc/skymodels|${EBROOTLINC}/share/linc/skymodels|" test_jobs/HBA_target.json
