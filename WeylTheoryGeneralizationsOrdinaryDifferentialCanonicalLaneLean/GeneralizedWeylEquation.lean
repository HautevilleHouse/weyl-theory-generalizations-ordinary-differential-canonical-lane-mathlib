import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure GeneralizedWeylEquationPackage {W : WeylStructuralPackage} where
  differentialOperator : Type u
  eigenvalueProblem : Prop
  spectralData : Type v
  weylScalarInvariant : Prop
  operatorSelfAdjoint : Prop
  eigenfunctionBasis : Prop

structure GeneralizedWeylEquationEvidence {W : WeylStructuralPackage}
    (G : GeneralizedWeylEquationPackage W) where
  eigenvalueProblemClosed : G.eigenvalueProblem
  weylScalarInvariantClosed : G.weylScalarInvariant
  operatorSelfAdjointClosed : G.operatorSelfAdjoint
  eigenfunctionBasisClosed : G.eigenfunctionBasis

def GeneralizedWeylEquationClosed {W : WeylStructuralPackage}
    (G : GeneralizedWeylEquationPackage W) : Prop :=
  G.eigenvalueProblem ∧ G.weylScalarInvariant ∧
  G.operatorSelfAdjoint ∧ G.eigenfunctionBasis

theorem generalized_weyl_equation_closed_from_evidence
    {W : WeylStructuralPackage} (G : GeneralizedWeylEquationPackage W)
    (E : GeneralizedWeylEquationEvidence G) :
    GeneralizedWeylEquationClosed G := by
  exact And.intro E.eigenvalueProblemClosed
    (And.intro E.weylScalarInvariantClosed
      (And.intro E.operatorSelfAdjointClosed
        E.eigenfunctionBasisClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse