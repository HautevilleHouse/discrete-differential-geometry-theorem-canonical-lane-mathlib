import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteGeometrizationPackage {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G}
    {I : DiscreteIndexTheoremPackage G C}
    {H : DiscreteHolonomyPackage G C} where
  uniformizationTheorem : Prop
  geometrizationConjecture : Prop
  thurstonGeometrization : Prop
  uniformizationClosed : Prop
  geometrizationClosed : Prop
  thurstonClosed : Prop

structure DiscreteGeometrizationEvidence {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G}
    {I : DiscreteIndexTheoremPackage G C}
    {H : DiscreteHolonomyPackage G C}
    (D : DiscreteGeometrizationPackage G C I H) where
  uniformizationClosedClosed : D.uniformizationClosed
  geometrizationClosedClosed : D.geometrizationClosed
  thurstonClosedClosed : D.thurstonClosed

def DiscreteGeometrizationClosed {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G}
    {I : DiscreteIndexTheoremPackage G C}
    {H : DiscreteHolonomyPackage G C}
    (D : DiscreteGeometrizationPackage G C I H) : Prop :=
  D.uniformizationClosed ∧ D.geometrizationClosed ∧ D.thurstonClosed

theorem discrete_geometrization_closed_from_evidence
    {G : DiscreteCurvaturePackage} {C : DiscreteConnectionPackage G}
    {I : DiscreteIndexTheoremPackage G C}
    {H : DiscreteHolonomyPackage G C}
    (D : DiscreteGeometrizationPackage G C I H)
    (E : DiscreteGeometrizationEvidence D) :
    DiscreteGeometrizationClosed D := by
  exact And.intro E.uniformizationClosedClosed
    (And.intro E.geometrizationClosedClosed E.thurstonClosedClosed)

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse