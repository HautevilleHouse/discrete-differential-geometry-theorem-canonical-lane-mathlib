import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteConnectionPackage where
  parallelTransport : Type u
  covariantDerivative : Type v
  holonomy : Type w
  connectionDiscrete : Prop
  parallelTransportDefined : Prop
  covariantDerivativeDefined : Prop
  holonomyDefined : Prop
  curvatureFromConnection : Prop

structure DiscreteConnectionEvidence (C : DiscreteConnectionPackage) where
  connectionDiscreteClosed : C.connectionDiscrete
  parallelTransportDefinedClosed : C.parallelTransportDefined
  covariantDerivativeDefinedClosed : C.covariantDerivativeDefined
  holonomyDefinedClosed : C.holonomyDefined
  curvatureFromConnectionClosed : C.curvatureFromConnection

def DiscreteConnectionClosed (C : DiscreteConnectionPackage) : Prop :=
  C.connectionDiscrete ∧ C.parallelTransportDefined ∧ C.covariantDerivativeDefined ∧
  C.holonomyDefined ∧ C.curvatureFromConnection

theorem discrete_connection_closed_from_evidence
    (C : DiscreteConnectionPackage) (E : DiscreteConnectionEvidence C) :
    DiscreteConnectionClosed C := by
  exact And.intro E.connectionDiscreteClosed
    (And.intro E.parallelTransportDefinedClosed
      (And.intro E.covariantDerivativeDefinedClosed
        (And.intro E.holonomyDefinedClosed E.curvatureFromConnectionClosed)))

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse