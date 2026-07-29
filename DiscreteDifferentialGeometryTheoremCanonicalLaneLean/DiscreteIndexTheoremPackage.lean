import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteDifferentialGeometryTheoremCanonicalLaneLean

structure DiscreteIndexTheoremPackage {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G} where
  combinatorialEulerCharacteristic : Prop
  analyticIndex : Prop
  indexEquality : Prop
  localIndexFormula : Prop

structure DiscreteIndexTheoremEvidence {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G}
    (I : DiscreteIndexTheoremPackage G C) where
  combinatorialEulerCharacteristicClosed : I.combinatorialEulerCharacteristic
  analyticIndexClosed : I.analyticIndex
  indexEqualityClosed : I.indexEquality
  localIndexFormulaClosed : I.localIndexFormula

def DiscreteIndexTheoremClosed {G : DiscreteCurvaturePackage}
    {C : DiscreteConnectionPackage G}
    (I : DiscreteIndexTheoremPackage G C) : Prop :=
  I.combinatorialEulerCharacteristic ∧ I.analyticIndex ∧
  I.indexEquality ∧ I.localIndexFormula

theorem discrete_index_theorem_closed_from_evidence
    {G : DiscreteCurvaturePackage} {C : DiscreteConnectionPackage G}
    (I : DiscreteIndexTheoremPackage G C)
    (E : DiscreteIndexTheoremEvidence I) : DiscreteIndexTheoremClosed I := by
  exact And.intro E.combinatorialEulerCharacteristicClosed
    (And.intro E.analyticIndexClosed
      (And.intro E.indexEqualityClosed E.localIndexFormulaClosed))

end DiscreteDifferentialGeometryTheoremCanonicalLaneLean
end HautevilleHouse