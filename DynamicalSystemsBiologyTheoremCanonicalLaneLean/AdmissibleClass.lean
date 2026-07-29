import DynamicalSystemsBiologyTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse
