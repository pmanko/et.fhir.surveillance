# Type of Follow-Up - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type of Follow-Up**

## Resource Profile: Type of Follow-Up 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/follow-up-type-observation | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:FollowUpTypeObservation |

 
Captures follow-up type, recommended date, scheduled appointment date/time, and additional details 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-follow-up-type-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-follow-up-type-observation.csv), [Excel](StructureDefinition-follow-up-type-observation.xlsx), [Schematron](StructureDefinition-follow-up-type-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "follow-up-type-observation",
  "url" : "http://fhir.et/surveillance/StructureDefinition/follow-up-type-observation",
  "version" : "0.1.0",
  "name" : "FollowUpTypeObservation",
  "title" : "Type of Follow-Up",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Captures follow-up type, recommended date, scheduled appointment date/time, and additional details",
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
      "patternString" : "Follow-up plan"
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
      "id" : "Observation.component:followUpType",
      "path" : "Observation.component",
      "sliceName" : "followUpType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:followUpType.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Follow-up type"
    },
    {
      "id" : "Observation.component:followUpType.value[x]",
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
      "id" : "Observation.component:followUpType.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.et/surveillance/ValueSet/follow-up-type-vs"
      }
    },
    {
      "id" : "Observation.component:recommendedDate",
      "path" : "Observation.component",
      "sliceName" : "recommendedDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:recommendedDate.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Recommended follow-up date"
    },
    {
      "id" : "Observation.component:recommendedDate.value[x]",
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
      "id" : "Observation.component:recommendedDate.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:scheduledDateTime",
      "path" : "Observation.component",
      "sliceName" : "scheduledDateTime",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:scheduledDateTime.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Scheduled follow-up date/time"
    },
    {
      "id" : "Observation.component:scheduledDateTime.value[x]",
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
      "id" : "Observation.component:scheduledDateTime.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:otherReason",
      "path" : "Observation.component",
      "sliceName" : "otherReason",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:otherReason.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Other reason for follow-up (specify)"
    },
    {
      "id" : "Observation.component:otherReason.value[x]",
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
      "id" : "Observation.component:otherReason.value[x]:valueString",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueString",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
