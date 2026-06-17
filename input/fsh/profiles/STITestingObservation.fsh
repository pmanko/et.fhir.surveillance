Profile: STITestingObservation
Parent: Observation
Id: sti-testing-observation
Title: "STI Testing and Diagnosis"
Description: "Captures whether any STI syndrome was diagnosed, date of STI test, and STI(s) tested for"

* status 1..1
* status = #final

* code 1..1
* code.text = "STI testing and diagnosis"

* subject 1..1
* subject only Reference(HIVPatient)


// -----------------------------
// Slicing
// -----------------------------
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #open

* component contains
    anySTIDiagnosed 1..1 and
    stiTestDate 0..1 and
    stiTestedFor 0..* and
    otherSpecify 0..1


// -----------------------------
// Any STI syndrome diagnosed
// -----------------------------
* component[anySTIDiagnosed].code.text = "Any STI syndrome diagnosed"
* component[anySTIDiagnosed].valueBoolean 1..1


// -----------------------------
// Date of STI test
// -----------------------------
* component[stiTestDate].code.text = "Date of STI test"
* component[stiTestDate].valueDateTime 0..1


// -----------------------------
// STI tested for (multiple allowed)
// -----------------------------
* component[stiTestedFor].code.text = "STI tested for"
* component[stiTestedFor].valueCodeableConcept 1..1
* component[stiTestedFor].valueCodeableConcept from STITestTypeVS (required)


// -----------------------------
// Other (specify)
// -----------------------------
* component[otherSpecify].code.text = "Other STI tested for (specify)"
* component[otherSpecify].valueString 0..1