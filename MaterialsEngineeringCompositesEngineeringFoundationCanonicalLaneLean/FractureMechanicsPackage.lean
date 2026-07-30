import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure FractureEvidence where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackPropagation : Prop
  griffithCriterion : Prop
  fractureClosed : Prop

def FractureClosed (F : FractureEvidence) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackPropagation ∧ F.griffithCriterion

theorem fracture_closed_from_evidence (F : FractureEvidence) :
    FractureClosed F := by
  exact And.intro F.stressIntensityFactor (And.intro F.fractureToughness (And.intro F.crackPropagation F.griffithCriterion))

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
