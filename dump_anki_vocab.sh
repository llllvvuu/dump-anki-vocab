#!/bin/sh

NOTES="$(curl localhost:8765 -X POST -d "{\"action\": \"findNotes\", \"version\": 6, \"params\": { \"query\": \"deck:$1\" }}" | jq '.result')"
curl localhost:8765 -X POST -d "{\"action\": \"notesInfo\", \"version\": 6, \"params\": { \"notes\": ${NOTES} }}" | jq ".result[].fields.$2.value"
