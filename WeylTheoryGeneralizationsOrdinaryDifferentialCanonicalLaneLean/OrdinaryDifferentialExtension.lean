import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure OrdinaryDifferentialExtensionPackage {G : WeylStructureGroupPackage} where
  differentialOperator : Type u
  eigenvalueProblem : Prop
  sturmLiouvilleType : Prop
  spectralDecomposition : Prop
  asymptoticsControlled : Prop

structure OrdinaryDifferentialExtensionEvidence {G : WeylStructureGroupPackage}
    (O : OrdinaryDifferentialExtensionPackage G) where
  eigenvalueProblemClosed : O.eigenvalueProblem
  sturmLiouvilleTypeClosed : O.sturmLiouvilleType
  spectralDecompositionClosed : O.spectralDecomposition
  asymptoticsControlledClosed : O.asymptoticsControlled

def OrdinaryDifferentialExtensionClosed {G : WeylStructureGroupPackage}
    (O : OrdinaryDifferentialExtensionPackage G) : Prop :=
  O.eigenvalueProblem ∧ O.sturmLiouvilleType ∧
  O.spectralDecomposition ∧ O.asymptoticsControlled

theorem ordinary_differential_extension_closed_from_evidence
    {G : WeylStructureGroupPackage} (O : OrdinaryDifferentialExtensionPackage G)
    (E : OrdinaryDifferentialExtensionEvidence O) :
    OrdinaryDifferentialExtensionClosed O := by
  exact And.intro E.eigenvalueProblemClosed
    (And.intro E.sturmLiouvilleTypeClosed
      (And.intro E.spectralDecompositionClosed E.asymptoticsControlledClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse