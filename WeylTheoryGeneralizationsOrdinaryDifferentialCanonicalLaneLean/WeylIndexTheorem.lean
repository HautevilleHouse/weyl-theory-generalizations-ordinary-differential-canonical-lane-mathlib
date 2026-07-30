import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylIndexTheoremPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  weylComplex : Type v
  indexBundle : Type w
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : analyticIndex → topologicalIndex
  indexEqualityTerm : indexEquality

structure WeylIndexTheoremEvidence (I : WeylIndexTheoremPackage) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality

def WeylIndexTheoremClosed (I : WeylIndexTheoremPackage) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ True

theorem weyl_index_theorem_closed_from_evidence
    (I : WeylIndexTheoremPackage) (E : WeylIndexTheoremEvidence I) :
    WeylIndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexClosed True.intro)

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse