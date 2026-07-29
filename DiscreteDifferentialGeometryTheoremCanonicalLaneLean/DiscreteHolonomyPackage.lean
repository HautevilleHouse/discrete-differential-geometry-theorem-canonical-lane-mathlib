import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteHolonomyPackage {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G} where
  holonomyGroup : Type u
  holonomyRepresentation : Type v
  ambisonomyGroup : Type w
  holonomyClosed : Prop
  representationClosed : Prop
  ambisonomyClosed : Prop

structure DiscreteHolonomyEvidence {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G}
    (H : DiscreteHolonomyPackage G C) where
  holonomyClosedClosed : H.holonomyClosed
  representationClosedClosed : H.representationClosed
  ambisonomyClosedClosed : H.ambisonomyClosed

def DiscreteHolonomyClosed {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G}
    (H : DiscreteHolonomyPackage G C) : Prop :=
  H.holonomyClosed ∧ H.representationClosed ∧ H.ambisonomyClosed

theorem discrete_holonomy_closed_from_evidence
    {G : DiscreteCurvaturePackage} {C : DiscreteConnectionPackage G}
    (H : DiscreteHolonomyPackage G C)
    (E : DiscreteHolonomyEvidence H) : DiscreteHolonomyClosed H := by
  exact And.intro E.holonomyClosedClosed
    (And.intro E.representationClosedClosed E.ambisonomyClosedClosed)

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse