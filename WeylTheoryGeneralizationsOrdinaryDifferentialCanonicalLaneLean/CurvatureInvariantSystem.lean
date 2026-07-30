import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure CurvatureInvariantPackage (W : WeylConnectionPackage) where
  riemannTensor : Type u
  weylTensor : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  riemannTensorLaw : Prop
  weylDecomposition : Prop
  ricciContraction : Prop
  scalarTrace : Prop
  riemannTensorLawTerm : riemannTensorLaw
  weylDecompositionTerm : weylDecomposition
  ricciContractionTerm : ricciContraction
  scalarTraceTerm : scalarTrace

structure CurvatureInvariantEvidence {W : WeylConnectionPackage} (C : CurvatureInvariantPackage W) where
  riemannTensorLawClosed : C.riemannTensorLaw
  weylDecompositionClosed : C.weylDecomposition
  ricciContractionClosed : C.ricciContraction
  scalarTraceClosed : C.scalarTrace

def CurvatureInvariantClosed {W : WeylConnectionPackage} (C : CurvatureInvariantPackage W) : Prop :=
  C.riemannTensorLaw ∧ C.weylDecomposition ∧ C.ricciContraction ∧ C.scalarTrace

theorem curvature_invariant_closed_from_evidence {W : WeylConnectionPackage} (C : CurvatureInvariantPackage W) (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.riemannTensorLawClosed (And.intro E.weylDecompositionClosed (And.intro E.ricciContractionClosed E.scalarTraceClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
