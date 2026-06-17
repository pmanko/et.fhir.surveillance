Profile: SyphilisTestingAndTreatmentObservation
Parent: Observation
Id: syphilis-testing-treatment-observation
Title: "Syphilis Testing and Treatment"
Description: "Captures syphilis test date, test result, and treatment initiation date"

* status 1..1
* status = #final

* code 1..1
* code.text = "Syphilis testing and treatment"

* subject 1..1
* subject only Reference(HIVPatient)


// -----------------------------
// Slicing
// -----------------------------
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #open

* component contains
    testDate 1..1 and
    testResult 1..1 and
    treatmentStartDate 0..1


// -----------------------------
// Syphilis Test Date
// -----------------------------
* component[testDate].code.text = "Syphilis test date"
* component[testDate].valueDateTime 1..1


// -----------------------------
// Syphilis Test Result
// -----------------------------
* component[testResult].code.text = "Syphilis test result"

* component[testResult].valueCodeableConcept 1..1
* component[testResult].valueCodeableConcept from SyphilisTestResultVS (required)


// -----------------------------
// Treatment Start Date
// -----------------------------
* component[treatmentStartDate].code.text = "Syphilis treatment start date"
* component[treatmentStartDate].valueDateTime 0..1