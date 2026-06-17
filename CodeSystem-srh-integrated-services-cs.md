# Sexual and Reproductive Health Integrated Services - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sexual and Reproductive Health Integrated Services**

## CodeSystem: Sexual and Reproductive Health Integrated Services 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/srh-integrated-services-cs | *Version*:0.1.0 |
| Active as of 2026-06-17 | *Computable Name*:SRHIntegratedServicesCS |

 
Types of SRH integrated services provided 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SRHIntegratedServicesVS](ValueSet-srh-integrated-services-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "srh-integrated-services-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/srh-integrated-services-cs",
  "version" : "0.1.0",
  "name" : "SRHIntegratedServicesCS",
  "title" : "Sexual and Reproductive Health Integrated Services",
  "status" : "active",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Types of SRH integrated services provided",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "family-planning",
    "display" : "Contraception and family planning"
  },
  {
    "code" : "pregnancy-check",
    "display" : "Check pregnancy status"
  },
  {
    "code" : "pmtct",
    "display" : "Prevention of mother-to-child transmission counselling"
  },
  {
    "code" : "cervical-cancer",
    "display" : "Cervical cancer screening and treatment counselling"
  },
  {
    "code" : "sti-services",
    "display" : "STI testing and treatment services"
  }]
}

```
