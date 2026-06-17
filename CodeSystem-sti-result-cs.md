# STI Test Result CodeSystem - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **STI Test Result CodeSystem**

## CodeSystem: STI Test Result CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/sti-result-cs | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:STIResultCS |

 
Codes for STI test results 

 This Code system is referenced in the content logical definition of the following value sets: 

* [STIResultVS](ValueSet-sti-result-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sti-result-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/sti-result-cs",
  "version" : "0.1.0",
  "name" : "STIResultCS",
  "title" : "STI Test Result CodeSystem",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Codes for STI test results",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "positive",
    "display" : "Positive"
  },
  {
    "code" : "negative",
    "display" : "Negative"
  },
  {
    "code" : "inconclusive",
    "display" : "Inconclusive"
  }]
}

```
