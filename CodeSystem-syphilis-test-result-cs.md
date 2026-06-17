# Syphilis Test Result Codes - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Syphilis Test Result Codes**

## CodeSystem: Syphilis Test Result Codes 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/syphilis-test-result-cs | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:SyphilisTestResultCS |

 
Code system of Syphilis Test Result codes. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SyphilisTestResultVS](ValueSet-syphilis-test-result-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "syphilis-test-result-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/syphilis-test-result-cs",
  "version" : "0.1.0",
  "name" : "SyphilisTestResultCS",
  "title" : "Syphilis Test Result Codes",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Code system of Syphilis Test Result codes.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "POSITIVE",
    "display" : "Positive"
  },
  {
    "code" : "NEGATIVE",
    "display" : "Negative"
  },
  {
    "code" : "INCONCLUSIVE",
    "display" : "Inconclusive"
  }]
}

```
