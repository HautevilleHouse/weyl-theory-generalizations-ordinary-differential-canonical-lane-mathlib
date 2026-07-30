import canonicalLaneMathlib.AdmissibleClass
import WeylConnection.lean
import WeylCurvatureInvariants.lean
import WeylIndexTheorem.lean
import WeylHolonomy.lean
import WeylODESolutions.lean

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

def ConstrainedWeylClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_weyl_endgame (A : AdmissibleClass) :
    ConstrainedWeylClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse