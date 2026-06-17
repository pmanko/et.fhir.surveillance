Profile: GestationalAgeObservation
Parent: Observation
Id: gestational-age-observation
Title: "Gestational Age"
Description: "Gestational age in weeks (and optionally days)"

* status 1..1 MS

* code 1..1 MS
* code = http://loinc.org#11884-4 "Gestational age"

* subject 1..1 MS
* subject only Reference(HIVPatient)

* effectiveDateTime 1..1 MS

* value[x] only Quantity
* valueQuantity 1..1 MS
* valueQuantity.unit = "weeks"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #wk

* encounter 0..1 MS
* encounter only Reference(Encounter)