Profile: MycoplasmaGenitaliumTestTypeObservation
Parent: Observation
Id: mycoplasma-genitalium-test-type-observation
Title: "Mycoplasma genitalium Test Type Observation"
Description: "Type of Mycoplasma genitalium test performed"

* status 1..1
* status = #final

* code 1..1
* code.text = "Mycoplasma genitalium test type"

* subject 1..1
* subject only Reference(HIVPatient)

* effective[x] 0..1
* effective[x] only dateTime

// ========================================
// Main coded value
// ========================================

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from MycoplasmaGenitaliumTestTypeVS (required)

// ========================================
// Component slicing
// ========================================

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

* component contains
    otherSpecify 0..1 and
    otherSTITestSpecify 0..1

// ========================================
// Other test specify
// ========================================

* component[otherSpecify].code.text = "Other Mycoplasma genitalium test type (specify)"

* component[otherSpecify].value[x] 1..1
* component[otherSpecify].value[x] only string

// ========================================
// Other STI test specify
// ========================================

* component[otherSTITestSpecify].code.text = "Test type for other STI tested for (specify)"

* component[otherSTITestSpecify].value[x] 1..1
* component[otherSTITestSpecify].value[x] only string