import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure BifurcationPackage where
  parameterSpace : Nat
  bifurcationPoints : List ℝ
  normalForm : ℝ → ℝ
  hbifurcationType : String
  stabilityChange : Prop
  criticality : Prop

structure BifurcationEvidence (B : BifurcationPackage) where
  stabilityChangeClosed : B.stabilityChange
  criticalityClosed : B.criticality

def BifurcationClosed (B : BifurcationPackage) : Prop :=
  B.stabilityChange ∧ B.criticality

theorem bifurcation_closed_from_evidence (B : BifurcationPackage) (E : BifurcationEvidence B) : BifurcationClosed B := by
  exact And.intro E.stabilityChangeClosed E.criticalityClosed

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse