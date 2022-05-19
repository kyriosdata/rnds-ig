Extension: BRIntervaloDoses
Id: BRIntervaloDoses
Title: "Intervalo entre Doses"
Description: "Extensão para descrever uma unidade de tempo referenciada pelo UCUM."
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIntervaloDoses"
* ^status = #draft
* id ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    periodUnit 1..1 and
    period 1..1
* extension[periodUnit] from $BRUnidadeTempo (required)
* extension[periodUnit] ^binding.description = "Define a unidade de tempo segundo o UCUM"
* extension[periodUnit].id ..0
* extension[periodUnit].value[x] 1..
* extension[periodUnit].value[x] only code
* extension[periodUnit].value[x] from $BRUnidadeTempo (required)
* extension[periodUnit].value[x] ^binding.description = "Define a unidade de tempo segundo o UCUM"
* extension[periodUnit].value[x].id ..0
* extension[period].id ..0
* extension[period].value[x] 1..
* extension[period].value[x] only positiveInt
* extension[period].value[x] ^short = "Intervalo entre doses"
* value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage