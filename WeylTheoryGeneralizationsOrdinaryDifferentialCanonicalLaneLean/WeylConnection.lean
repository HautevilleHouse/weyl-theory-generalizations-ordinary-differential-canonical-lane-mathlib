import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylConnectionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  weylConnection : Type w
  curvatureTwoForm : Type x
  ricciTensor : Type y
  smoothManifold : Prop
  metricConformalStructure : Prop
  weylConnectionTorsionFree : Prop
  weylConnectionMetricCompatibleUpToConformal : Prop
  curvatureTwoFormClosed : Prop
  ricciTensorSymmetric : Prop

structure WeylConnectionEvidence (W : WeylConnectionPackage) where
  smoothManifoldClosed : W.smoothManifold
  metricConformalStructureClosed : W.metricConformalStructure
  weylConnectionTorsionFreeClosed : W.weylConnectionTorsionFree
  weylConnectionMetricCompatibleUpToConformalClosed : W.weylConnectionMetricCompatibleUpToConformal
  curvatureTwoFormClosedClosed : W.curvatureTwoFormClosed
  ricciTensorSymmetricClosed : W.ricciTensorSymmetric

def WeylConnectionClosed (W : WeylConnectionPackage) : Prop :=
  W.smoothManifold ∧ W.metricConformalStructure ∧ W.weylConnectionTorsionFree ∧
  W.weylConnectionMetricCompatibleUpToConformal ∧ W.curvatureTwoFormClosed ∧ W.ricciTensorSymmetric

theorem weyl_connection_closed_from_evidence (W : WeylConnectionPackage) (E : WeylConnectionEvidence W) :
    WeylConnectionClosed W := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.metricConformalStructureClosed
      (And.intro E.weylConnectionTorsionFreeClosed
        (And.intro E.weylConnectionMetricCompatibleUpToConformalClosed
          (And.intro E.curvatureTwoFormClosedClosed E.ricciTensorSymmetricClosed))))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse