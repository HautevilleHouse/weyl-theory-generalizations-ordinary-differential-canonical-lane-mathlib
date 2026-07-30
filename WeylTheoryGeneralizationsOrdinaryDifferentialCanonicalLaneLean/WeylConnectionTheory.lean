import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylConnectionPackage where
  manifold : Type u
  metric : Type v
  weylConnection : Type w
  compatibilityCondition : Prop
  torsionFree : Prop
  compatibilityConditionTerm : compatibilityCondition
  torsionFreeTerm : torsionFree

structure WeylConnectionEvidence (W : WeylConnectionPackage) where
  compatibilityConditionClosed : W.compatibilityCondition
  torsionFreeClosed : W.torsionFree

def WeylConnectionClosed (W : WeylConnectionPackage) : Prop :=
  W.compatibilityCondition ∧ W.torsionFree

theorem weyl_connection_closed_from_evidence (W : WeylConnectionPackage) (E : WeylConnectionEvidence W) : WeylConnectionClosed W := by
  exact And.intro E.compatibilityConditionClosed E.torsionFreeClosed

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
