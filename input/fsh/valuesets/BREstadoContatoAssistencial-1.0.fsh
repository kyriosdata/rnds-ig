Alias: $EncounterStatus = https://www.hl7.org/fhir/codesystem-encounter-status.html

ValueSet: BREstadoContatoAssistencial
Id: ValueSetBREstadoContatoAssistencial
Title: "Estado do Contato Assistencial"
Description: "Classifica o estado de um Contato Assistencial."
* ^meta.lastUpdated = "2020-04-07T21:01:37.692+00:00"
* ^language = #pt-BR
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-07T21:01:35.632661+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^immutable = false
* $EncounterStatus#finished "Contato Assistencial finalizado ou concluído"
* $EncounterStatus#entered-in-error "Contato Assistencial anulado por informação errada"