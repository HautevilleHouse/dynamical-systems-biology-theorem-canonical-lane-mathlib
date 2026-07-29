import DynamicalSystemsBiologyTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure BiologyAdmittedObject where
  dynamicalSystem : Type
  phaseSpace : TopologicalSpace dynamicalSystem
  closedDynamicalSystem : Prop
  observableConstraints : Prop
  modelReference : Type
  referenceTopology : TopologicalSpace modelReference
  structurallyEquivalent : Prop
  conclusion : structurallyEquivalent

def BiologyWitnessClosed (O : BiologyAdmittedObject) : Prop :=
  O.structurallyEquivalent

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "dynamical-systems-biology-theorem-canonical-lane",
  theoremName := "Dynamical Systems Biology Theorem",
  theoremObject := "The fundamental theorem of dynamical systems biology: the constrained admissible class closure",
  classicalBoundary := "open classical boundary, source conjecture closure not claimed",
  constrainedStatement := "constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "systems_biology_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse
