Profile: ConfirmatorySyphilisTestObservation
Id: confirmatory-syphilis-test-observation
Parent: Observation
Title: "Confirmatory Syphilis Test Observation"
Description: "Captures syphilis confirmatory test type and related details"

* status MS
* category MS
* code MS
* subject MS
* effectiveDateTime MS


* valueCodeableConcept 1..1
* valueCodeableConcept from SyphilisConfirmatoryTestTypeVS (required)


* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #open


* component contains syphilisOtherSpecify 0..1

* component[syphilisOtherSpecify].code.text = "Other syphilis test type (specify)"
* component[syphilisOtherSpecify].valueString 1..1


* component contains otherSTITestType 0..1

* component[otherSTITestType].code.text = "Confirmatory test type for other STI (specify)"
* component[otherSTITestType].valueString 1..1