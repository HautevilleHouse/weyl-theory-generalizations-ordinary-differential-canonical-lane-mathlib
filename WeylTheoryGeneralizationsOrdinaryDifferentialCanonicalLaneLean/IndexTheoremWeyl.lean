import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure IndexTheoremWeylPackage (W : WeylConnectionPackage) (C : CurvatureInvariantPackage W) (T : ConformalTransformPackage W C) where
  ellipticComplex : Type u
  indexFormula : Prop
  analyticalIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop
  ellipticComplexTerm : ellipticComplex
  indexFormulaTerm : indexFormula
  analyticalIndexTerm : analyticalIndex
  topologicalIndexTerm : topologicalIndex
  indexEqualityTerm : indexEquality

structure IndexTheoremWeylEvidence {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} {T : ConformalTransformPackage W C} (I : IndexTheoremWeylPackage W C T) where
  ellipticComplexClosed : I.ellipticComplex
  indexFormulaClosed : I.indexFormula
  analyticalIndexClosed : I.analyticalIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality

def IndexTheoremWeylClosed {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} {T : ConformalTransformPackage W C} (I : IndexTheoremWeylPackage W C T) : Prop :=
  I.ellipticComplex ∧ I.indexFormula ∧ I.analyticalIndex ∧ I.topologicalIndex ∧ I.indexEquality

theorem index_theorem_weyl_closed_from_evidence {W : WeylConnectionPackage} {C : CurvatureInvariantPackage W} {T : ConformalTransformPackage W C} (I : IndexTheoremWeylPackage W C T) (E : IndexTheoremWeylEvidence I) : IndexTheoremWeylClosed I := by
  exact And.intro E.ellipticComplexClosed (And.intro E.indexFormulaClosed (And.intro E.analyticalIndexClosed (And.intro E.topologicalIndexClosed E.indexEqualityClosed)))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
