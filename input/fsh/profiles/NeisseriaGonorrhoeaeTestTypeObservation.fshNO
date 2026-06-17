Profile: NeisseriaGonorrhoeaeTestTypeObservation
Parent: Observation
Id: neisseria-gonorrhoeae-test-type-observation
Title: "Neisseria gonorrhoeae Test Type Observation"
Description: "Type of Neisseria gonorrhoeae test performed"

* status 1..1
* status = #final

* code 1..1
* code.text = "Neisseria gonorrhoeae test type"

* subject 1..1
* subject only Reference(HIVPatient)

* effective[x] 0..1
* effective[x] only dateTime

// Main coded value
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from NeisseriaGonorrhoeaeTestTypeVS (required)

// ========================================
// Component slicing
// ========================================

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

* component contains
    otherSpecify 0..1 and
    pocTestSpecify 0..1

// ========================================
// Other (specify)
// ========================================

* component[otherSpecify].code.text = "Other Neisseria gonorrhoeae test type (specify)"

* component[otherSpecify].value[x] 1..1
* component[otherSpecify].value[x] only string

// ========================================
// POC Test specify
// ========================================

* component[pocTestSpecify].code.text = "POC Test for Neisseria gonorrhoeae (specify)"

* component[pocTestSpecify].value[x] 1..1
* component[pocTestSpecify].value[x] only string