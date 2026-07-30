import canonicalLaneMathlib.AdmissibleClass

/-!
# Weyl Structure Package
-/

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylStructurePackage where
  manifoldType : Type u
  vectorBundleType : Type v
  connectionForm : Type w
  curvatureForm : Type x
  weylCurvatureTensor : Type y
  metricCompatibleConnection : Prop
  torsionFreeCondition : Prop
  weylTensorDecomposition : Prop
  weylInvariantDefined : Prop

structure WeylStructureEvidence (W : WeylStructurePackage) where
  metricCompatibleConnectionClosed : W.metricCompatibleConnection
  torsionFreeConditionClosed : W.torsionFreeCondition
  weylTensorDecompositionClosed : W.weylTensorDecomposition
  weylInvariantDefinedClosed : W.weylInvariantDefined

def WeylStructureClosed (W : WeylStructurePackage) : Prop :=
  W.metricCompatibleConnection ∧ W.torsionFreeCondition ∧
  W.weylTensorDecomposition ∧ W.weylInvariantDefined

theorem weyl_structure_closed_from_evidence (W : WeylStructurePackage)
    (E : WeylStructureEvidence W) : WeylStructureClosed W := by
  exact And.intro E.metricCompatibleConnectionClosed
    (And.intro E.torsionFreeConditionClosed
      (And.intro E.weylTensorDecompositionClosed
        E.weylInvariantDefinedClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse