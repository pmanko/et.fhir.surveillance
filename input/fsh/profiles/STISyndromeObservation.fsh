Profile: STISyndromeObservation
Parent: Observation
Id: sti-syndrome-observation
Title: "Syndrome/STI Diagnosed"
Description: "Captures the syndrome or STI diagnosed, including option to specify other conditions"

* status 1..1
* status = #final

* code 1..1
* code.text = "Syndrome/STI diagnosed"

* subject 1..1
* subject only Reference(HIVPatient)


// -----------------------------
// Slicing
// -----------------------------
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #open

* component contains
    stiSyndrome 1..1 and
    otherSpecify 0..1


// -----------------------------
// Syndrome/STI Diagnosed
// -----------------------------
* component[stiSyndrome].code.text = "Syndrome/STI diagnosed"

* component[stiSyndrome].valueCodeableConcept 1..1
* component[stiSyndrome].valueCodeableConcept from STISyndromeVS (required)


// -----------------------------
// Other (Specify)
// -----------------------------
* component[otherSpecify].code.text = "Other syndrome/STI diagnosed (specify)"
* component[otherSpecify].valueString 0..1