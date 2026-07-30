import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

def ConstrainedWeylTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_weyl_theory_endgame (A : AdmissibleClass) : ConstrainedWeylTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
