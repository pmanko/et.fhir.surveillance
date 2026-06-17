Profile: SyphilisTestTypeObservation
Parent: Observation
Id: syphilis-test-type-observation
Title: "Syphilis Test Type Observation"
Description: "Type of syphilis test performed"

* status 1..1
* status = #final

* code 1..1
* code.text = "Syphilis test type"

* subject 1..1
* subject only Reference(HIVPatient)

* effective[x] 0..1
* effective[x] only dateTime

// Main coded value
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from SyphilisTestTypeVS (required)

// Slicing for Other specify
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

* component contains otherSpecify 0..1

* component[otherSpecify].code.text = "Other syphilis test type (specify)"

* component[otherSpecify].value[x] 1..1
* component[otherSpecify].value[x] only string