Profile: IPVClinicalEnquiryObservation
Parent: Observation
Id: ipv-clinical-enquiry

Title: "Clinical Enquiry for Intimate Partner Violence (IPV)"
Description: "Indicates whether clinical enquiry for intimate partner violence (IPV) was conducted"

* status 1..1
* status = #final

* code 1..1
* code.text = "Clinical enquiry for intimate partner violence (IPV) done"

* subject 1..1
* subject only Reference(HIVPatient)

* value[x] 1..1
* value[x] only boolean

* effective[x] 0..1
* effective[x] only dateTime

* encounter 0..1