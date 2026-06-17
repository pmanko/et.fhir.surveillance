# IPV Enquiry Result - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IPV Enquiry Result**

## CodeSystem: IPV Enquiry Result 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/CodeSystem/ipv-enquiry-result-cs | *Version*:0.1.0 |
| Active as of 2026-06-17 | *Computable Name*:IPVEnquiryResultCS |

 
Results of intimate partner violence enquiry 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IPVEnquiryResultVS](ValueSet-ipv-enquiry-result-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ipv-enquiry-result-cs",
  "url" : "http://fhir.et/surveillance/CodeSystem/ipv-enquiry-result-cs",
  "version" : "0.1.0",
  "name" : "IPVEnquiryResultCS",
  "title" : "IPV Enquiry Result",
  "status" : "active",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Results of intimate partner violence enquiry",
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "treated",
    "display" : "Client received treatment and/or counselling as needed"
  },
  {
    "code" : "referred",
    "display" : "Client was referred"
  },
  {
    "code" : "no-action",
    "display" : "No action necessary"
  },
  {
    "code" : "other",
    "display" : "Other IPV result"
  }]
}

```
