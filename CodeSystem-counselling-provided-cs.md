# Counselling Provided - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Counselling Provided**

## CodeSystem: Counselling Provided 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/counselling-provided-cs | *Version*:0.1.0 |
| Active as of 2026-06-17 | *Computable Name*:CounsellingProvidedCS |

 
Types of counselling provided to client 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CounsellingProvidedVS](ValueSet-counselling-provided-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "counselling-provided-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/counselling-provided-cs",
  "version" : "0.1.0",
  "name" : "CounsellingProvidedCS",
  "title" : "Counselling Provided",
  "status" : "active",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Types of counselling provided to client",
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "hiv-positive",
    "display" : "HIV-positive counselling conducted"
  },
  {
    "code" : "hepb-positive",
    "display" : "Hepatitis B positive counselling conducted"
  },
  {
    "code" : "hepc-positive",
    "display" : "Hepatitis C positive counselling conducted"
  },
  {
    "code" : "syphilis",
    "display" : "Syphilis counselling, treatment and further testing"
  },
  {
    "code" : "art-linkage",
    "display" : "Linked to enrolment in care and ART initiation"
  },
  {
    "code" : "vmmc",
    "display" : "VMMC counselling provided"
  }]
}

```
