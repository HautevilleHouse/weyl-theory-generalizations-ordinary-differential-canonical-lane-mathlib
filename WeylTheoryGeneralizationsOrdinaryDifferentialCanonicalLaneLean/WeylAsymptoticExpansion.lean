import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylAsymptoticExpansionPackage {W : WeylStructuralPackage}
    {G : GeneralizedWeylEquationPackage W} where
  countingFunction : Type u
  asymptoticFormula : Prop
  leadingTerm : Prop
  remainderEstimate : Prop
  uniformConvergence : Prop

structure WeylAsymptoticExpansionEvidence {W : WeylStructuralPackage}
    {G : GeneralizedWeylEquationPackage W}
    (A : WeylAsymptoticExpansionPackage G) where
  asymptoticFormulaClosed : A.asymptoticFormula
  leadingTermClosed : A.leadingTerm
  remainderEstimateClosed : A.remainderEstimate
  uniformConvergenceClosed : A.uniformConvergence

def WeylAsymptoticExpansionClosed {W : WeylStructuralPackage}
    {G : GeneralizedWeylEquationPackage W}
    (A : WeylAsymptoticExpansionPackage G) : Prop :=
  A.asymptoticFormula ∧ A.leadingTerm ∧
  A.remainderEstimate ∧ A.uniformConvergence

theorem weyl_asymptotic_expansion_closed_from_evidence
    {W : WeylStructuralPackage} {G : GeneralizedWeylEquationPackage W}
    (A : WeylAsymptoticExpansionPackage G)
    (E : WeylAsymptoticExpansionEvidence A) :
    WeylAsymptoticExpansionClosed A := by
  exact And.intro E.asymptoticFormulaClosed
    (And.intro E.leadingTermClosed
      (And.intro E.remainderEstimateClosed
        E.uniformConvergenceClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse