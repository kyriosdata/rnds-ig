Profile: BRMedicamento
Parent: Medication
Id: af21adb7-867b-4862-8e26-814b2e805f37
Title: "Medicamento"
Description: "Drogas dirigidas para uso humano."
* ^meta.lastUpdated = "2020-03-13T20:29:58.887+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRMedicamento-1.0"
* ^version = "1.0"
* ^status = #draft
* ^date = "2020-03-13T20:30:23.0065133+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Medicamento"
* . ^definition = "Identificação do medicamento para fins de prescrição, dispensação e/ou administração."
* . ^alias[0] = "Droga"
* . ^alias[+] = "Fármaco"
* code 1.. MS
* code from $BRMedicamento-1.0 (required)
* code ^short = "Medicamento"
* code ^binding.description = "Medicamento"
* code.coding 1..1
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ..0
* status 1.. MS
* status ^short = "Estado do Medicamento"
* status ^definition = "active: medicamento em uso\r\ninactive: medicamento não utilizado ou não mais em uso.\r\nentered-in-error: cancelado por informação incorreta."
* manufacturer only Reference(BRPessoaJuridicaProfissionalLiberal)
* manufacturer MS
* manufacturer ^short = "Fabricante"
* manufacturer ^definition = "Fabricante do medicamento."
* manufacturer.reference 1..
* manufacturer.type ..0
* manufacturer.identifier ..0
* manufacturer.display ..0
* batch MS
* batch ^short = "Informações do Rastreio"
* batch ^definition = "Informações de rastreio do medicamento."
* batch.lotNumber MS
* batch.lotNumber ^short = "Lote"
* batch.lotNumber ^definition = "Código do lote do medicamento."
* batch.expirationDate MS
* batch.expirationDate ^short = "Validade do Medicamento"
* batch.expirationDate ^definition = "Data de validade do medicamento."