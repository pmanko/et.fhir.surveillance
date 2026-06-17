# Syndrome/STI Codes - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Syndrome/STI Codes**

## CodeSystem: Syndrome/STI Codes 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/sti-syndrome-cs | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:STISyndromeCS |

 
Code system of Syndrome/STI codes. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [STISyndromeVS](ValueSet-sti-syndrome-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sti-syndrome-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/sti-syndrome-cs",
  "version" : "0.1.0",
  "name" : "STISyndromeCS",
  "title" : "Syndrome/STI Codes",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Code system of Syndrome/STI codes.",
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "URETHRAL_DISCHARGE",
    "display" : "Urethral discharge syndrome"
  },
  {
    "code" : "VAGINAL_DISCHARGE",
    "display" : "Vaginal discharge syndrome"
  },
  {
    "code" : "LOWER_ABDOMINAL_PAIN",
    "display" : "Lower abdominal pain"
  },
  {
    "code" : "GENITAL_ULCER",
    "display" : "Genital ulcer disease syndrome"
  },
  {
    "code" : "SCROTAL_SWELLING",
    "display" : "Swelling of the scrotum"
  },
  {
    "code" : "CONJUNCTIVITIS",
    "display" : "Inflammation of the conjunctiva"
  },
  {
    "code" : "SENT_FOR_TESTING",
    "display" : "Sent for testing"
  },
  {
    "code" : "OTHER",
    "display" : "Other syndrome/STI diagnosed"
  }]
}

```
