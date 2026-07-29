import DiscreteDifferentialGeometryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscreteDifferentialGeometryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse