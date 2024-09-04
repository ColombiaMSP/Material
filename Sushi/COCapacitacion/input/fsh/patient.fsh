Profile: PacienteUniversal
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS
* name ^short = "Nombre del paciente"
* name ^definition = "Nombre con el que se lo conoce al paciente"
* birthDia 1..1 MS

Instance: PatientExampleUniversal
InstanceOf: PacienteUniversal
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"
* birthDate = "2010-01-01"




