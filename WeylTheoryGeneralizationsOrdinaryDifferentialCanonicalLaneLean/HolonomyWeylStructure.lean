import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure HolonomyWeylPackage (W : WeylConnectionPackage) (C : CurvatureInvariantPackage W) where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  weylHolonomyRelation : Prop
  curvatureHolonomyRelation : Prop
  weylHolonomyRelationTerm : weylHolonomyRelation
  curvatureHolonomyRelationTerm : curvatureHolonomyRelation

structure HolonomyWeylEvidence {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} (H : HolonomyWeylPackage W C) where
  weylHolonomyRelationClosed : H.weylHolonomyRelation
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation

def HolonomyWeylClosed {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} (H : HolonomyWeylPackage W C) : Prop :=
  H.weylHolonomyRelation ∧ H.curvatureHolonomyRelation

theorem holonomy_weyl_closed_from_evidence {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} (H : HolonomyWeylPackage W C) (E : HolonomyWeylEvidence H) : HolonomyWeylClosed H := by
  exact And.intro E.weylHolonomyRelationClosed E.curvatureHolonomyRelationClosed

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
