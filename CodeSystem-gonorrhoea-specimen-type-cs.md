# Gonorrhoea Specimen Types - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gonorrhoea Specimen Types**

## CodeSystem: Gonorrhoea Specimen Types 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/gonorrhoea-specimen-type-cs | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:GonorrhoeaSpecimenTypeCS |

 
Code system of Gonorrhoea Specimen Types codes. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GonorrhoeaSpecimenTypeVS](ValueSet-gonorrhoea-specimen-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "gonorrhoea-specimen-type-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/gonorrhoea-specimen-type-cs",
  "version" : "0.1.0",
  "name" : "GonorrhoeaSpecimenTypeCS",
  "title" : "Gonorrhoea Specimen Types",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Code system of Gonorrhoea Specimen Types codes.",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "BLOOD",
    "display" : "Blood"
  },
  {
    "code" : "CERVICAL_VAGINAL",
    "display" : "Cervical or vaginal swab"
  },
  {
    "code" : "URETHRAL_PENILE",
    "display" : "Urethral or penile swab"
  },
  {
    "code" : "RECTAL",
    "display" : "Rectal swab"
  },
  {
    "code" : "OTHER",
    "display" : "Other"
  }]
}

```
