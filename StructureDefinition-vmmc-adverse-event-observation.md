# VMMC Adverse Events - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VMMC Adverse Events**

## Resource Profile: VMMC Adverse Events 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/vmmc-adverse-event-observation | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:VMMCAdverseEventObservation |

 
Captures adverse events following VMMC, including severity, timing, seriousness, and date 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-vmmc-adverse-event-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-vmmc-adverse-event-observation.csv), [Excel](StructureDefinition-vmmc-adverse-event-observation.xlsx), [Schematron](StructureDefinition-vmmc-adverse-event-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "vmmc-adverse-event-observation",
  "url" : "http://fhir.et/surveillance/StructureDefinition/vmmc-adverse-event-observation",
  "version" : "0.1.0",
  "name" : "VMMCAdverseEventObservation",
  "title" : "VMMC Adverse Events",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Captures adverse events following VMMC, including severity, timing, seriousness, and date",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.code.text",
      "path" : "Observation.code.text",
      "patternString" : "VMMC adverse events"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.et/core/StructureDefinition/ETPatient"]
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code.text"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:adverseEventReported",
      "path" : "Observation.component",
      "sliceName" : "adverseEventReported",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:adverseEventReported.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Adverse event reported from VMMC"
    },
    {
      "id" : "Observation.component:adverseEventReported.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:adverseEventReported.value[x]:valueBoolean",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueBoolean",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:seriousAdverseEvent",
      "path" : "Observation.component",
      "sliceName" : "seriousAdverseEvent",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:seriousAdverseEvent.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Serious adverse event"
    },
    {
      "id" : "Observation.component:seriousAdverseEvent.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:seriousAdverseEvent.value[x]:valueBoolean",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:adverseEventDate",
      "path" : "Observation.component",
      "sliceName" : "adverseEventDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:adverseEventDate.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Adverse event date"
    },
    {
      "id" : "Observation.component:adverseEventDate.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:adverseEventDate.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:severity",
      "path" : "Observation.component",
      "sliceName" : "severity",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:severity.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Adverse event severity"
    },
    {
      "id" : "Observation.component:severity.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:severity.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.et/surveillance/ValueSet/vmmc-adverse-event-severity-vs"
      }
    },
    {
      "id" : "Observation.component:timing",
      "path" : "Observation.component",
      "sliceName" : "timing",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:timing.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Timing of adverse event"
    },
    {
      "id" : "Observation.component:timing.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:timing.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.et/surveillance/ValueSet/vmmc-adverse-event-timing-vs"
      }
    }]
  }
}

```
