# Syphilis Testing and Treatment - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Syphilis Testing and Treatment**

## Resource Profile: Syphilis Testing and Treatment 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/syphilis-testing-treatment-observation | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:SyphilisTestingAndTreatmentObservation |

 
Captures syphilis test date, test result, and treatment initiation date 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-syphilis-testing-treatment-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-syphilis-testing-treatment-observation.csv), [Excel](StructureDefinition-syphilis-testing-treatment-observation.xlsx), [Schematron](StructureDefinition-syphilis-testing-treatment-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "syphilis-testing-treatment-observation",
  "url" : "http://fhir.et/surveillance/StructureDefinition/syphilis-testing-treatment-observation",
  "version" : "0.1.0",
  "name" : "SyphilisTestingAndTreatmentObservation",
  "title" : "Syphilis Testing and Treatment",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Captures syphilis test date, test result, and treatment initiation date",
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
      "patternString" : "Syphilis testing and treatment"
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
      "min" : 2
    },
    {
      "id" : "Observation.component:testDate",
      "path" : "Observation.component",
      "sliceName" : "testDate",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:testDate.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Syphilis test date"
    },
    {
      "id" : "Observation.component:testDate.value[x]",
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
      "id" : "Observation.component:testDate.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:testResult",
      "path" : "Observation.component",
      "sliceName" : "testResult",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:testResult.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Syphilis test result"
    },
    {
      "id" : "Observation.component:testResult.value[x]",
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
      "id" : "Observation.component:testResult.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.et/surveillance/ValueSet/syphilis-test-result-vs"
      }
    },
    {
      "id" : "Observation.component:treatmentStartDate",
      "path" : "Observation.component",
      "sliceName" : "treatmentStartDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:treatmentStartDate.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Syphilis treatment start date"
    },
    {
      "id" : "Observation.component:treatmentStartDate.value[x]",
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
      "id" : "Observation.component:treatmentStartDate.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
