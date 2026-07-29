import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteGeometrizationPackage where
  uniformizationDiscrete : Prop
  discreteRicciFlow : Prop
  tetrahedralDecomposition : Prop
  combinatorialGeometrization : Prop
  metricCanonical : Prop

structure DiscreteGeometrizationEvidence (G : DiscreteGeometrizationPackage) where
  uniformizationDiscreteClosed : G.uniformizationDiscrete
  discreteRicciFlowClosed : G.discreteRicciFlow
  tetrahedralDecompositionClosed : G.tetrahedralDecomposition
  combinatorialGeometrizationClosed : G.combinatorialGeometrization
  metricCanonicalClosed : G.metricCanonical

def DiscreteGeometrizationClosed (G : DiscreteGeometrizationPackage) : Prop :=
  G.uniformizationDiscrete ∧ G.discreteRicciFlow ∧ G.tetrahedralDecomposition ∧
  G.combinatorialGeometrization ∧ G.metricCanonical

theorem discrete_geometrization_closed_from_evidence
    (G : DiscreteGeometrizationPackage) (E : DiscreteGeometrizationEvidence G) :
    DiscreteGeometrizationClosed G := by
  exact And.intro E.uniformizationDiscreteClosed
    (And.intro E.discreteRicciFlowClosed
      (And.intro E.tetrahedralDecompositionClosed
        (And.intro E.combinatorialGeometrizationClosed E.metricCanonicalClosed)))

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse