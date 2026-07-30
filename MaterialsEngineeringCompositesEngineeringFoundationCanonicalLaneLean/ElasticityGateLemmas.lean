import HautevilleHouse.MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean.PhaseDiagramBridge

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

def gateClosed (A : CrystallographyAdmissibleClass) : Prop :=
  A.latticeParametersSatisfied ∨ A.symmetryGroupRecorded

theorem gate_from_admissible_class (A : CrystallographyAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse