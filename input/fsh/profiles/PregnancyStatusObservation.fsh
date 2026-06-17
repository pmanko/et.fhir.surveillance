Profile: PregnancyStatusObservation
Parent: Observation
Id: pregnancy-status-observation
Title: "Pregnancy Status (Boolean)"
Description: "Indicates whether the client is currently pregnant"

* status 1..1 MS

* code 1..1 MS
* code = http://loinc.org#82810-3 "Pregnancy status"

* subject 1..1 MS
* subject only Reference(HIVPatient)

* effectiveDateTime 1..1 MS

* value[x] only boolean
* valueBoolean 1..1 MS

* encounter 0..1 MS
* encounter only Reference(Encounter)