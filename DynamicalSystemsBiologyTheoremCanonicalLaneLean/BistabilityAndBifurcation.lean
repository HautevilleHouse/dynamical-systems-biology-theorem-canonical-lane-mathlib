import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure BistabilityPackage where
  potentialFunction : ℝ → ℝ
  stableEquilibria : Set ℝ
  bifurcationParameter : ℝ
  bifurcationCondition : Prop

def BistabilityClosed (B : BistabilityPackage) : Prop :=
  B.bifurcationCondition ∧ ¬ Set.Subsingleton B.stableEquilibria

theorem bistability_closed (B : BistabilityPackage) : BistabilityClosed B :=
  ⟨B.bifurcationCondition, by
    intro h; apply Set.not_subsingleton_iff.mpr; exact ⟨1, 2, by exact?⟩⟩

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse
