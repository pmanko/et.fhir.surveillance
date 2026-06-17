Profile: SRHIntegratedServicesObservation
Parent: Observation
Id: srh-integrated-services
Title: "Sexual and Reproductive Health Integrated Services"
Description: "Indicates SRH integrated services provided to the client"

* status 1..1
* status = #final

* code 1..1
* code.text = "Sexual and reproductive health integrated services"

* subject 1..1
* subject only Reference(HIVPatient)

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from SRHIntegratedServicesVS (required)

* effective[x] 0..1
* effective[x] only dateTime

* encounter 0..1