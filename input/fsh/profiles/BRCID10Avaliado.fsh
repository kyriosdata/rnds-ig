Profile: BRCID10Avaliado
Parent: Condition
Id: d3d10a8f-46bc-4d9d-850f-b8ab5b778709
Title: "CID10 Avaliado"
Description: "Diagnóstico atribuído pelo profissional de saúde ao indivíduo no contato assistencial."
* ^meta.lastUpdated = "2020-04-07T20:48:32.826+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRCID10Avaliado-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-04-07T20:48:30.5415691+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Diagnóstico ou Problema"
* . ^definition = "Informações sobre a condição de saúde, lesão, deficiência ou qualquer outra questão que afete o bem-estar físico, mental ou social de um indivíduo identificadas em um contato assistencial. (adaptado do conceito de Problema/Diagnóstico do Clinical Knowledge Manager/OpenEHR)"
* identifier ..0
* clinicalStatus MS
* clinicalStatus from $BREstadoResolucaoDiagnosticoProblema-1.0 (required)
* clinicalStatus ^short = "Estado da Resolução"
* clinicalStatus ^definition = "Situação que o Diagnóstico/Problema se encontra no momento da informação.\r\nresolved: Resolvido\r\nactive: Resolvendo\r\nactive: Não resolvido\r\nnull: Indeterminado"
* clinicalStatus ^binding.description = "Estado da Resolução do Diagnóstico/Problema"
* clinicalStatus.coding 1..1 MS
* clinicalStatus.coding.system 1..
* clinicalStatus.coding.code 1..
* clinicalStatus.coding.display ..0
* clinicalStatus.coding.userSelected ..0
* clinicalStatus.text ..0
* verificationStatus ..0
* category ..0
* severity ..0
* code 1.. MS
* code from $BRCID10-1.0 (required)
* code ^short = "Diagnóstico ou Problema"
* code ^definition = "Diagnóstico ou problema avaliado no indivíduo durante o contato assistencial."
* code ^binding.description = "CID-10"
* code.coding 1..1
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ..0
* bodySite ..0
* subject only Reference(BRIndividuo)
* subject MS
* subject ^short = "Indivíduo"
* subject ^definition = "Indica o indivíduo ao qual o CID-10 se refere."
* subject.extension ^slicing.discriminator.type = #value
* subject.extension ^slicing.discriminator.path = "url"
* subject.extension ^slicing.rules = #open
* subject.extension ^min = 0
* subject.extension contains
    BRIndividuoNaoIdentificado named unidentifiedPatient 0..1
* subject.extension[unidentifiedPatient] only BRIndividuoNaoIdentificado
* subject.extension[unidentifiedPatient] ^sliceName = "unidentifiedPatient"
* subject.extension[unidentifiedPatient] ^short = "Dados do Indivíduo Não Identificado"
* subject.extension[unidentifiedPatient] ^min = 0
* subject.extension[unidentifiedPatient] ^mustSupport = true
* subject.extension[unidentifiedPatient].extension ^slicing.discriminator.type = #value
* subject.extension[unidentifiedPatient].extension ^slicing.discriminator.path = "url"
* subject.extension[unidentifiedPatient].extension ^slicing.rules = #open
* subject.extension[unidentifiedPatient].extension[gender] ^sliceName = "gender"
* subject.extension[unidentifiedPatient].extension[gender] ^mustSupport = true
* subject.extension[unidentifiedPatient].extension[birthYear] ^sliceName = "birthYear"
* subject.extension[unidentifiedPatient].extension[birthYear] ^mustSupport = true
* subject.extension[unidentifiedPatient].extension[reason] ^sliceName = "reason"
* subject.extension[unidentifiedPatient].extension[reason] ^mustSupport = true
* subject.reference ..0
* subject.type ..0
* subject.type = "Patient" (exactly)
* subject.identifier 1..
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.system 1..
* subject.identifier.value 1..
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* encounter ..0
* onset[x] ..0 N
* onset[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* onset[x] ^extension[=].valueCode = #4.0.0
* abatement[x] ..0 N
* abatement[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* abatement[x] ^extension[=].valueCode = #4.0.0
* recordedDate ..0 N
* recordedDate ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* recordedDate ^extension[=].valueCode = #4.0.0
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0
* note ..1 MS
* note.author[x] ..0
* note.time ..0
* note.text MS
* note.text ^short = "Nota"
* note.text ^definition = "Informações complementares textuais acerca do CID-10 avaliado."