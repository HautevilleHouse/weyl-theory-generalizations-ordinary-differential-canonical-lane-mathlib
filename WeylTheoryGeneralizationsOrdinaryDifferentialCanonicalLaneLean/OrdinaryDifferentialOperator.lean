import canonicalLaneMathlib.AdmissibleClass

/-!
# Ordinary Differential Operator Package
-/

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure OrdinaryDifferentialOperatorPackage (W : WeylStructurePackage) where
  operatorType : Type u
  symbolMap : Type v
  spectralData : Type w
  ellipticRegularity : Prop
  indexFormula : Prop
  weylInvariantIndex : Prop

structure OrdinaryDifferentialOperatorEvidence {W : WeylStructurePackage}
    (O : OrdinaryDifferentialOperatorPackage W) where
  ellipticRegularityClosed : O.ellipticRegularity
  indexFormulaClosed : O.indexFormula
  weylInvariantIndexClosed : O.weylInvariantIndex

def OrdinaryDifferentialOperatorClosed {W : WeylStructurePackage}
    (O : OrdinaryDifferentialOperatorPackage W) : Prop :=
  O.ellipticRegularity ∧ O.indexFormula ∧ O.weylInvariantIndex

theorem ordinary_differential_operator_closed_from_evidence
    {W : WeylStructurePackage} (O : OrdinaryDifferentialOperatorPackage W)
    (E : OrdinaryDifferentialOperatorEvidence O) : 
    OrdinaryDifferentialOperatorClosed O := by
  exact And.intro E.ellipticRegularityClosed
    (And.intro E.indexFormulaClosed E.weylInvariantIndexClosed)

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse