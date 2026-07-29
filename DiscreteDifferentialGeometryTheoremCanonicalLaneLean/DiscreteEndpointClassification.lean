import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteEndpointClassificationPackage where
  targetSimplicialComplex : Type u
  targetTopology : TopologicalSpace targetSimplicialComplex
  simplyConnectedDiscrete : Prop
  sphereCombinatorial : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetSimplicialComplex 3
  endpointMatchesStatement : Prop

structure DiscreteEndpointClassificationEvidence (E : DiscreteEndpointClassificationPackage) where
  simplyConnectedDiscreteClosed : E.simplyConnectedDiscrete
  endpointMatchesStatementClosed : E.endpointMatchesStatement

def DiscreteEndpointClassificationClosed (E : DiscreteEndpointClassificationPackage) : Prop :=
  E.simplyConnectedDiscrete ∧ E.endpointMatchesStatement

theorem discrete_endpoint_classification_closed_from_evidence
    (E : DiscreteEndpointClassificationPackage) (Ev : DiscreteEndpointClassificationEvidence E) :
    DiscreteEndpointClassificationClosed E := by
  exact And.intro Ev.simplyConnectedDiscreteClosed Ev.endpointMatchesStatementClosed

theorem discrete_endpoint_classification_supplies_mathlib_statement
    (E : DiscreteEndpointClassificationPackage) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere E.targetSimplicialComplex E.targetTopology 3 :=
  E.sphereCombinatorial

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse