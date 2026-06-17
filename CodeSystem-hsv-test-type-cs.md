# Herpes Simplex Virus Test Type Code System - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Herpes Simplex Virus Test Type Code System**

## CodeSystem: Herpes Simplex Virus Test Type Code System 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/hsv-test-type-cs | *Version*:0.1.0 |
| Active as of 2026-06-17 | *Computable Name*:HSVTestTypeCS |

 
Codes for Herpes simplex virus (HSV) test types 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HSVTestTypeVS](ValueSet-hsv-test-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hsv-test-type-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/hsv-test-type-cs",
  "version" : "0.1.0",
  "name" : "HSVTestTypeCS",
  "title" : "Herpes Simplex Virus Test Type Code System",
  "status" : "active",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Codes for Herpes simplex virus (HSV) test types",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "naat",
    "display" : "NAAT"
  },
  {
    "code" : "antibody-test",
    "display" : "Antibody test"
  },
  {
    "code" : "other",
    "display" : "Other"
  }]
}

```
