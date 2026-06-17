# Confirmatory STI Test Result Observation - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Confirmatory STI Test Result Observation**

## Resource Profile: Confirmatory STI Test Result Observation 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/confirmatory-sti-test-result-observation | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:ConfirmatorySTITestResultObservation |

 
Captures confirmatory STI result and treatment details 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-confirmatory-sti-test-result-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-confirmatory-sti-test-result-observation.csv), [Excel](StructureDefinition-confirmatory-sti-test-result-observation.xlsx), [Schematron](StructureDefinition-confirmatory-sti-test-result-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "confirmatory-sti-test-result-observation",
  "url" : "http://fhir.et/surveillance/StructureDefinition/confirmatory-sti-test-result-observation",
  "version" : "0.1.0",
  "name" : "ConfirmatorySTITestResultObservation",
  "title" : "Confirmatory STI Test Result Observation",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Captures confirmatory STI result and treatment details",
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
      "min" : 1,
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
      "id" : "Observation.component:treatmentPrescribedDate",
      "path" : "Observation.component",
      "sliceName" : "treatmentPrescribedDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:treatmentPrescribedDate.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Date STI treatment prescribed"
    },
    {
      "id" : "Observation.component:treatmentPrescribedDate.value[x]",
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
      "id" : "Observation.component:treatmentPrescribedDate.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:treatmentDispensedDate",
      "path" : "Observation.component",
      "sliceName" : "treatmentDispensedDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:treatmentDispensedDate.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Date STI treatment dispensed"
    },
    {
      "id" : "Observation.component:treatmentDispensedDate.value[x]",
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
      "id" : "Observation.component:treatmentDispensedDate.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:treatmentDispensedSpecify",
      "path" : "Observation.component",
      "sliceName" : "treatmentDispensedSpecify",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:treatmentDispensedSpecify.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "STI treatment dispensed (specify)"
    },
    {
      "id" : "Observation.component:treatmentDispensedSpecify.value[x]",
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
      "id" : "Observation.component:treatmentDispensedSpecify.value[x]:valueString",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueString",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
