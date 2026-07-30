import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  bravaisLatticeClassification : Prop
  reciprocalLattice : Prop
  millerIndicesDefined : Prop
  symmetryGroup : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeClassificationClosed : C.bravaisLatticeClassification
  reciprocalLatticeClosed : C.reciprocalLattice
  millerIndicesDefinedClosed : C.millerIndicesDefined
  symmetryGroupClosed : C.symmetryGroup

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLatticeClassification ∧
  C.reciprocalLattice ∧ C.millerIndicesDefined ∧ C.symmetryGroup

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.bravaisLatticeClassificationClosed
      (And.intro E.reciprocalLatticeClosed
        (And.intro E.millerIndicesDefinedClosed E.symmetryGroupClosed)))

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse