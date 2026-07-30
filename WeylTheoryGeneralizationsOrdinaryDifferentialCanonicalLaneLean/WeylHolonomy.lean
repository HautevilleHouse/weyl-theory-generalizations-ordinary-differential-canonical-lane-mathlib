import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylHolonomyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  weylConnection : Type v
  holonomyGroup : Type w
  holonomyLieAlgebra : Type x
  weylHolonomyReducible : Prop
  holonomyGroupSubgroupOfConformalGroup : Prop
  holonomyAlgebraClosedUnderConformalTransformations : Prop
  parallelTransportDefined : Prop
  holonomyGroupClosed : Prop
  holonomyAlgebraClosed : Prop

structure WeylHolonomyEvidence (H : WeylHolonomyPackage) where
  weylHolonomyReducibleClosed : H.weylHolonomyReducible
  holonomyGroupSubgroupOfConformalGroupClosed : H.holonomyGroupSubgroupOfConformalGroup
  holonomyAlgebraClosedUnderConformalTransformationsClosed : H.holonomyAlgebraClosedUnderConformalTransformations
  parallelTransportDefinedClosed : H.parallelTransportDefined
  holonomyGroupClosedClosed : H.holonomyGroupClosed
  holonomyAlgebraClosedClosed : H.holonomyAlgebraClosed

def WeylHolonomyClosed (H : WeylHolonomyPackage) : Prop :=
  H.weylHolonomyReducible ∧ H.holonomyGroupSubgroupOfConformalGroup ∧
  H.holonomyAlgebraClosedUnderConformalTransformations ∧ H.parallelTransportDefined ∧
  H.holonomyGroupClosed ∧ H.holonomyAlgebraClosed

theorem weyl_holonomy_closed_from_evidence (H : WeylHolonomyPackage) (E : WeylHolonomyEvidence H) :
    WeylHolonomyClosed H := by
  exact And.intro E.weylHolonomyReducibleClosed
    (And.intro E.holonomyGroupSubgroupOfConformalGroupClosed
      (And.intro E.holonomyAlgebraClosedUnderConformalTransformationsClosed
        (And.intro E.parallelTransportDefinedClosed
          (And.intro E.holonomyGroupClosedClosed E.holonomyAlgebraClosedClosed))))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse