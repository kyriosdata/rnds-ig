Profile: BRRegistroPrescricaoMedicamento
Parent: Composition
Id: BRRegistroPrescricaoMedicamento
Title: "Registro de Prescrição de Medicamento"
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRRegistroPrescricaoMedicamento"
* ^version = "01.00"
* ^status = #draft
* identifier ..0
* type.coding 1..1
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* category ..0
* subject 1..
* subject only Reference($BRIndividuo-1.0)
* subject.reference ..0
* subject.type ..0
* subject.display ..0
* encounter ..0
* author ..1
* author.reference ..0
* author.type ..0
* author.identifier 1..
* author.display ..0
* confidentiality ..0
* attester ..0
* custodian ..0
* event ..0
* section 1..1
* section.title ..0
* section.code ..0
* section.author ..0
* section.focus ..0
* section.text ..0
* section.mode ..0
* section.orderedBy ..0
* section.entry 1..
* section.entry.reference 1..
* section.entry.type ..0
* section.entry.identifier ..0
* section.entry.display ..0
* section.emptyReason ..0
* section.section ..0