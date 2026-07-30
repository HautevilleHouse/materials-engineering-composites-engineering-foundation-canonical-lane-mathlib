import MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean.CrystallographyPackage

/-!
# Phase Diagram Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystallographyPackage} where
  temperaturePressure : Type u
  phases : Type v
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  leverRule : Prop

structure PhaseDiagramEvidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed {C : CrystallographyPackage} (P : PhaseDiagramPackage C) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.leverRule

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyClosed E.leverRuleClosed)

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
