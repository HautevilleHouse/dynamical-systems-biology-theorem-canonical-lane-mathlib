import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure PopulationDynamicsPackage where
  speciesCount : ℕ
  growthRates : ℕ → ℝ
  interactionMatrix : ℕ → ℕ → ℝ
  carryingCapacities : ℕ → ℝ
  equilibriumExists : Prop
  stability : Prop
  bifurcationStructure : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  equilibriumExistsClosed : P.equilibriumExists
  stabilityClosed : P.stability
  bifurcationStructureClosed : P.bifurcationStructure

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.equilibriumExists ∧ P.stability ∧ P.bifurcationStructure

theorem population_dynamics_closed_from_evidence
    (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro E.equilibriumExistsClosed
    (And.intro E.stabilityClosed E.bifurcationStructureClosed)

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse