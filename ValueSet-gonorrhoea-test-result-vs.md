# Gonorrhoea Test Result - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gonorrhoea Test Result**

## ValueSet: Gonorrhoea Test Result 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/ValueSet/gonorrhoea-test-result-vs | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:GonorrhoeaTestResultVS |

 
Value set of Gonorrhoea Test Result values. 

 **References** 

* [Gonorrhoea Testing and Treatment](StructureDefinition-gonorrhoea-testing-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "gonorrhoea-test-result-vs",
  "url" : "http://fhir.et/surveillance/ValueSet/gonorrhoea-test-result-vs",
  "version" : "0.1.0",
  "name" : "GonorrhoeaTestResultVS",
  "title" : "Gonorrhoea Test Result",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Value set of Gonorrhoea Test Result values.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.et/surveillance/CodeSystem/gonorrhoea-test-result-cs"
    }]
  }
}

```
