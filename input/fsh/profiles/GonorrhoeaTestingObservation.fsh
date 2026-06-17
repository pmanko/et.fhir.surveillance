Profile: GonorrhoeaTestingObservation
Parent: Observation
Id: gonorrhoea-testing-observation
Title: "Gonorrhoea Testing and Treatment"
Description: "Captures gonorrhoea test date, specimen type, test result, treatment start date, and other specimen specification"

* status 1..1
* status = #final

* code 1..1
* code.text = "Gonorrhoea testing and treatment"

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
    specimenType 1..1 and
    otherSpecimen 0..1 and
    testResult 1..1 and
    treatmentStartDate 0..1


// -----------------------------
// Test Date
// -----------------------------
* component[testDate].code.text = "Gonorrhoea test date"
* component[testDate].valueDateTime 1..1


// -----------------------------
// Specimen Type (coded)
// -----------------------------
* component[specimenType].code.text = "Type of specimen"
* component[specimenType].valueCodeableConcept 1..1
* component[specimenType].valueCodeableConcept from GonorrhoeaSpecimenTypeVS (required)


// -----------------------------
// Other Specimen (string)  ✅ FIXED
// -----------------------------
* component[otherSpecimen].code.text = "Other type of specimen (specify)"
* component[otherSpecimen].valueString 0..1


// -----------------------------
// Test Result
// -----------------------------
* component[testResult].code.text = "Gonorrhoea test result"
* component[testResult].valueCodeableConcept 1..1
* component[testResult].valueCodeableConcept from GonorrhoeaTestResultVS (required)


* component[treatmentStartDate].code.text = "Gonorrhoea treatment start date"
* component[treatmentStartDate].valueDateTime 0..1