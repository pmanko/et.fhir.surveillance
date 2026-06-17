# Timing of VMMC Adverse Event - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Timing of VMMC Adverse Event**

## ValueSet: Timing of VMMC Adverse Event 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/ValueSet/vmmc-adverse-event-timing-vs | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:VMMCAdverseEventTimingVS |

 
Value set of Timing of VMMC Adverse Event values. 

 **References** 

* [VMMC Adverse Events](StructureDefinition-vmmc-adverse-event-observation.md)

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
  "id" : "vmmc-adverse-event-timing-vs",
  "url" : "http://fhir.et/surveillance/ValueSet/vmmc-adverse-event-timing-vs",
  "version" : "0.1.0",
  "name" : "VMMCAdverseEventTimingVS",
  "title" : "Timing of VMMC Adverse Event",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Value set of Timing of VMMC Adverse Event values.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.et/surveillance/CodeSystem/vmmc-adverse-event-timing-cs"
    }]
  }
}

```
