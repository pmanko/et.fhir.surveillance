Profile: ExpectedDeliveryDateObservation
Parent: Observation
Id: expected-delivery-date
Title: "Expected Date of Delivery (EDD)"
Description: "Estimated date when the patient is expected to deliver"

* status 1..1 MS

* code 1..1 MS
* code = http://loinc.org#11778-8 "Estimated date of delivery"

* subject 1..1 MS
* subject only Reference(HIVPatient)

* effectiveDateTime 1..1 MS
// when the EDD was assessed/calculated

* value[x] only dateTime
* valueDateTime 1..1 MS
// the actual expected delivery date

* encounter 0..1 MS
* encounter only Reference(Encounter)