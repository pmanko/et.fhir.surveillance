# STI Test Types - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **STI Test Types**

## CodeSystem: STI Test Types 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/sti-test-type-cs | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:STITestTypeCS |

 
Code system of STI Test Types codes. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [STITestTypeVS](ValueSet-sti-test-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sti-test-type-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/sti-test-type-cs",
  "version" : "0.1.0",
  "name" : "STITestTypeCS",
  "title" : "STI Test Types",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Code system of STI Test Types codes.",
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "NG",
    "display" : "Neisseria gonorrhoeae"
  },
  {
    "code" : "CT",
    "display" : "Chlamydia trachomatis"
  },
  {
    "code" : "TV",
    "display" : "Trichomonas vaginalis"
  },
  {
    "code" : "SYPHILIS",
    "display" : "Syphilis (Treponema pallidum)"
  },
  {
    "code" : "HSV",
    "display" : "Herpes simplex virus (HSV1, HSV2)"
  },
  {
    "code" : "MG",
    "display" : "Mycoplasma genitalium"
  },
  {
    "code" : "MPOX",
    "display" : "Mpox"
  },
  {
    "code" : "HEPB",
    "display" : "Hepatitis B"
  },
  {
    "code" : "OTHER",
    "display" : "Other"
  }]
}

```
