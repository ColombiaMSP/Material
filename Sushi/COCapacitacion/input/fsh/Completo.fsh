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

Extension: EvidenceType
Id:  mcode-evidence-type
Title: "Evidence Type"
Description: "Categorization of the kind of evidence used as input to the clinical judgment."
* value[x] only CodeableConcept


Extension: Info
Id:  info-extra
Title: "Info-extra"
Description: "informacion adicional"
* valueString 0..1


ValueSet:   ConditionStatusTrendVS
Id: mcode-condition-status-trend-vs
Title: "Condition Status Trend Value Set"
Description:  "How patient's given disease, condition, or ability is trending."
* $SCT#260415000 "Not detected (qualifier)"
* $SCT#268910001 "Patient condition improved (finding)"
* $SCT#359746009 "Patient's condition stable (finding)"
* $SCT#271299001 "Patient's condition worsened (finding)"
* $SCT#709137006 "Patient condition undetermined (finding)"

ValueSet: CancerDiseaseStatusEvidenceTypeVS
Id: mcode-cancer-disease-status-evidence-type-vs
Title: "Cancer Disease Status Evidence Type Value Set"
Description:  "The type of evidence backing up the clinical determination of cancer progression."
* $SCT#363679005 "Imaging (procedure)"
* $SCT#252416005 "Histopathology test (procedure)"
* $SCT#711015009 "Assessment of symptom control (procedure)"
* $SCT#5880005   "Physical examination procedure (procedure)"
* $SCT#386344002 "Laboratory data interpretation (procedure)"


Instance: CancerDiseaseEjemplo
InstanceOf: CancerDiseaseStatus
Description: "Ejemplos Cancer."
* subject = Reference(PatientExampleUniversal) "Paciente Universal"
* status = #final
