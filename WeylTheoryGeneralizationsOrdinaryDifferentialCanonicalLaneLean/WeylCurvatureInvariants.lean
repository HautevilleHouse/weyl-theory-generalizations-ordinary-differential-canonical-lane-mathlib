import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylCurvatureInvariantsPackage where
  weylStructure : Type u
  conformalWeylTensor : Type v
  cottonTensor : Type w
  bachTensor : Type x
  conformalWeylTensorVanishes : Prop
  cottonTensorVanishes : Prop
  bachTensorVanishes : Prop
  conformalFlatnessCondition : Prop

structure WeylCurvatureInvariantsEvidence (I : WeylCurvatureInvariantsPackage) where
  conformalWeylTensorVanishesClosed : I.conformalWeylTensorVanishes
  cottonTensorVanishesClosed : I.cottonTensorVanishes
  bachTensorVanishesClosed : I.bachTensorVanishes
  conformalFlatnessConditionClosed : I.conformalFlatnessCondition

def WeylCurvatureInvariantsClosed (I : WeylCurvatureInvariantsPackage) : Prop :=
  I.conformalWeylTensorVanishes ∧ I.cottonTensorVanishes ∧ I.bachTensorVanishes ∧ I.conformalFlatnessCondition

theorem weyl_curvature_invariants_closed_from_evidence
    (I : WeylCurvatureInvariantsPackage) (E : WeylCurvatureInvariantsEvidence I) :
    WeylCurvatureInvariantsClosed I := by
  exact And.intro E.conformalWeylTensorVanishesClosed
    (And.intro E.cottonTensorVanishesClosed
      (And.intro E.bachTensorVanishesClosed E.conformalFlatnessConditionClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse