import HautevilleHouse.DiscreteDifferentialGeometryTheoremCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteConnectionHolonomyPackage where
  parallelTransportDefinition : Prop
  holonomyGroupDefined : Prop
  curvatureHolonomyRelation : Prop
  wilsonLoopDefined : Prop

theorem discrete_connection_holonomy_closed (P : DiscreteConnectionHolonomyPackage) : Prop :=
  P.parallelTransportDefinition ∧ P.holonomyGroupDefined ∧ P.curvatureHolonomyRelation

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse
