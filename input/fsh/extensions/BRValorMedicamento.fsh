Extension: BRValorMedicamento
Id: BRValorMedicamento
Title: "Valor Monetário de Medicamento"
Description: "Extensão destinada a caracterizar o valor monetário pago em medicamentos dispensados pelo Ministério da Saúde do Brasil."
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRValorMedicamento"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* id ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    productValue 0..1 and
    productValueMinistryOfHealth 0..1
* extension[productValue] ^short = "Valor em reais da apresentação dispensada."
* extension[productValue].id ..0
* extension[productValue].value[x] only Money
* extension[productValue].value[x] ^short = "Valor em reais da apresentação dispensada."
* extension[productValue].value[x].currency = #BRL (exactly)
* extension[productValueMinistryOfHealth] ^short = "Valor pago Ministério da Saúde"
* extension[productValueMinistryOfHealth].id ..0
* extension[productValueMinistryOfHealth].value[x] only Money
* extension[productValueMinistryOfHealth].value[x] ^short = "Valor pago Ministério da Saúde"
* extension[productValueMinistryOfHealth].value[x].value ^short = "Valor em reais da apresentação dispensada."
* extension[productValueMinistryOfHealth].value[x].currency = #BRL (exactly)
* value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage