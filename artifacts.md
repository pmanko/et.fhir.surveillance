# Artifacts Summary - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Chlamydia trachomatis Test Type Observation](StructureDefinition-chlamydia-trachomatis-test-type-observation.md) | Type of Chlamydia trachomatis test performed |
| [Clinical Enquiry for Intimate Partner Violence (IPV)](StructureDefinition-ipv-clinical-enquiry.md) | Indicates whether clinical enquiry for intimate partner violence (IPV) was conducted |
| [Confirmatory STI Test Result Observation](StructureDefinition-confirmatory-sti-test-result-observation.md) | Captures confirmatory STI result and treatment details |
| [Confirmatory Syphilis Test Observation](StructureDefinition-confirmatory-syphilis-test-observation.md) | Captures syphilis confirmatory test type and related details |
| [Counselling Provided](StructureDefinition-counselling-provided.md) | Indicates types of counselling provided to the client |
| [Gonorrhoea Testing and Treatment](StructureDefinition-gonorrhoea-testing-observation.md) | Captures gonorrhoea test date, specimen type, test result, treatment start date, and other specimen specification |
| [Herpes Simplex Virus (HSV) Test Type Observation](StructureDefinition-hsv-test-type-observation.md) | Type of Herpes simplex virus (HSV) test performed |
| [Mycoplasma genitalium Test Type Observation](StructureDefinition-mycoplasma-genitalium-test-type-observation.md) | Type of Mycoplasma genitalium test performed |
| [Neisseria gonorrhoeae Test Type Observation](StructureDefinition-neisseria-gonorrhoeae-test-type-observation.md) | Type of Neisseria gonorrhoeae test performed |
| [Pregnancy Status (Boolean)](StructureDefinition-pregnancy-status-observation.md) | Indicates whether the client is currently pregnant |
| [STI Test Result Observation](StructureDefinition-sti-result-observation.md) | Observation for STI test result with confirmatory test date |
| [STI Testing and Diagnosis](StructureDefinition-sti-testing-observation.md) | Captures whether any STI syndrome was diagnosed, date of STI test, and STI(s) tested for |
| [Sexual and Reproductive Health Integrated Services](StructureDefinition-srh-integrated-services.md) | Indicates SRH integrated services provided to the client |
| [Syndrome/STI Diagnosed](StructureDefinition-sti-syndrome-observation.md) | Captures the syndrome or STI diagnosed, including option to specify other conditions |
| [Syphilis Test Type Observation](StructureDefinition-syphilis-test-type-observation.md) | Type of syphilis test performed |
| [Syphilis Testing and Treatment](StructureDefinition-syphilis-testing-treatment-observation.md) | Captures syphilis test date, test result, and treatment initiation date |
| [Trichomonas vaginalis Test Type Observation](StructureDefinition-trichomonas-vaginalis-test-type-observation.md) | Type of Trichomonas vaginalis test performed |
| [Type of Follow-Up](StructureDefinition-follow-up-type-observation.md) | Captures follow-up type, recommended date, scheduled appointment date/time, and additional details |
| [VMMC Adverse Events](StructureDefinition-vmmc-adverse-event-observation.md) | Captures adverse events following VMMC, including severity, timing, seriousness, and date |
| [VMMC Procedure](StructureDefinition-vmmc-procedure-observation.md) | Indicates whether Voluntary Medical Male Circumcision (VMMC) procedure was performed |
| [VMMC Procedure Date](StructureDefinition-vmmc-procedure-date-observation.md) | Captures the date/time when the VMMC procedure was performed |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Community Entry Point](StructureDefinition-community-entry-point.md) | Community Entry Point extension. |
| [ConfirmedSite](StructureDefinition-confirmed-site.md) |  |
| [Consent to Receive Family Planning Follow-up Messages](StructureDefinition-FPFollowUpMsgConsent.md) | Indicates whether the client consents to receive SMS or other messages for family planning follow-up |
| [Consent to be Contacted](StructureDefinition-consent-to-be-contacted.md) | Indicates whether the patient consents to be contacted for follow-up or program communication |
| [Referred through partner services](StructureDefinition-partner-services-referral.md) | Indicates whether the client was referred through partner services and the type of referral |
| [cachment Area](StructureDefinition-cachment-area.md) | Catchment area of the HIV patient (such as villages, districts, etc) |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Chlamydia trachomatis Test Type Value Set](ValueSet-chlamydia-trachomatis-test-type-vs.md) | Allowed values for Chlamydia trachomatis test types |
| [Confirmatory Syphilis Test Type ValueSet](ValueSet-syphilis-confirmatory-test-type-vs.md) | Value set for confirmatory syphilis test types |
| [Counselling Provided](ValueSet-counselling-provided-vs.md) | Value set of Counselling Provided values. |
| [Facility Entry Point ValueSet](ValueSet-facility-entry-point-vs.md) | ValueSet for facility entry points |
| [Follow-Up Types](ValueSet-follow-up-type-vs.md) | Value set of Follow-Up Types values. |
| [Gonorrhoea Specimen Type](ValueSet-gonorrhoea-specimen-type-vs.md) | Value set of Gonorrhoea Specimen Type values. |
| [Gonorrhoea Test Result](ValueSet-gonorrhoea-test-result-vs.md) | Value set of Gonorrhoea Test Result values. |
| [Herpes Simplex Virus Test Type Value Set](ValueSet-hsv-test-type-vs.md) | Allowed values for Herpes simplex virus (HSV) test types |
| [IPV Enquiry Result](ValueSet-ipv-enquiry-result-vs.md) | Value set of IPV Enquiry Result values. |
| [Mycoplasma genitalium Test Type Value Set](ValueSet-mycoplasma-genitalium-test-type-vs.md) | Allowed values for Mycoplasma genitalium test types |
| [Neisseria gonorrhoeae Test Type Value Set](ValueSet-neisseria-gonorrhoeae-test-type-vs.md) | Allowed values for Neisseria gonorrhoeae test types |
| [STI Test Result ValueSet](ValueSet-sti-result-vs.md) | Value set for STI test results |
| [STI Tested For](ValueSet-sti-test-type-vs.md) | Value set of STI Tested For values. |
| [Sexual and Reproductive Health Integrated Services](ValueSet-srh-integrated-services-vs.md) | Value set of Sexual and Reproductive Health Integrated Services values. |
| [Syndrome/STI Diagnosed](ValueSet-sti-syndrome-vs.md) | Value set of Syndrome/STI Diagnosed values. |
| [Syphilis Test Result](ValueSet-syphilis-test-result-vs.md) | Value set of Syphilis Test Result values. |
| [Syphilis Test Type Value Set](ValueSet-syphilis-test-type-vs.md) | Allowed syphilis test type values |
| [Timing of VMMC Adverse Event](ValueSet-vmmc-adverse-event-timing-vs.md) | Value set of Timing of VMMC Adverse Event values. |
| [Trichomonas vaginalis Test Type Value Set](ValueSet-trichomonas-vaginalis-test-type-vs.md) | Allowed values for Trichomonas vaginalis test types |
| [VMMC Adverse Event Severity](ValueSet-vmmc-adverse-event-severity-vs.md) | Value set of VMMC Adverse Event Severity values. |
| [community Entry Point ValueSet](ValueSet-community-entry-point-vs.md) | ValueSet for community entry points |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Chlamydia trachomatis Test Type Code System](CodeSystem-chlamydia-trachomatis-test-type-cs.md) | Codes for Chlamydia trachomatis test types |
| [Confirmatory Syphilis Test Type CodeSystem](CodeSystem-syphilis-confirmatory-test-type-cs.md) | Codes for confirmatory syphilis test types |
| [Counselling Provided](CodeSystem-counselling-provided-cs.md) | Types of counselling provided to client |
| [Follow-Up Type Codes](CodeSystem-follow-up-type-cs.md) | Code system of Follow-Up Type codes. |
| [Gonorrhoea Specimen Types](CodeSystem-gonorrhoea-specimen-type-cs.md) | Code system of Gonorrhoea Specimen Types codes. |
| [Gonorrhoea Test Result Codes](CodeSystem-gonorrhoea-test-result-cs.md) | Code system of Gonorrhoea Test Result codes. |
| [Herpes Simplex Virus Test Type Code System](CodeSystem-hsv-test-type-cs.md) | Codes for Herpes simplex virus (HSV) test types |
| [IPV Enquiry Result](CodeSystem-ipv-enquiry-result-cs.md) | Results of intimate partner violence enquiry |
| [Mycoplasma genitalium Test Type Code System](CodeSystem-mycoplasma-genitalium-test-type-cs.md) | Codes for Mycoplasma genitalium test types |
| [Neisseria gonorrhoeae Test Type Code System](CodeSystem-neisseria-gonorrhoeae-test-type-cs.md) | Codes for Neisseria gonorrhoeae test types |
| [STI Test Result CodeSystem](CodeSystem-sti-result-cs.md) | Codes for STI test results |
| [STI Test Types](CodeSystem-sti-test-type-cs.md) | Code system of STI Test Types codes. |
| [Sexual and Reproductive Health Integrated Services](CodeSystem-srh-integrated-services-cs.md) | Types of SRH integrated services provided |
| [Syndrome/STI Codes](CodeSystem-sti-syndrome-cs.md) | Code system of Syndrome/STI codes. |
| [Syphilis Test Result Codes](CodeSystem-syphilis-test-result-cs.md) | Code system of Syphilis Test Result codes. |
| [Syphilis Test Type Code System](CodeSystem-syphilis-test-type-cs.md) | Codes for syphilis test types |
| [Timing of Adverse Event](CodeSystem-vmmc-adverse-event-timing-cs.md) | Code system of Timing of Adverse Event codes. |
| [Trichomonas vaginalis Test Type Code System](CodeSystem-trichomonas-vaginalis-test-type-cs.md) | Codes for Trichomonas vaginalis test types |
| [VMMC Adverse Event Severity Codes](CodeSystem-vmmc-adverse-event-severity-cs.md) | Code system of VMMC Adverse Event Severity codes. |

