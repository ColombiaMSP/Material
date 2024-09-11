Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct

Profile:  CancerDiseaseStatus
Parent:   Observation
Id:       mcode-cancer-disease-status
Title:    "Cancer Disease Status"
Description: "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding)."
* ^status = #draft
* extension contains EvidenceType named evidenceType 0..*
* extension[evidenceType].valueCodeableConcept from CancerDiseaseStatusEvidenceTypeVS (required)

* extension contains Info named informacion 0..1
* status and code and subject and effective[x] and valueCodeableConcept MS
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* interpretation 0..1
* subject 1..1
* basedOn only Reference(ServiceRequest or MedicationRequest)
* partOf only Reference(MedicationAdministration or MedicationStatement or Procedure)
* code = $LNC#88040-1
* subject only Reference(PacienteUniversal)

//* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* effective[x] only dateTime or Period
* value[x] only CodeableConcept
* value[x] from ConditionStatusTrendVS (required)
