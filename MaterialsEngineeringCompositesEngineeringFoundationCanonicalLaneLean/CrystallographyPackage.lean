import MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Crystallography Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  symmetryGroup : Type v
  bravaisLattice : Prop
  spaceGroup : Prop
  atomicPositions : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  symmetryGroupClosed : C.symmetryGroup
  bravaisLatticeClosed : C.bravaisLattice
  spaceGroupClosed : C.spaceGroup
  atomicPositionsClosed : C.atomicPositions

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.symmetryGroup ∧ C.bravaisLattice ∧ C.spaceGroup ∧ C.atomicPositions

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed (And.intro E.symmetryGroupClosed (And.intro E.bravaisLatticeClosed (And.intro E.spaceGroupClosed E.atomicPositionsClosed)))

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
