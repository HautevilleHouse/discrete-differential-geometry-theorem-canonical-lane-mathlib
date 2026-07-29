import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

def ConstrainedDiscreteDifferentialGeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discrete_differential_geometry_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteDifferentialGeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse