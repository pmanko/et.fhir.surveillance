Profile: ChlamydiaTrachomatisTestTypeObservation
Parent: Observation
Id: chlamydia-trachomatis-test-type-observation
Title: "Chlamydia trachomatis Test Type Observation"
Description: "Type of Chlamydia trachomatis test performed"

* status 1..1
* status = #final

* code 1..1
* code.text = "Chlamydia trachomatis test type"

* subject 1..1
* subject only Reference(HIVPatient)

* effective[x] 0..1
* effective[x] only dateTime

// ========================================
// Main coded value
// ========================================

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ChlamydiaTrachomatisTestTypeVS (required)

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
// Other test specify
// ========================================

* component[otherSpecify].code.text = "Other test for Chlamydia (specify)"

* component[otherSpecify].value[x] 1..1
* component[otherSpecify].value[x] only string

// ========================================
// POC test specify
// ========================================

* component[pocTestSpecify].code.text = "POC Test type for Chlamydia test (specify)"

* component[pocTestSpecify].value[x] 1..1
* component[pocTestSpecify].value[x] only string