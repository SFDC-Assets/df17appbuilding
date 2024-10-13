sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p blitz -e back.log
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org assign permset -n VolunteeringApp
sf data import tree -p data/masterImportPlan.json
sf apex run -f scripts/setup.cls
sf org open
