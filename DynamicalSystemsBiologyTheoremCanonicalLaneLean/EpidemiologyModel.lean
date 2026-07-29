import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

structure EpidemiologyPackage where
  compartmentState : Type u
  transmissionRate : ℝ
  recoveryRate : ℝ
  basicReproductionNumber : ℝ
  sirModelEquations : Prop
  endemicEquilibrium : Prop

structure EpidemiologyEvidence (E : EpidemiologyPackage) where
  sirModelEquationsClosed : E.sirModelEquations
  basicReproductionNumberComputed : E.basicReproductionNumber > 0
  endemicEquilibriumClosed : E.endemicEquilibrium

def EpidemiologyClosed (E : EpidemiologyPackage) : Prop :=
  E.sirModelEquations ∧ E.endemicEquilibrium

theorem epidemiology_closed_from_evidence (E : EpidemiologyPackage)
    (Ev : EpidemiologyEvidence E) : EpidemiologyClosed E := by
  exact And.intro Ev.sirModelEquationsClosed Ev.endemicEquilibriumClosed

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse