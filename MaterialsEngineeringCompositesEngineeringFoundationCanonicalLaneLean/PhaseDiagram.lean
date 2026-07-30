import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  componentIdentification : Prop
  temperaturePressureRange : Prop
  phaseBoundaries : Prop
  gibbsPhaseRule : Prop
  leverRule : Prop
  phaseTransitions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentIdentificationClosed : P.componentIdentification
  temperaturePressureRangeClosed : P.temperaturePressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsPhaseRuleClosed : P.gibbsPhaseRule
  leverRuleClosed : P.leverRule
  phaseTransitionsClosed : P.phaseTransitions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.componentIdentification ∧ P.temperaturePressureRange ∧
  P.phaseBoundaries ∧ P.gibbsPhaseRule ∧ P.leverRule ∧ P.phaseTransitions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.componentIdentificationClosed
    (And.intro E.temperaturePressureRangeClosed
      (And.intro E.phaseBoundariesClosed
        (And.intro E.gibbsPhaseRuleClosed
          (And.intro E.leverRuleClosed E.phaseTransitionsClosed))))

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse