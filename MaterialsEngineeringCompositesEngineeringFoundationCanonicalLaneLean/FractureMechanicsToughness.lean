import HautevilleHouse.MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean.CompositeElasticityModuli

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure FractureToughnessPackage where
  criticalStressIntensityFactor : Float
  fractureEnergyReleaseRate : Float
  processZoneSize : Float
  toughnessEnhanced : Prop

structure FractureToughnessEvidence (F : FractureToughnessPackage) where
  criticalStressIntensityFactorPositive : F.criticalStressIntensityFactor > 0.0
  fractureEnergyReleaseRatePositive : F.fractureEnergyReleaseRate > 0.0
  toughnessEnhancedClosed : F.toughnessEnhanced

def FractureToughnessClosed (F : FractureToughnessPackage) : Prop :=
  F.criticalStressIntensityFactor > 0.0 ∧ F.fractureEnergyReleaseRate > 0.0 ∧ F.toughnessEnhanced

theorem fracture_toughness_closed_from_evidence (F : FractureToughnessPackage) (E : FractureToughnessEvidence F) : FractureToughnessClosed F := by
  exact And.intro E.criticalStressIntensityFactorPositive (And.intro E.fractureEnergyReleaseRatePositive E.toughnessEnhancedClosed)

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse