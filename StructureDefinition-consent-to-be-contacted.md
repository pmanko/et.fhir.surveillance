# Consent to be Contacted - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consent to be Contacted**

## Extension: Consent to be Contacted 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/consent-to-be-contacted | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:ConsentToBeContacted |

Indicates whether the patient consents to be contacted for follow-up or program communication

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-consent-to-be-contacted.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-consent-to-be-contacted.csv), [Excel](StructureDefinition-consent-to-be-contacted.xlsx), [Schematron](StructureDefinition-consent-to-be-contacted.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "consent-to-be-contacted",
  "url" : "http://fhir.et/surveillance/StructureDefinition/consent-to-be-contacted",
  "version" : "0.1.0",
  "name" : "ConsentToBeContacted",
  "title" : "Consent to be Contacted",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Indicates whether the patient consents to be contacted for follow-up or program communication",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Consent to be Contacted",
      "definition" : "Indicates whether the patient consents to be contacted for follow-up or program communication"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.et/surveillance/StructureDefinition/consent-to-be-contacted"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
