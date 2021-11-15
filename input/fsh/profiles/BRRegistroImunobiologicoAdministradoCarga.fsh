Profile: BRRegistroImunobiologicoAdministradoCarga
Parent: Composition
Id: BRRegistroImunobiologicoAdministradoCarga
Title: "Registro de Imunobiológico Administrado - Carga"
Description: "Documento que representa o registro da administração de imunobiológicos, provenientes da carga do SIPNI."
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRRegistroImunobiologicoAdministradoCarga-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-12-14"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Para CARGA de registro do SIPNI."
* . MS
* . ^short = "Registro de Imunobiológico Administrado - Carga"
* . ^definition = "Documento que representa o registro da administração de imunobiológicos, provenientes da carga do SIPNI."
* . ^comment = "Para CARGA de registro do SIPNI."
* . ^alias[0] = "Carga SIPNI"
* . ^alias[+] = "vacinação"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains BROperadorDigitador named operadorDigitador 0..1
* identifier ..0
* status MS
* status from $BREstadoDocumento-1.0 (required)
* status ^short = "final | entered-in-error"
* status ^binding.description = "Estado do Documento"
* type MS
* type from $BRTipoDocumento-1.0 (required)
* type ^short = "Tipo de documento"
* type ^definition = "Especifica o tipo de documento que está sendo enviado na composição."
* type ^binding.description = "Tipo de documento"
* type.coding 1.. MS
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* category 1..1 MS
* category from $BRModalidadeAssistencial-1.0 (required)
* category ^short = "BRModalidadeAssistencial"
* category ^definition = "Classifica os contatos assistenciais de acordo com as especificidades do modo, local e duração do atendimento."
* category ^binding.description = "Modalidade Assistencial"
* category.coding 1..1 MS
* category.coding.system 1..
* category.coding.code 1..
* category.coding.display ..0
* category.coding.userSelected ..0
* category.text ..0
* subject 1.. MS
* subject only Reference(BRIndividuo)
* subject ^short = "Sujeito da composição"
* subject ^definition = "Quem ou o quê a composição se refere. Pode ser um indivíduo, dispositivo, grupos (de indivíduos, dispositivos etc.)."
* subject ^comment = "Nesta versão, a RNDS suportará somente indivíduos."
* subject.reference ..0
* subject.type ..0
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.system 1..
* subject.identifier.value 1..
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* encounter ..0
* date MS
* date ^short = "Data/hora de geração do documento"
* date ^definition = "Data e hora em que o documento foi gerado."
* author only Reference(BRPessoaJuridicaProfissionalLiberal or BREstabelecimentoSaude)
* author MS
* author ^short = "Resposnável pelo contato assitencial"
* author ^definition = "Identifica a Pessoa Jurídica ou Pessoa Física (profissional liberal) responsável por gerar o documento."
* author ^comment = "Nesta versão da RNDS somente serão suportadas edições provenientes de Estabelecimentos de Saúde."
* author.reference ..0
* author.type ..0
* author.identifier 1..
* author.identifier.use ..0
* author.identifier.type ..0
* author.identifier.system 1..
* author.identifier.value 1..
* author.identifier.period ..0
* author.identifier.assigner ..0
* author.display ..0
* title = "Registro de Imunobiologico Administrado - Carga" (exactly)
* title MS
* title ^short = "Título do documento"
* title ^definition = "Título do documento em linguagem humana."
* confidentiality ..0
* attester ..0
* custodian ..0
* relatesTo ..1
* relatesTo ^short = "Relação a outros documentos"
* relatesTo ^definition = "Indica uma relação entre esse documento e outro documento (ou composição) existente."
* event ..0
* section 1.. MS
* section ^short = "Seções do documento"
* section ^definition = "Referencia todas as seções (profiles/resources) contidos neste documento."
* section.title ..0
* section.code ..0
* section.author ..0
* section.focus ..0
* section.text ..0
* section.mode ..0
* section.orderedBy ..0
* section.entry 1.. MS
* section.entry only Reference(BRImunobiologicoAdministradoCarga)
* section.entry.reference 1.. MS
* section.entry.type ..0
* section.entry.identifier ..0
* section.entry.display ..0
* section.emptyReason ..0
* section.section ..0