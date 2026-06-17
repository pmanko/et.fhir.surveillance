Profile: IPVEnquiryResultObservation
Parent: Observation
Id: ipv-enquiry-result
Title: "IPV Enquiry Result"
Description: "Outcome of intimate partner violence enquiry"

* status 1..1
* status = #final

* code 1..1
* code.text = "Intimate partner violence enquiry result"

* subject 1..1
* subject only Reference(HIVPatient)

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from IPVEnquiryResultVS (required)

//# 🔴 STEP 1: define slicing
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

//# 🔴 STEP 2: define slice
* component contains otherSpecify 0..1

* component[otherSpecify].code = http://loinc.org#other-specify
* component[otherSpecify].value[x] only string
* component[otherSpecify].valueString 1..1

* effective[x] 0..1
* effective[x] only dateTime

* encounter 0..1