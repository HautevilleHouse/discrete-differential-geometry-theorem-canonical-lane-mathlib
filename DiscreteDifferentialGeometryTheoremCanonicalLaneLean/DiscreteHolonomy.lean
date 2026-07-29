import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteHolonomyPackage where
  discreteConnection : DiscreteConnectionPackage
  parallelTransport : Type u
  holonomyGroup : Type v
  holonomyInvariant : Prop
  invariantClosed : holonomyInvariant

structure DiscreteHolonomyEvidence (H : DiscreteHolonomyPackage) where
  invariantClosed : H.holonomyInvariant

def DiscreteHolonomyClosed (H : DiscreteHolonomyPackage) : Prop :=
  H.holonomyInvariant

theorem discrete_holonomy_closed_from_evidence
    (H : DiscreteHolonomyPackage) (E : DiscreteHolonomyEvidence H) :
    DiscreteHolonomyClosed H := by
  exact E.invariantClosed

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse