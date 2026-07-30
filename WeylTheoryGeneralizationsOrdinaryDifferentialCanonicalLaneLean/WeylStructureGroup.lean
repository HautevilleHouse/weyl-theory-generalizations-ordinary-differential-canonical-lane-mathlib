import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylStructureGroupPackage where
  baseManifold : Type u
  manifoldTopology : TopologicalSpace baseManifold
  conformalClass : Type v
  weylConnection : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  metricRepresentative : Prop
  conformalInvariance : Prop
  connectionTorsionFree : Prop
  ricciDecomposition : Prop
  weylTensorVanishing : Prop

structure WeylStructureGroupEvidence (G : WeylStructureGroupPackage) where
  metricRepresentativeClosed : G.metricRepresentative
  conformalInvarianceClosed : G.conformalInvariance
  connectionTorsionFreeClosed : G.connectionTorsionFree
  ricciDecompositionClosed : G.ricciDecomposition
  weylTensorVanishingClosed : G.weylTensorVanishing

def WeylStructureGroupClosed (G : WeylStructureGroupPackage) : Prop :=
  G.metricRepresentative ∧ G.conformalInvariance ∧
  G.connectionTorsionFree ∧ G.ricciDecomposition ∧
  G.weylTensorVanishing

theorem weyl_structure_group_closed_from_evidence
    (G : WeylStructureGroupPackage) (E : WeylStructureGroupEvidence G) :
    WeylStructureGroupClosed G := by
  exact And.intro E.metricRepresentativeClosed
    (And.intro E.conformalInvarianceClosed
      (And.intro E.connectionTorsionFreeClosed
        (And.intro E.ricciDecompositionClosed E.weylTensorVanishingClosed)))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse