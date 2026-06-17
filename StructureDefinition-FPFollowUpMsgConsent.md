# Consent to Receive Family Planning Follow-up Messages - Ethiopia Surveillance IG (sandbox demo subset) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consent to Receive Family Planning Follow-up Messages**

## Extension: Consent to Receive Family Planning Follow-up Messages 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.et/surveillance/StructureDefinition/FPFollowUpMsgConsent | *Version*:0.1.0 |
| Draft as of 2026-06-17 | *Computable Name*:FPFollowUpMsgConsent |

Indicates whether the client consents to receive SMS or other messages for family planning follow-up

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/et.fhir.surveillance|current/StructureDefinition/StructureDefinition-FPFollowUpMsgConsent.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FPFollowUpMsgConsent.csv), [Excel](StructureDefinition-FPFollowUpMsgConsent.xlsx), [Schematron](StructureDefinition-FPFollowUpMsgConsent.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FPFollowUpMsgConsent",
  "url" : "http://fhir.et/surveillance/StructureDefinition/FPFollowUpMsgConsent",
  "version" : "0.1.0",
  "name" : "FPFollowUpMsgConsent",
  "title" : "Consent to Receive Family Planning Follow-up Messages",
  "status" : "draft",
  "date" : "2026-06-17T09:34:47+00:00",
  "publisher" : "MOH Ethiopia",
  "description" : "Indicates whether the client consents to receive SMS or other messages for family planning follow-up",
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
      "short" : "Consent to Receive Family Planning Follow-up Messages",
      "definition" : "Indicates whether the client consents to receive SMS or other messages for family planning follow-up"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://fhir.et/surveillance/StructureDefinition/FPFollowUpMsgConsent"
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
