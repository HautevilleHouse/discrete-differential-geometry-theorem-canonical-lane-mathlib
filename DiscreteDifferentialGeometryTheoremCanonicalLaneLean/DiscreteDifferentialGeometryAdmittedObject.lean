import DiscreteDifferentialGeometryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteDifferentialGeometrySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiscreteDifferentialGeometryAdmittedObject where
  space : DiscreteDifferentialGeometrySpace
  closedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def DiscreteDifferentialGeometryWitnessClosed (O : DiscreteDifferentialGeometryAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse