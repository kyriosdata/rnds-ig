Profile: BRDiagnosticoLaboratorioClinico
Parent: Observation
Id: 10adbc3a-b1e9-4620-8c02-6f530e2caae0
Title: "Diagnóstico em Laboratório Clínico"
Description: "Exame ou teste realizado em laboratório com finalidade diagnóstica ou investigativa."
* ^meta.lastUpdated = "2020-03-30T18:35:39.659+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRDiagnosticoLaboratorioClinico-1.0"
* ^version = "1.0"
* ^date = "2020-03-30T18:35:35.8568283+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^definition = "Exame ou teste realizado em laboratório com finalidade diagnóstica ou investigativa."
* identifier ..0
* basedOn ..0
* partOf ..0
* status N
* status from $BREstadoObservacao-1.0 (required)
* status ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* status ^extension[=].valueCode = #4.0.0
* status ^short = "Estado da Observação"
* status ^definition = "O estado do valor do resultado."
* status ^binding.description = "Estado da Observação"
* category 1..1 MS
* category from $BRCategoriaExame-1.0 (required)
* category ^short = "Categoria do Exame"
* category ^definition = "Categoriza o exame ou teste utilizando os subgrupos do grupo 02 - Procedimentos com finalidade diagnóstica da Tabela SUS."
* category ^binding.description = "Categoria do Exame"
* category.coding 1..1
* category.coding.system 1..
* category.coding.code 1..
* category.coding.display ..0
* category.coding.userSelected ..0
* category.text ..0
* code MS
* code from $BRNomeExame-1.0 (required)
* code ^short = "Nome do Exame"
* code ^definition = "Classifica o exame laboratorial realizado."
* code ^binding.description = "Nome do Exame"
* code.coding 1..1
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ..0
* subject 1.. MS
* subject only Reference(BRIndividuo)
* subject.reference ..0
* subject.type ..0
* subject.type = "Patient" (exactly)
* subject.identifier 1..
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.system 1..
* subject.identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndividuo-1.0" (exactly)
* subject.identifier.value 1..
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* focus ..0
* encounter ..0
* effective[x] ..0 N
* effective[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* effective[x] ^extension[=].valueCode = #4.0.0
* issued 1.. N
* issued ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* issued ^extension[=].valueCode = #4.0.0
* issued ^short = "Data/Hora do Resultado"
* issued ^definition = "Data ou data e hora que o resultado foi liberado."
* performer 1..1 MS
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "identifier.system"
* performer ^slicing.rules = #open
* performer ^short = "Responsável pelo Resultado do Exame"
* performer ^definition = "Profissional e/ou Estabelecimento de Saúde responsável pelo resultado do exame."
* performer contains
    estabelecimentoSaude 0..1 MS and
    pessoaJuridicaProfissionalLiberal 0..1 MS and
    lotacaoProfissional 0..1 MS
* performer[estabelecimentoSaude] only Reference(BREstabelecimentoSaude)
* performer[estabelecimentoSaude].reference ..0
* performer[estabelecimentoSaude].type ..0
* performer[estabelecimentoSaude].identifier 1..
* performer[estabelecimentoSaude].identifier.use ..0
* performer[estabelecimentoSaude].identifier.type ..0
* performer[estabelecimentoSaude].identifier.system 1..
* performer[estabelecimentoSaude].identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BREstabelecimentoSaude-1.0" (exactly)
* performer[estabelecimentoSaude].identifier.value 1..
* performer[estabelecimentoSaude].identifier.period ..0
* performer[estabelecimentoSaude].identifier.assigner ..0
* performer[estabelecimentoSaude].display ..0
* performer[pessoaJuridicaProfissionalLiberal] only Reference(BRPessoaJuridicaProfissionalLiberal)
* performer[pessoaJuridicaProfissionalLiberal].reference ..0
* performer[pessoaJuridicaProfissionalLiberal].type ..0
* performer[pessoaJuridicaProfissionalLiberal].identifier 1..
* performer[pessoaJuridicaProfissionalLiberal].identifier.use ..0
* performer[pessoaJuridicaProfissionalLiberal].identifier.type ..0
* performer[pessoaJuridicaProfissionalLiberal].identifier.system 1..
* performer[pessoaJuridicaProfissionalLiberal].identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRPessoaJuridicaProfissionalLiberal-1.0" (exactly)
* performer[pessoaJuridicaProfissionalLiberal].identifier.value 1..
* performer[pessoaJuridicaProfissionalLiberal].identifier.period ..0
* performer[pessoaJuridicaProfissionalLiberal].identifier.assigner ..0
* performer[pessoaJuridicaProfissionalLiberal].display ..0
* performer[lotacaoProfissional] only Reference(BRLotacaoProfissional)
* performer[lotacaoProfissional].reference ..0
* performer[lotacaoProfissional].type ..0
* performer[lotacaoProfissional].identifier 1..
* performer[lotacaoProfissional].identifier.use ..0
* performer[lotacaoProfissional].identifier.type ..0
* performer[lotacaoProfissional].identifier.system 1..
* performer[lotacaoProfissional].identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRLotacaoProfissional-1.0" (exactly)
* performer[lotacaoProfissional].identifier.value 1..
* performer[lotacaoProfissional].identifier.period ..0
* performer[lotacaoProfissional].identifier.assigner ..0
* performer[lotacaoProfissional].display ..0
* value[x] 1.. MS
* value[x] only Quantity or CodeableConcept
* value[x] from $BRResultadoQualitativoExame-1.0 (required)
* value[x] ^short = "Valor do Resultado"
* value[x] ^definition = "Pode ser um valor quantitativo, utilizando o elemento Quantity, ou um valor qualitativo, utilizando Codeable Concept.E usar"
* value[x] ^binding.description = "Resultado Qualitativo do Exame"
* dataAbsentReason ..0
* interpretation ..1 MS
* interpretation from $BRResultadoQualitativoExame-1.0 (required)
* interpretation ^short = "Interpretação Qualitativa"
* interpretation ^definition = "Interpretação qualitativa de um resultado quantitativo."
* interpretation ^binding.description = "Interperetação Qualitativa do Exame"
* interpretation.coding 1..1
* interpretation.coding.system 1..
* interpretation.coding.code 1..
* interpretation.coding.display ..0
* interpretation.coding.userSelected ..0
* interpretation.text ..0
* note MS
* note ^short = "Notas"
* note ^definition = "Comentários sobre os resultados dos exames."
* note.author[x] ..0
* note.time ..0
* bodySite ..0
* method 1.. MS
* method ^short = "Método"
* method ^definition = "Método empregado no exame realizado."
* method.coding ..0
* method.text MS
* specimen 1.. MS
* specimen only Reference(BRAmostraBiologica)
* specimen ^short = "Amostra"
* specimen ^definition = "A amostra que foi usada quando esta observação foi realizada."
* specimen.reference 1..
* specimen.type ..0
* specimen.identifier ..0
* specimen.display ..0
* device ..0
* referenceRange 1..1 MS
* referenceRange ^short = "Valor de Referência"
* referenceRange ^definition = "Valores de referência para apoiar na interpretação do resultado."
* referenceRange.low ..0
* referenceRange.high ..0
* referenceRange.type ..0
* referenceRange.appliesTo ..0
* referenceRange.age ..0
* referenceRange.text 1.. N
* referenceRange.text ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* referenceRange.text ^extension[=].valueCode = #4.0.0
* hasMember ..0
* derivedFrom ..0
* component ..0