Profile: STIResultObservation
Parent: Observation
Id: sti-result-observation
Title: "STI Test Result Observation"
Description: "Observation for STI test result with confirmatory test date"

* status MS
* category MS
* code MS
* subject only Reference(HIVPatient)
* effectiveDateTime MS

// =========================
// STI RESULT
// =========================
* valueCodeableConcept 1..1
* valueCodeableConcept from STIResultVS (required)

// =====================================================
// REQUIRED: COMPONENT SLICING (THIS FIXES YOUR ERROR)
// =====================================================
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #open
* component ^slicing.ordered = false


* component contains confirmatoryTestDate 0..1

* component[confirmatoryTestDate].code 1..1
* component[confirmatoryTestDate].code.coding.system = "http://loinc.org"
* component[confirmatoryTestDate].code.coding.code = #21781-1
* component[confirmatoryTestDate].code.text = "Date of STI confirmatory test"

* component[confirmatoryTestDate].valueDateTime 1..1