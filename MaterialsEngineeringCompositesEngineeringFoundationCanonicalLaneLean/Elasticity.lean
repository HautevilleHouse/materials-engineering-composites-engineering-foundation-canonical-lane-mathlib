import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Prop
  strainTensor : Prop
  constitutiveRelation : Prop
  hookesLaw : Prop
  elasticModuli : Prop
  boundaryConditions : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  constitutiveRelationClosed : E.constitutiveRelation
  hookesLawClosed : E.hookesLaw
  elasticModuliClosed : E.elasticModuli
  boundaryConditionsClosed : E.boundaryConditions

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.constitutiveRelation ∧
  E.hookesLaw ∧ E.elasticModuli ∧ E.boundaryConditions

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressTensorClosed
    (And.intro Ev.strainTensorClosed
      (And.intro Ev.constitutiveRelationClosed
        (And.intro Ev.hookesLawClosed
          (And.intro Ev.elasticModuliClosed Ev.boundaryConditionsClosed))))

end MaterialsEngineeringCompositesEngineeringFoundationCanonicalLaneLean
end HautevilleHouse