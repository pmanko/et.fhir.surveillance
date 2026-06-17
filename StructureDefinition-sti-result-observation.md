# STI Test Result Observation - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **STI Test Result Observation**

## Resource Profile: STI Test Result Observation 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/sti-result-observation | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:STIResultObservation |

 
Observation for STI test result with confirmatory test date 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-sti-result-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sti-result-observation.csv), [Excel](StructureDefinition-sti-result-observation.xlsx), [Schematron](StructureDefinition-sti-result-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sti-result-observation",
  "url" : "http://fhir.et/surveillance/StructureDefinition/sti-result-observation",
  "version" : "0.1.0",
  "name" : "STIResultObservation",
  "title" : "STI Test Result Observation",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Observation for STI test result with confirmatory test date",
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.et/core/StructureDefinition/ETPatient"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
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
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
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
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.et/surveillance/ValueSet/sti-result-vs"
      }
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code.text"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:confirmatoryTestDate",
      "path" : "Observation.component",
      "sliceName" : "confirmatoryTestDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:confirmatoryTestDate.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.component:confirmatoryTestDate.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "patternCode" : "21781-1"
    },
    {
      "id" : "Observation.component:confirmatoryTestDate.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Date of STI confirmatory test"
    },
    {
      "id" : "Observation.component:confirmatoryTestDate.value[x]",
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
      "id" : "Observation.component:confirmatoryTestDate.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
