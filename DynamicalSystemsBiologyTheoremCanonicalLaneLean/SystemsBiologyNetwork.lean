import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure SystemsBiologyNetworkPackage where
  geneRegulatoryNetwork : Type u
  nodeCount : ℕ
  edgeSet : Set (ℕ × ℕ)
  booleanDynamics : Prop
  attractorStates : Prop
  robustnessToPerturbation : Prop

structure SystemsBiologyNetworkEvidence (S : SystemsBiologyNetworkPackage) where
  booleanDynamicsClosed : S.booleanDynamics
  attractorStatesClosed : S.attractorStates
  robustnessToPerturbationClosed : S.robustnessToPerturbation

def SystemsBiologyNetworkClosed (S : SystemsBiologyNetworkPackage) : Prop :=
  S.booleanDynamics ∧ S.attractorStates ∧ S.robustnessToPerturbation

theorem systems_biology_network_closed_from_evidence (S : SystemsBiologyNetworkPackage)
    (E : SystemsBiologyNetworkEvidence S) : SystemsBiologyNetworkClosed S := by
  exact And.intro E.booleanDynamicsClosed (And.intro E.attractorStatesClosed E.robustnessToPerturbationClosed)

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse