import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DiscreteDifferentialGeometryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscreteDifferentialGeometryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse