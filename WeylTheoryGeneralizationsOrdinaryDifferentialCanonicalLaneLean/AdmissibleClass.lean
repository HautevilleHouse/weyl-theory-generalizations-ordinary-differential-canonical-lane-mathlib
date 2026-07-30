import canonicalLaneMathlib.AdmissibleClass
import WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure AdmissibleClass where
  object : WeylAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WeylWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
