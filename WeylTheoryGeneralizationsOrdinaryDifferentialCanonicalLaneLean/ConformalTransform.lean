import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure ConformalTransformPackage (W : WeylConnectionPackage) (C : CurvatureInvariantPackage W) where
  scalarField : Type u
  transformedMetric : Type v
  transformedConnection : Type w
  weylTransformationLaw : Prop
  curvatureTransformation : Prop
  weylTransformationLawTerm : weylTransformationLaw
  curvatureTransformationTerm : curvatureTransformation

structure ConformalTransformEvidence {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} (T : ConformalTransformPackage W C) where
  weylTransformationLawClosed : T.weylTransformationLaw
  curvatureTransformationClosed : T.curvatureTransformation

def ConformalTransformClosed {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} (T : ConformalTransformPackage W C) : Prop :=
  T.weylTransformationLaw ∧ T.curvatureTransformation

theorem conformal_transform_closed_from_evidence {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} (T : ConformalTransformPackage W C) (E : ConformalTransformEvidence T) : ConformalTransformClosed T := by
  exact And.intro E.weylTransformationLawClosed E.curvatureTransformationClosed

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
