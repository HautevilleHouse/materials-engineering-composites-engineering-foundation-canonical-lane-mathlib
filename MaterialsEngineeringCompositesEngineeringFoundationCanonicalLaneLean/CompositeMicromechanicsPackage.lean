import MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean.ElasticityFracturePackage

/-!
# Composite Micromechanics Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure CompositeMicromechanicsPackage {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : ElasticityFracturePackage C P} where
  fiberMatrixInterface : Type u
  ruleOfMixtures : Prop
  halpinTsaiEquations : Prop
  failureCriteria : Prop
  thermalExpansionMismatch : Prop

structure CompositeMicromechanicsEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : ElasticityFracturePackage C P} (M : CompositeMicromechanicsPackage C P E) where
  ruleOfMixturesClosed : M.ruleOfMixtures
  halpinTsaiEquationsClosed : M.halpinTsaiEquations
  failureCriteriaClosed : M.failureCriteria
  thermalExpansionMismatchClosed : M.thermalExpansionMismatch

def CompositeMicromechanicsClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : ElasticityFracturePackage C P} (M : CompositeMicromechanicsPackage C P E) : Prop :=
  M.ruleOfMixtures ∧ M.halpinTsaiEquations ∧ M.failureCriteria ∧ M.thermalExpansionMismatch

theorem composite_micromechanics_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : ElasticityFracturePackage C P} (M : CompositeMicromechanicsPackage C P E) (Ev : CompositeMicromechanicsEvidence M) :
    CompositeMicromechanicsClosed M := by
  exact And.intro Ev.ruleOfMixturesClosed (And.intro Ev.halpinTsaiEquationsClosed (And.intro Ev.failureCriteriaClosed Ev.thermalExpansionMismatchClosed))

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
