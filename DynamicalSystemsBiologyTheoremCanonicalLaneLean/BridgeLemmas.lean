import DynamicalSystemsBiologyTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DynamicalSystemsBiologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsBiologyTheoremCanonicalLaneLean
end HautevilleHouse
