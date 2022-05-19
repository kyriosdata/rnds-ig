Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-2
InstanceOf: BRDispensacaoMedicamento
Usage: #inline
* status = #completed
* medicationReference.reference = "urn:uuid:transient-2"
* subject.identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndividuo-1.0"
* subject.identifier.value = "162338254590005"
* performer[0].actor.identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BREstabelecimentoSaude-1.0"
* performer[=].actor.identifier.value = "162338254590005"
* performer[+].actor.identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRProfissional-1.0"
* performer[=].actor.identifier.value = "162338254590005"
* authorizingPrescription.identifier.system = "http://www.saude.gov.br/fhir/r4/NamingSystem/BRRNDS-10302910000182A"
* authorizingPrescription.identifier.value = "1234567890"
* category = $BRModalidadeFinanceira#02
* quantity.value = 3
* daysSupply.value = 10
* whenHandedOver = "2022-03-30"
* receiver.identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndividuo-1.0"
* receiver.identifier.value = "162338254590005"
* note.time = "2022-03-30"
* note.text = "Medicamento dispensado para tratamento da febre devido à gripe."
* extension[0].url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRValorMedicamento"
* extension[=].extension[0].url = "productValue"
* extension[=].extension[=].valueMoney.value = 10
* extension[=].extension[+].url = "productValueMinistryOfHealth"
* extension[=].extension[=].valueMoney.value = 10
* extension[+].url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRDataPrescricao"
* extension[=].valueDateTime = "2022-03-30"