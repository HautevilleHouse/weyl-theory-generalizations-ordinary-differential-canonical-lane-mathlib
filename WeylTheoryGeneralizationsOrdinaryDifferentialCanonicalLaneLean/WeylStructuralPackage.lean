import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylStructuralPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  conformalStructure : Prop
  weylConnection : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  smoothManifold : Prop
  conformalStructureDefined : Prop
  weylConnectionTorsionFree : Prop
  ricciTensorCompatible : Prop
  scalarCurvatureTrace : Prop

structure WeylStructuralEvidence (W : WeylStructuralPackage) where
  smoothManifoldClosed : W.smoothManifold
  conformalStructureDefinedClosed : W.conformalStructureDefined
  weylConnectionTorsionFreeClosed : W.weylConnectionTorsionFree
  ricciTensorCompatibleClosed : W.ricciTensorCompatible
  scalarCurvatureTraceClosed : W.scalarCurvatureTrace

def WeylStructuralClosed (W : WeylStructuralPackage) : Prop :=
  W.smoothManifold ∧ W.conformalStructureDefined ∧
  W.weylConnectionTorsionFree ∧ W.ricciTensorCompatible ∧
  W.scalarCurvatureTrace

theorem weyl_structural_closed_from_evidence
    (W : WeylStructuralPackage) (E : WeylStructuralEvidence W) :
    WeylStructuralClosed W := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.conformalStructureDefinedClosed
      (And.intro E.weylConnectionTorsionFreeClosed
        (And.intro E.ricciTensorCompatibleClosed
          E.scalarCurvatureTraceClosed)))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse