import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteIndexPackage where
  triangulation : Type u
  eulerCharacteristic : Type v
  indexSum : Type w
  indexTheorem : Prop
  combinatorialProof : Prop

structure DiscreteIndexEvidence (I : DiscreteIndexPackage) where
  indexTheoremClosed : I.indexTheorem
  combinatorialProofClosed : I.combinatorialProof

def DiscreteIndexClosed (I : DiscreteIndexPackage) : Prop :=
  I.indexTheorem ∧ I.combinatorialProof

theorem discrete_index_closed_from_evidence
    (I : DiscreteIndexPackage) (E : DiscreteIndexEvidence I) :
    DiscreteIndexClosed I := by
  exact And.intro E.indexTheoremClosed E.combinatorialProofClosed

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse