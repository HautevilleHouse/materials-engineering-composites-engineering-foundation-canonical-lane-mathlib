import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure AdmissibleMaterialEvidence where
  crystallographicGroup : String
  phaseComposition : Prop
  elasticModuli : Prop
  fractureToughness : Prop
  processingMethod : String

structure AdmissibleClass where
  object : AdmissibleMaterialEvidence
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MaterialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def MaterialWitnessClosed (O : AdmissibleMaterialEvidence) : Prop :=
  O.phaseComposition ∧ O.elasticModuli ∧ O.fractureToughness

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
