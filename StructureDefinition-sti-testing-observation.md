# STI Testing and Diagnosis - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **STI Testing and Diagnosis**

## Resource Profile: STI Testing and Diagnosis 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/sti-testing-observation | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:STITestingObservation |

 
Captures whether any STI syndrome was diagnosed, date of STI test, and STI(s) tested for 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-sti-testing-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sti-testing-observation.csv), [Excel](StructureDefinition-sti-testing-observation.xlsx), [Schematron](StructureDefinition-sti-testing-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sti-testing-observation",
  "url" : "http://fhir.et/surveillance/StructureDefinition/sti-testing-observation",
  "version" : "0.1.0",
  "name" : "STITestingObservation",
  "title" : "STI Testing and Diagnosis",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Captures whether any STI syndrome was diagnosed, date of STI test, and STI(s) tested for",
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
      "patternString" : "STI testing and diagnosis"
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
      "id" : "Observation.component:anySTIDiagnosed",
      "path" : "Observation.component",
      "sliceName" : "anySTIDiagnosed",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:anySTIDiagnosed.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Any STI syndrome diagnosed"
    },
    {
      "id" : "Observation.component:anySTIDiagnosed.value[x]",
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
      "id" : "Observation.component:anySTIDiagnosed.value[x]:valueBoolean",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueBoolean",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:stiTestDate",
      "path" : "Observation.component",
      "sliceName" : "stiTestDate",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:stiTestDate.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Date of STI test"
    },
    {
      "id" : "Observation.component:stiTestDate.value[x]",
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
      "id" : "Observation.component:stiTestDate.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:stiTestedFor",
      "path" : "Observation.component",
      "sliceName" : "stiTestedFor",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:stiTestedFor.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "STI tested for"
    },
    {
      "id" : "Observation.component:stiTestedFor.value[x]",
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
      "id" : "Observation.component:stiTestedFor.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.et/surveillance/ValueSet/sti-test-type-vs"
      }
    },
    {
      "id" : "Observation.component:otherSpecify",
      "path" : "Observation.component",
      "sliceName" : "otherSpecify",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:otherSpecify.code.text",
      "path" : "Observation.component.code.text",
      "min" : 1,
      "patternString" : "Other STI tested for (specify)"
    },
    {
      "id" : "Observation.component:otherSpecify.value[x]",
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
      "id" : "Observation.component:otherSpecify.value[x]:valueString",
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
