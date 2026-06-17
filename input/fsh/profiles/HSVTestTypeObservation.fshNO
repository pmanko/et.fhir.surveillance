Profile: HSVTestTypeObservation
Parent: Observation
Id: hsv-test-type-observation
Title: "Herpes Simplex Virus (HSV) Test Type Observation"
Description: "Type of Herpes simplex virus (HSV) test performed"

* status 1..1
* status = #final

* code 1..1
* code.text = "Herpes simplex virus (HSV) test type"

* subject 1..1
* subject only Reference(HIVPatient)

* effective[x] 0..1
* effective[x] only dateTime

// ========================================
// Main coded value
// ========================================

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from HSVTestTypeVS (required)

// ========================================
// Component slicing
// ========================================

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

* component contains otherSpecify 0..1

// ========================================
// Other specify
// ========================================

* component[otherSpecify].code.text = "Other HSV test type (specify)"

* component[otherSpecify].value[x] 1..1
* component[otherSpecify].value[x] only string