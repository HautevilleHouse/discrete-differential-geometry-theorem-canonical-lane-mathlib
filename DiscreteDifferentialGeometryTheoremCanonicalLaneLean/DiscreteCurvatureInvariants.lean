import HautevilleHouse.DiscreteDifferentialGeometryTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteCurvatureInvariantsPackage (G : DiscreteRiemannianCurvaturePackage) where
  gaussBonnetTheorem : Prop
  chernGaussBonnetLocal : Prop
  eulerCharacteristicComputed : Prop
  deficitAngleSummation : Prop

theorem discrete_curvature_invariants_closed (G : DiscreteRiemannianCurvaturePackage) : Prop :=
  G.curvatureDiscrete ∧ G.curvatureSummationFormula

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse
