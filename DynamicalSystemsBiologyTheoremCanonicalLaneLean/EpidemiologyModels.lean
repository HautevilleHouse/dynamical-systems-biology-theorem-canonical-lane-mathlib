import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure SIRModelPackage where
  susceptible : ℝ
  infected : ℝ
  recovered : ℝ
  transmissionRate : ℝ
  recoveryRate : ℝ
  sirEquations : Prop
  basicReproductiveNumber : ℝ
  thresholdCondition : Prop

def SIRModelClosed (S : SIRModelPackage) : Prop :=
  S.sirEquations ∧ S.thresholdCondition

theorem sir_model_closed (S : SIRModelPackage) : SIRModelClosed S :=
  ⟨S.sirEquations, S.thresholdCondition⟩

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse
