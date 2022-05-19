Profile: BRDispensacaoMedicamento
Parent: MedicationDispense
Id: BRDispensacaoMedicamento
Title: "Dispensação de Medicamento"
Description: "Dispensação do Medicamento prescrito."
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRDispensacaoMedicamento"
* ^version = "01.00"
* ^status = #draft
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    BRDataPrescricao named medicationRequestDate 1..1 and
    BRValorMedicamento named medicationMonetaryValue 0..1
* identifier ..0
* partOf ..0
* statusReason[x] ..0
* category 1..
* category from $BRModalidadeFinanceira_1 (required)
* category ^short = "Modalidade da Dispensação"
* category ^definition = "Representa em qual modalidade de estabelecimento ou financiamento a dispensação está sendo realizada: Unidade de saúde pública ou privada, com pagamento pelo SUS ou Drogaria comercial, com pagamento (gratuidade de copagamento) pelo Programa Farmácia Popular do Brasil."
* category ^binding.description = "Modalidade Financeira"
* medication[x] only Reference(BRMedicamento)
* medication[x] ^short = "Medicamento dispensado"
* medication[x] ^definition = "Identificação do medicamento dispensado."
* subject 1..
* subject ^short = "Identificação do indivíduo"
* subject ^definition = "Identificação do indivíduo dispensado do medicamento."
* subject.display ..0
* context ..0
* supportingInformation ..0
* performer 1..
* performer ^short = "Estabelecimento de Saúde e Profissional"
* performer ^definition = "Identificação do Estabelecimento de Saúde e Profissional dispensador."
* performer.id ..0
* performer.function ..0
* performer.actor.id ..0
* performer.actor.reference ..0
* performer.actor.type ..0
* performer.actor.identifier.id ..0
* performer.actor.identifier.use ..0
* performer.actor.identifier.type ..0
* performer.actor.identifier.period ..0
* performer.actor.identifier.assigner ..0
* location ..0
* authorizingPrescription ..1
* authorizingPrescription ^short = "Identificação do registro de prescrição eletrônica"
* authorizingPrescription ^definition = "Referência às informações do registro de prescrição do medicamento."
* authorizingPrescription.id ..0
* authorizingPrescription.type ..0
* type ..0
* quantity 1..
* quantity ^short = "Quantidade dispensada no atendimento"
* quantity ^definition = "Quantidade do produto dispensado (unidade)."
* quantity.id ..0
* daysSupply ^short = "Quantidade de dias de fornecimento"
* daysSupply ^definition = "Quantidade de dias de fornecimento de produto dispensado."
* whenPrepared ..0
* whenHandedOver 1..
* whenHandedOver ^short = "Data e hora da dispensação"
* whenHandedOver ^definition = "Indica a data e hora da dispensação do medicamento."
* destination ..0
* receiver ..1
* receiver ^short = "Quem retirou o medicamento"
* receiver ^definition = "Identificação de quem retirou o medicamento."
* note ..1
* note ^short = "Orientação de uso do produto"
* note ^definition = "Descreve orientações do uso do produto."
* dosageInstruction ..0
* substitution ..0
* detectedIssue ..0
* eventHistory ..0