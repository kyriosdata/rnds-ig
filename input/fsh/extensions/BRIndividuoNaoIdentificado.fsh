Extension: BRIndividuoNaoIdentificado
Id: BRIndividuoNaoIdentificado
Title: "Informações Complementares de Indivíduos Não Identificados"
Description: "Informações complementares necessárias ao Contato Assistencial na hipótese do indivíduo não poder ser identificado."
* ^meta.lastUpdated = "2020-03-11T03:42:05.139+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndividuoNaoIdentificado-1.0"
* ^version = "1.0"
* ^experimental = false
* ^date = "2020-03-11T03:42:04.5654018+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Deve ser utilizado sempre nas hipóteses legais previstas na Port. nº 84/SAS/MS/1997 e na Port. nº02/SAS/SGEP/MS/2012, situações onde é impossível identificar o indivíduo durante o Contato Assistencial."
* ^context[0].type = #element
* ^context[=].expression = "Composition.subject"
* ^context[+].type = #element
* ^context[=].expression = "Encounter.subject"
* ^context[+].type = #element
* ^context[=].expression = "Condition.subject"
* ^context[+].type = #element
* ^context[=].expression = "Procedure.subject"
* ^context[+].type = #element
* ^context[=].expression = "Immunization.patient"
* . ..1
* . ^short = "Indivíduo não identificado"
* . ^definition = "Informações demográficas básicas e justificativa dos indivíduos que não podem ser identificados por razões clínicas ou sociais, conforme legislação brasileira, com finalidade estatística."
* . ^isModifier = false
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    gender 1..1 and
    birthYear 1..1 and
    reason 1..1
//* extension[gender] from $BRSexo-1.0 (required)
* extension[gender] ^short = "Sexo"
* extension[gender] ^definition = "Sexo biológico obtido por meio de exame clínico ou de outros métodos diagnósticos referente ao indivíduo da hipótese de impossibilidade de identificação."
* extension[gender].value[x] 1..
* extension[gender].value[x] only code
* extension[birthYear] ^short = "Ano de nascimento estimado"
* extension[birthYear] ^definition = "Estimativa do ano de nascimento por meio de observação direta da idade do indivíduo na hipótese de impossibilidade de identificação.."
* extension[birthYear].value[x] 1..
* extension[birthYear].value[x] only date
//* extension[reason] from $BRJustificativaIndividuoNaoIdentificado-1.0 (required)
* extension[reason] ^short = "Justificativa da impossibilidade de identificação do indivíduo"
* extension[reason] ^definition = "Razão pela qual não foi possível obter os dados de identificação do indivíduo no contato assistencial."
* extension[reason].value[x] 1..
* extension[reason].value[x] only CodeableConcept
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndividuoNaoIdentificado-1.0" (exactly)