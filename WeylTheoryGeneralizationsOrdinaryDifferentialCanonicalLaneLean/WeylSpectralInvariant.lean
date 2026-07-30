import canonicalLaneMathlib.AdmissibleClass

/-!
# Weyl Spectral Invariant Package
-/

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylSpectralInvariantPackage {W : WeylStructurePackage}
    {O : OrdinaryDifferentialOperatorPackage W}
    (I : WeylIndexTheoremPackage C) where
  spectralZetaFunction : Type u
  etaInvariant : Type v
  spectralInvariantDefined : Prop
  weylCorrectionTerm : Prop
  invariantMatchesTopologicalIndex : Prop

structure WeylSpectralInvariantEvidence {W : WeylStructurePackage}
    {O : OrdinaryDifferentialOperatorPackage W}
    {C : WeylConnectionCohomologyPackage O}
    {I : WeylIndexTheoremPackage C}
    (S : WeylSpectralInvariantPackage I) where
  spectralInvariantDefinedClosed : S.spectralInvariantDefined
  weylCorrectionTermClosed : S.weylCorrectionTerm
  invariantMatchesTopologicalIndexClosed : S.invariantMatchesTopologicalIndex

def WeylSpectralInvariantClosed {W : WeylStructurePackage}
    {O : OrdinaryDifferentialOperatorPackage W}
    {C : WeylConnectionCohomologyPackage O}
    {I : WeylIndexTheoremPackage C}
    (S : WeylSpectralInvariantPackage I) : Prop :=
  S.spectralInvariantDefined ∧ S.weylCorrectionTerm ∧
  S.invariantMatchesTopologicalIndex

theorem weyl_spectral_invariant_closed_from_evidence
    {W : WeylStructurePackage} {O : OrdinaryDifferentialOperatorPackage W}
    {C : WeylConnectionCohomologyPackage O}
    {I : WeylIndexTheoremPackage C}
    (S : WeylSpectralInvariantPackage I)
    (E : WeylSpectralInvariantEvidence S) :
    WeylSpectralInvariantClosed S := by
  exact And.intro E.spectralInvariantDefinedClosed
    (And.intro E.weylCorrectionTermClosed
      E.invariantMatchesTopologicalIndexClosed)

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse