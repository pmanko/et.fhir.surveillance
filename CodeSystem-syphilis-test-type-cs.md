# Syphilis Test Type Code System - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Syphilis Test Type Code System**

## CodeSystem: Syphilis Test Type Code System 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/syphilis-test-type-cs | *Version*:0.1.0 |
| Active as of 2026-06-17 | *Computable Name*:SyphilisTestTypeCS |

 
Codes for syphilis test types 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SyphilisTestTypeVS](ValueSet-syphilis-test-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "syphilis-test-type-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/syphilis-test-type-cs",
  "version" : "0.1.0",
  "name" : "SyphilisTestTypeCS",
  "title" : "Syphilis Test Type Code System",
  "status" : "active",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Codes for syphilis test types",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "treponemal",
    "display" : "Treponemal"
  },
  {
    "code" : "non-treponemal",
    "display" : "Non-treponemal"
  },
  {
    "code" : "poc-test",
    "display" : "POC Test"
  },
  {
    "code" : "naat",
    "display" : "NAAT"
  },
  {
    "code" : "other",
    "display" : "Other"
  }]
}

```
