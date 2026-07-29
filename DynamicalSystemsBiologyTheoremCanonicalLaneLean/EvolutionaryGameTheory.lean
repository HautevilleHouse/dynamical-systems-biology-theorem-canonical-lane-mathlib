import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategyTypes : ℕ
  payoffMatrix : ℕ → ℕ → ℝ
  replicatorEquation : Prop
  nashEquilibrium : Prop
  evolutionaryStableState : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  replicatorEquationClosed : E.replicatorEquation
  nashEquilibriumClosed : E.nashEquilibrium
  evolutionaryStableStateClosed : E.evolutionaryStableState

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.replicatorEquation ∧ E.nashEquilibrium ∧ E.evolutionaryStableState

theorem evolutionary_game_theory_closed_from_evidence
    (E : EvolutionaryGameTheoryPackage) (Ev : EvolutionaryGameTheoryEvidence E) :
    EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.replicatorEquationClosed
    (And.intro Ev.nashEquilibriumClosed Ev.evolutionaryStableStateClosed)

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse