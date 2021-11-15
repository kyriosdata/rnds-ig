Alias: $v2-0203 = http://hl7.org/fhir/ValueSet/identifier-type
Alias: $BRTipoIdentificador = http://www.saude.gov.br/fhir/r4/CodeSystem/BRTipoIdentificador

ValueSet: BRTipoDocumentoIndividuo
Id: BRTipoDocumentoIndividuo-1.0
Title: "Tipo de Documento do Indivíduo"
Description: "Classifica o tipo de documento que está sendo utilizado para identificar o indivíduo."
* ^meta.lastUpdated = "2020-03-12T13:27:33.397+00:00"
* ^language = #pt-BR
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-03-12T13:27:32.6850777+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^immutable = false

* $v2-0203#HC "Número do Cartão Nacional de Saúde (CNS)"
* $v2-0203#RRI "Número do Registro Geral (RG)"
* $v2-0203#MCT "Número da Certidão de Casamento"
* $v2-0203#PPN "Número do Passaporte"
* $v2-0203#RN "Número de inscrição no Conselho Regional de Enfermagem (COREn)"
* $v2-0203#SS "Número de Identificação Social (NIS/PIS/PASEP)"
* $v2-0203#DL "Número da Carteira Nacional de Habilitação (CNH)"
* $v2-0203#BCT "Número do Documento de Nascido Vivo (DN/DNV)"
* $v2-0203#BR "Número da Certidão de Nascimento"
* $v2-0203#IND "Número da Certidão de Índio"
* $v2-0203#MI "Número do Certificado de Reservista"
* $v2-0203#MD "Número de inscrição no Conselho Regional de Medicina (CRM)"
* $v2-0203#DDS "Número de inscrição no Conselho Regional Odontologia (CRO)"
* $v2-0203#TAX "Número de inscrição no Cadastro de Pessoas Físicas (CPF)"

* include codes from system http://www.saude.gov.br/fhir/r4/CodeSystem/BRTipoIdentificador|*
* exclude $BRTipoIdentificador#AUTH