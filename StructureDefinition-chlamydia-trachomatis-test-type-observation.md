# Chlamydia trachomatis Test Type Observation - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Chlamydia trachomatis Test Type Observation**

## Resource Profile: Chlamydia trachomatis Test Type Observation 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/chlamydia-trachomatis-test-type-observation | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:ChlamydiaTrachomatisTestTypeObservation |

 
Type of Chlamydia trachomatis test performed 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-chlamydia-trachomatis-test-type-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-chlamydia-trachomatis-test-type-observation.csv), [Excel](StructureDefinition-chlamydia-trachomatis-test-type-observation.xlsx), [Schematron](StructureDefinition-chlamydia-trachomatis-test-type-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "chlamydia-trachomatis-test-type-observation",
  "url" : "http://fhir.et/surveillance/StructureDefinition/chlamydia-trachomatis-test-type-observation",
  "version" : "0.1.0",
  "name" : "ChlamydiaTrachomatisTestTypeObservation",
  "title" : "Chlamydia trachomatis Test Type Observation",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Type of Chlamydia trachomatis test performed",
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
      "patternString" : "Chlamydia trachomatis test type"
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
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.et/surveillance/ValueSet/chlamydia-trachomatis-test-type-vs"
      }
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "ordered" : false,
        "rules" : "open"
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
      "patternString" : "Other test for Chlamydia (specify)"
    },
    {
      "id" : "Observation.component:otherSpecify.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:pocTestSpecify",
      "path" : "Observation.component",
      "sliceName" : "pocTestSpecify",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:pocTestSpecify.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "POC Test type for Chlamydia test (specify)"
    },
    {
      "id" : "Observation.component:pocTestSpecify.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
