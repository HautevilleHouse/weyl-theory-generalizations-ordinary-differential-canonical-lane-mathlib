import canonicalLaneMathlib.AdmissibleClass
import WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WeylWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  by
    exact A.object.conclusion

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
