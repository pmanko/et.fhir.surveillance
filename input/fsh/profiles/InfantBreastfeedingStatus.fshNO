Profile: InfantBreastfeedingStatus
Parent: Observation
Id: infant-breastfeeding-status
Title: "Infant Breastfeeding Status"
Description: "Indicates whether the infant is currently being breastfed by the mother"

* status 1..1 MS

* code 1..1 MS
* code = http://loinc.org#63895-7 "Infant feeding status"

* subject 1..1 MS
* subject only Reference(HIVPatient)

* effectiveDateTime 1..1 MS

* value[x] only boolean
* valueBoolean 1..1 MS

* encounter 0..1 MS
* encounter only Reference(Encounter)