import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackPropagationCriteria : Prop
  energyReleaseRate : Prop
  fractureModes : Prop
  parisLaw : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackPropagationCriteriaClosed : F.crackPropagationCriteria
  energyReleaseRateClosed : F.energyReleaseRate
  fractureModesClosed : F.fractureModes
  parisLawClosed : F.parisLaw

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧
  F.crackPropagationCriteria ∧ F.energyReleaseRate ∧
  F.fractureModes ∧ F.parisLaw

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackPropagationCriteriaClosed
        (And.intro E.energyReleaseRateClosed
          (And.intro E.fractureModesClosed E.parisLawClosed))))

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse