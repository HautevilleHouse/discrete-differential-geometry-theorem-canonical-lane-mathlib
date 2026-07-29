import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteCurvaturePackage where
  simplicialComplex : SimplicialComplexPackage
  discreteConnection : DiscreteConnectionPackage
  curvatureForm : Type u
  curvatureInvariant : Prop
  gaussBonnetIntegral : Prop
  invariantClosed : curvatureInvariant
  gaussBonnetClosed : gaussBonnetIntegral

structure DiscreteCurvatureEvidence (C : DiscreteCurvaturePackage) where
  invariantClosed : C.curvatureInvariant
  gaussBonnetClosed : C.gaussBonnetIntegral

def DiscreteCurvatureClosed (C : DiscreteCurvaturePackage) : Prop :=
  C.curvatureInvariant ∧ C.gaussBonnetIntegral

theorem discrete_curvature_closed_from_evidence
    (C : DiscreteCurvaturePackage) (E : DiscreteCurvatureEvidence C) :
    DiscreteCurvatureClosed C := by
  exact And.intro E.invariantClosed E.gaussBonnetClosed

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse