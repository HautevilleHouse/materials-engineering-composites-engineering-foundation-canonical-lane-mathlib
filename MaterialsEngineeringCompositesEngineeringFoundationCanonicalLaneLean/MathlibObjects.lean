import MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure MaterialsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MaterialsAdmittedObject where
  space : MaterialsSpace
  crystallographicStructure : Prop
  phaseStability : Prop
  elasticProperties : Prop
  conclusion : crystallographicStructure ∧ phaseStability ∧ elasticProperties

structure MaterialsEndgameState where
  object : MaterialsAdmittedObject

def MaterialsWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.crystallographicStructure ∧ O.phaseStability ∧ O.elasticProperties

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
