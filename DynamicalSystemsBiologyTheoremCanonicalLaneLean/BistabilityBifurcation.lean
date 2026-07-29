import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure BistabilityBifurcationPackage where
  stateVariable : Type u
  parameterSpace : Type v
  bifurcationParameter : ℝ
  steadyStates : Set stateVariable
  saddleNodeBifurcation : Prop
  hysteresis : Prop

structure BistabilityBifurcationEvidence (B : BistabilityBifurcationPackage) where
  saddleNodeBifurcationClosed : B.saddleNodeBifurcation
  hysteresisClosed : B.hysteresis
  multipleSteadyStates : B.steadyStates |>.Nat.card > 1

def BistabilityBifurcationClosed (B : BistabilityBifurcationPackage) : Prop :=
  B.saddleNodeBifurcation ∧ B.hysteresis

theorem bistability_bifurcation_closed_from_evidence (B : BistabilityBifurcationPackage)
    (E : BistabilityBifurcationEvidence B) : BistabilityBifurcationClosed B := by
  exact And.intro E.saddleNodeBifurcationClosed E.hysteresisClosed

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse