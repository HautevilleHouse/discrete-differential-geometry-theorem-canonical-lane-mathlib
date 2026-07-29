import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure SimplicialComplexPackage where
  vertices : Type u
  simplices : Type v
  faceMap : simplices -> List vertices
  dimension : Nat
  simplicialTopology : topologicalSpace? (using quotient)
  simplicialTopology : Prop
  simplicialTopologyTerm : simplicialTopology

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  simplicialTopologyClosed : S.simplicialTopology

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.simplicialTopology

theorem simplicial_complex_closed_from_evidence
    (S : SimplicialComplexPackage) (E : SimplicialComplexEvidence S) :
    SimplicialComplexClosed S := by
  exact E.simplicialTopologyClosed

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse