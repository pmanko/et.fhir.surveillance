Profile: TrichomonasVaginalisTestTypeObservation
Parent: Observation
Id: trichomonas-vaginalis-test-type-observation
Title: "Trichomonas vaginalis Test Type Observation"
Description: "Type of Trichomonas vaginalis test performed"

* status 1..1
* status = #final

* code 1..1
* code.text = "Trichomonas vaginalis test type"

* subject 1..1
* subject only Reference(HIVPatient)

* effective[x] 0..1
* effective[x] only dateTime

// ========================================
// Main coded value
// ========================================

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from TrichomonasVaginalisTestTypeVS (required)

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
// Other specify
// ========================================

* component[otherSpecify].code.text = "Other Trichomonas vaginalis test type (specify)"

* component[otherSpecify].value[x] 1..1
* component[otherSpecify].value[x] only string

// ========================================
// POC test specify
// ========================================

* component[pocTestSpecify].code.text = "POC Test type for Trichomonas vaginalis test (specify)"

* component[pocTestSpecify].value[x] 1..1
* component[pocTestSpecify].value[x] only string