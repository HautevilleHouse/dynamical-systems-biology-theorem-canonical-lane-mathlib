import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  nodeCount : ℕ
  edgeMatrix : Matrix ℝ ℝ
  dynamicsEquation : Prop
  steadyState : Prop

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.dynamicsEquation ∧ G.steadyState

theorem gene_regulatory_network_closed (G : GeneRegulatoryNetworkPackage) : GeneRegulatoryNetworkClosed G :=
  ⟨G.dynamicsEquation, G.steadyState⟩

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse
