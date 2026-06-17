# Clinical Enquiry for Intimate Partner Violence (IPV) - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Clinical Enquiry for Intimate Partner Violence (IPV)**

## Resource Profile: Clinical Enquiry for Intimate Partner Violence (IPV) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/ipv-clinical-enquiry | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:IPVClinicalEnquiryObservation |

 
Indicates whether clinical enquiry for intimate partner violence (IPV) was conducted 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-ipv-clinical-enquiry.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ipv-clinical-enquiry.csv), [Excel](StructureDefinition-ipv-clinical-enquiry.xlsx), [Schematron](StructureDefinition-ipv-clinical-enquiry.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ipv-clinical-enquiry",
  "url" : "http://fhir.et/surveillance/StructureDefinition/ipv-clinical-enquiry",
  "version" : "0.1.0",
  "name" : "IPVClinicalEnquiryObservation",
  "title" : "Clinical Enquiry for Intimate Partner Violence (IPV)",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Indicates whether clinical enquiry for intimate partner violence (IPV) was conducted",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.code.text",
      "path" : "Observation.code.text",
      "patternString" : "Clinical enquiry for intimate partner violence (IPV) done"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.et/core/StructureDefinition/ETPatient"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
