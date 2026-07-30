import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure CrystallographyAdmissibleClass where
  object : CrystallographyAdmittedObject
  latticeParametersSatisfied : Prop
  symmetryGroupRecorded : Prop
  gateWitness : latticeParametersSatisfied ∨ symmetryGroupRecorded

def admittedClosure (A : CrystallographyAdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object ∧ (A.latticeParametersSatisfied ∨ A.symmetryGroupRecorded)

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse