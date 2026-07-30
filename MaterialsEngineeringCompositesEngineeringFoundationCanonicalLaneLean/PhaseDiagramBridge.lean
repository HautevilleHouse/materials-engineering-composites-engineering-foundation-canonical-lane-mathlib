import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean.CrystallographyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

def bridgeClosed (A : CrystallographyAdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object

theorem bridge_from_admissible_class (A : CrystallographyAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse