import HautevilleHouse.DiscreteDifferentialGeometryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteDifferentialGeometrySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  dim : Nat
  discreteAtlas : Type

structure DiscreteDifferentialGeometryAdmittedObject where
  space : DiscreteDifferentialGeometrySpace
  polyhedralComplex : Prop
  simplicialComplex : Prop
  discreteMetric : Prop
  discreteCurvature : Prop
  discreteConnection : Prop
  conclusion : Prop

structure DiscreteDifferentialGeometryEndgameState where
  object : DiscreteDifferentialGeometryAdmittedObject

def DiscreteDifferentialGeometryWitnessClosed (O : DiscreteDifferentialGeometryAdmittedObject) : Prop :=
  O.conclusion

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse
