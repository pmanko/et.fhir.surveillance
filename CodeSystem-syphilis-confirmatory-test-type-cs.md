# Confirmatory Syphilis Test Type CodeSystem - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Confirmatory Syphilis Test Type CodeSystem**

## CodeSystem: Confirmatory Syphilis Test Type CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/syphilis-confirmatory-test-type-cs | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:SyphilisConfirmatoryTestTypeCS |

 
Codes for confirmatory syphilis test types 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SyphilisConfirmatoryTestTypeVS](ValueSet-syphilis-confirmatory-test-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "syphilis-confirmatory-test-type-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/syphilis-confirmatory-test-type-cs",
  "version" : "0.1.0",
  "name" : "SyphilisConfirmatoryTestTypeCS",
  "title" : "Confirmatory Syphilis Test Type CodeSystem",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Codes for confirmatory syphilis test types",
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
    "code" : "poc",
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
