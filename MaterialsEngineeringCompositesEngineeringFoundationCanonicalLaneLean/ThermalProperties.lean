import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure ThermalPropertiesPackage where
  thermalConductivity : Type u
  specificHeat : Type v
  thermalExpansion : Type w
  heatEquation : Prop
  fourierLaw : Prop
  heatEquationClosed : Prop
  fourierLawClosed : Prop

structure ThermalPropertiesEvidence (T : ThermalPropertiesPackage) where
  heatEquationClosedTerm : T.heatEquationClosed
  fourierLawClosedTerm : T.fourierLawClosed

def ThermalPropertiesClosed (T : ThermalPropertiesPackage) : Prop :=
  T.heatEquationClosed ∧ T.fourierLawClosed

theorem thermal_properties_closed_from_evidence (T : ThermalPropertiesPackage) (E : ThermalPropertiesEvidence T) : ThermalPropertiesClosed T := by
  exact And.intro E.heatEquationClosedTerm E.fourierLawClosedTerm

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse