Profile: CounsellingProvidedObservation
Parent: Observation
Id: counselling-provided
Title: "Counselling Provided"
Description: "Indicates types of counselling provided to the client"

* status 1..1
* status = #final

* code 1..1
* code.text = "Counselling provided"

* subject 1..1
* subject only Reference(HIVPatient)

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from CounsellingProvidedVS (required)

* effective[x] 1..1
* effective[x] only dateTime

* encounter 1..1