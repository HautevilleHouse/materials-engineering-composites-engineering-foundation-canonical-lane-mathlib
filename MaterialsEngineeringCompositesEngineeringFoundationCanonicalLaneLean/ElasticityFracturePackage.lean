import MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean.PhaseDiagramPackage

/-!
# Elasticity and Fracture Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure ElasticityFracturePackage {C : CrystallographyPackage} {P : PhaseDiagramPackage C} where
  stressStrain : Type u
  youngModulus : Prop
  poissonRatio : Prop
  fractureToughness : Prop
  crackPropagation : Prop

structure ElasticityFractureEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityFracturePackage C P) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  fractureToughnessClosed : E.fractureToughness
  crackPropagationClosed : E.crackPropagation

def ElasticityFractureClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityFracturePackage C P) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.fractureToughness ∧ E.crackPropagation

theorem elasticity_fracture_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityFracturePackage C P) (Ev : ElasticityFractureEvidence E) :
    ElasticityFractureClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.fractureToughnessClosed Ev.crackPropagationClosed))

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
