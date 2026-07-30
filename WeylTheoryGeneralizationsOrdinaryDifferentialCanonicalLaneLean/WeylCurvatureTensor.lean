import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylCurvatureTensorPackage (W : WeylTheoryPackage) where
  weylTensor : Type u
  bochnerTensor : Type v
  decompositionOfRiemann : Prop
  conformalInvariance : Prop
  weylTensorTraceFree : Prop

structure WeylCurvatureTensorEvidence {W : WeylTheoryPackage} (C : WeylCurvatureTensorPackage W) where
  decompositionOfRiemannClosed : C.decompositionOfRiemann
  conformalInvarianceClosed : C.conformalInvariance
  weylTensorTraceFreeClosed : C.weylTensorTraceFree

def WeylCurvatureTensorClosed {W : WeylTheoryPackage} (C : WeylCurvatureTensorPackage W) : Prop :=
  C.decompositionOfRiemann ∧ C.conformalInvariance ∧ C.weylTensorTraceFree

theorem weyl_curvature_tensor_closed_from_evidence
    {W : WeylTheoryPackage} (C : WeylCurvatureTensorPackage W) (E : WeylCurvatureTensorEvidence C) :
    WeylCurvatureTensorClosed C := by
  exact And.intro E.decompositionOfRiemannClosed (And.intro E.conformalInvarianceClosed E.weylTensorTraceFreeClosed)

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse