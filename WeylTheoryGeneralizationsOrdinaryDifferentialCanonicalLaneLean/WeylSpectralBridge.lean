import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylSpectralBridgePackage {G : WeylStructureGroupPackage}
    {O : OrdinaryDifferentialExtensionPackage G} where
  spectralCurve : Type u
  weylMTheory : Prop
  spectralInvariantsConstructed : Prop
  inverseSpectralProblem : Prop
  rigidityFromSpectrum : Prop

structure WeylSpectralBridgeEvidence {G : WeylStructureGroupPackage}
    {O : OrdinaryDifferentialExtensionPackage G}
    (B : WeylSpectralBridgePackage G O) where
  weylMTheoryClosed : B.weylMTheory
  spectralInvariantsConstructedClosed : B.spectralInvariantsConstructed
  inverseSpectralProblemClosed : B.inverseSpectralProblem
  rigidityFromSpectrumClosed : B.rigidityFromSpectrum

def WeylSpectralBridgeClosed {G : WeylStructureGroupPackage}
    {O : OrdinaryDifferentialExtensionPackage G}
    (B : WeylSpectralBridgePackage G O) : Prop :=
  B.weylMTheory ∧ B.spectralInvariantsConstructed ∧
  B.inverseSpectralProblem ∧ B.rigidityFromSpectrum

theorem weyl_spectral_bridge_closed_from_evidence
    {G : WeylStructureGroupPackage} {O : OrdinaryDifferentialExtensionPackage G}
    (B : WeylSpectralBridgePackage G O)
    (E : WeylSpectralBridgeEvidence B) : WeylSpectralBridgeClosed B := by
  exact And.intro E.weylMTheoryClosed
    (And.intro E.spectralInvariantsConstructedClosed
      (And.intro E.inverseSpectralProblemClosed E.rigidityFromSpectrumClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse