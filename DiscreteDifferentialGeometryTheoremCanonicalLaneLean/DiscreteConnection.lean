import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteConnectionPackage where
  simplicialComplex : SimplicialComplexPackage
  connection : Type u
  parallelTransport : connection -> (Nat -> vertices) -> Prop
  curvature : Prop
  connectionConsistent : Prop
  curvatureClosed : curvature
  connectionConsistentTerm : connectionConsistent

structure DiscreteConnectionEvidence (D : DiscreteConnectionPackage) where
  curvatureClosed : D.curvature
  connectionConsistentClosed : D.connectionConsistent

def DiscreteConnectionClosed (D : DiscreteConnectionPackage) : Prop :=
  D.curvature ∧ D.connectionConsistent

theorem discrete_connection_closed_from_evidence
    (D : DiscreteConnectionPackage) (E : DiscreteConnectionEvidence D) :
    DiscreteConnectionClosed D := by
  exact And.intro E.curvatureClosed E.connectionConsistentClosed

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse