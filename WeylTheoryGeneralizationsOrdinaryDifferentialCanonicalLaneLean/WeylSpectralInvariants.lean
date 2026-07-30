import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylSpectralInvariantsPackage {W : WeylStructuralPackage}
    {G : GeneralizedWeylEquationPackage W}
    {A : WeylAsymptoticExpansionPackage G} where
  heatKernelCoefficients : Prop
  spectralZetaFunction : Type u
  functionalDeterminant : Prop
  multiplicativeAnomaly : Prop
  invariantsFromGeometricData : Prop

structure WeylSpectralInvariantsEvidence {W : WeylStructuralPackage}
    {G : GeneralizedWeylEquationPackage W}
    {A : WeylAsymptoticExpansionPackage G}
    (S : WeylSpectralInvariantsPackage A) where
  heatKernelCoefficientsClosed : S.heatKernelCoefficients
  functionalDeterminantClosed : S.functionalDeterminant
  multiplicativeAnomalyClosed : S.multiplicativeAnomaly
  invariantsFromGeometricDataClosed : S.invariantsFromGeometricData

def WeylSpectralInvariantsClosed {W : WeylStructuralPackage}
    {G : GeneralizedWeylEquationPackage W}
    {A : WeylAsymptoticExpansionPackage G}
    (S : WeylSpectralInvariantsPackage A) : Prop :=
  S.heatKernelCoefficients ∧ S.functionalDeterminant ∧
  S.multiplicativeAnomaly ∧ S.invariantsFromGeometricData

theorem weyl_spectral_invariants_closed_from_evidence
    {W : WeylStructuralPackage} {G : GeneralizedWeylEquationPackage W}
    {A : WeylAsymptoticExpansionPackage G}
    (S : WeylSpectralInvariantsPackage A)
    (E : WeylSpectralInvariantsEvidence S) :
    WeylSpectralInvariantsClosed S := by
  exact And.intro E.heatKernelCoefficientsClosed
    (And.intro E.functionalDeterminantClosed
      (And.intro E.multiplicativeAnomalyClosed
        E.invariantsFromGeometricDataClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse