Profile: ConfirmatorySTITestResultObservation
Id: confirmatory-sti-test-result-observation
Parent: Observation
Title: "Confirmatory STI Test Result Observation"
Description: "Captures confirmatory STI result and treatment details"

* status MS
* category MS
* code MS
* subject 1..1
* subject only Reference(HIVPatient)
* effectiveDateTime MS


* valueCodeableConcept 1..1
* valueCodeableConcept from STIResultVS (required)


* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #open
* component ^slicing.ordered = false


* component contains treatmentPrescribedDate 0..1

* component[treatmentPrescribedDate].code 1..1
* component[treatmentPrescribedDate].code.text = "Date STI treatment prescribed"

* component[treatmentPrescribedDate].valueDateTime 1..1


* component contains treatmentDispensedDate 0..1

* component[treatmentDispensedDate].code 1..1
* component[treatmentDispensedDate].code.text = "Date STI treatment dispensed"

* component[treatmentDispensedDate].valueDateTime 1..1


* component contains treatmentDispensedSpecify 0..1

* component[treatmentDispensedSpecify].code 1..1
* component[treatmentDispensedSpecify].code.text = "STI treatment dispensed (specify)"

* component[treatmentDispensedSpecify].valueString 1..1