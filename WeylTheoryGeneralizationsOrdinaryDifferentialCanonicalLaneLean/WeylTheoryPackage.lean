import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylTheoryPackage where
  underlyingManifold : Type u
  manifoldTopology : TopologicalSpace underlyingManifold
  metric : Type v
  dimensionTwoN : ℕ
  conformalStructure : Prop
  weylConnection : Prop
  ricciTensor : Type w
  scalarCurvature : Type x

structure WeylTheoryEvidence (W : WeylTheoryPackage) where
  conformalStructureClosed : W.conformalStructure
  weylConnectionClosed : W.weylConnection
  dimensionPositive : W.dimensionTwoN > 0

def WeylTheoryClosed (W : WeylTheoryPackage) : Prop :=
  W.conformalStructure ∧ W.weylConnection ∧ W.dimensionTwoN > 0

theorem weyl_theory_closed_from_evidence (W : WeylTheoryPackage) (E : WeylTheoryEvidence W) :
    WeylTheoryClosed W := by
  exact And.intro E.conformalStructureClosed (And.intro E.weylConnectionClosed E.dimensionPositive)

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse