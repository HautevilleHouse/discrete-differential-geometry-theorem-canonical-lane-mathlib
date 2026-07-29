import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteRiemannianCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  discreteMetric : Type v
  edgeCurvature : Type w
  vertexRicci : Type x
  scalarCurvature : Type y
  simplicialComplex : Prop
  metricDiscrete : Prop
  curvatureDefined : Prop
  ricciFromEdge : Prop
  scalarTrace : Prop

structure DiscreteRiemannianCurvatureEvidence (G : DiscreteRiemannianCurvaturePackage) where
  simplicialComplexClosed : G.simplicialComplex
  metricDiscreteClosed : G.metricDiscrete
  curvatureDefinedClosed : G.curvatureDefined
  ricciFromEdgeClosed : G.ricciFromEdge
  scalarTraceClosed : G.scalarTrace

def DiscreteRiemannianCurvatureClosed (G : DiscreteRiemannianCurvaturePackage) : Prop :=
  G.simplicialComplex ∧ G.metricDiscrete ∧ G.curvatureDefined ∧ G.ricciFromEdge ∧ G.scalarTrace

theorem discrete_riemannian_curvature_closed_from_evidence
    (G : DiscreteRiemannianCurvaturePackage) (E : DiscreteRiemannianCurvatureEvidence G) :
    DiscreteRiemannianCurvatureClosed G := by
  exact And.intro E.simplicialComplexClosed
    (And.intro E.metricDiscreteClosed
      (And.intro E.curvatureDefinedClosed
        (And.intro E.ricciFromEdgeClosed E.scalarTraceClosed)))

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse