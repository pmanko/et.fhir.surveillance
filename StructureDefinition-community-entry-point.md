# Community Entry Point - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Community Entry Point**

## Extension: Community Entry Point 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/community-entry-point | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:CommunityEntryPoint |

Community Entry Point extension.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-community-entry-point.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-community-entry-point.csv), [Excel](StructureDefinition-community-entry-point.xlsx), [Schematron](StructureDefinition-community-entry-point.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "community-entry-point",
  "url" : "http://fhir.et/surveillance/StructureDefinition/community-entry-point",
  "version" : "0.1.0",
  "name" : "CommunityEntryPoint",
  "title" : "Community Entry Point",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Community Entry Point extension.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Community Entry Point",
      "definition" : "Community Entry Point extension."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.et/surveillance/StructureDefinition/community-entry-point"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.et/surveillance/ValueSet/community-entry-point-vs"
      }
    }]
  }
}

```
