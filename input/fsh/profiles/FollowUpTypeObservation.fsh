Profile: FollowUpTypeObservation
Parent: Observation
Id: follow-up-type-observation
Title: "Type of Follow-Up"
Description: "Captures follow-up type, recommended date, scheduled appointment date/time, and additional details"

* status 1..1
* status = #final

* code 1..1
* code.text = "Follow-up plan"

* subject 1..1
* subject only Reference(HIVPatient)


// -----------------------------
// Slicing
// -----------------------------
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #open

* component contains
    followUpType 1..1 and
    recommendedDate 0..1 and
    scheduledDateTime 0..1 and
    otherReason 0..1


// -----------------------------
// Follow-up Type
// -----------------------------
* component[followUpType].code.text = "Follow-up type"
* component[followUpType].valueCodeableConcept 1..1
* component[followUpType].valueCodeableConcept from FollowUpTypeVS (required)


// -----------------------------
// Recommended Date (clinical guidance)
// -----------------------------
* component[recommendedDate].code.text = "Recommended follow-up date"
* component[recommendedDate].valueDateTime 0..1


// -----------------------------
// Scheduled Appointment
// -----------------------------
* component[scheduledDateTime].code.text = "Scheduled follow-up date/time"
* component[scheduledDateTime].valueDateTime 0..1


// -----------------------------
// Other Reason
// -----------------------------
* component[otherReason].code.text = "Other reason for follow-up (specify)"
* component[otherReason].valueString 0..1