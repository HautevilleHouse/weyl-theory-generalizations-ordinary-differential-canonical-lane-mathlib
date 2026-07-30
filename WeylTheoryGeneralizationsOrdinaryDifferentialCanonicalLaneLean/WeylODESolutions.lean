import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylODESolutionsPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  weylConnection : Type v
  ordinaryDifferentialSystem : Type w
  solutionSpace : Type x
  odesDefined : Prop
  solutionsExistLocally : Prop
  solutionsExtendGlobally : Prop
  wronskianNonvanishing : Prop
  monodromyRepresentation : Prop
  monodromyRepConsistent : monodromyRepresentation → Prop
  monodromyRepConsistentTerm : monodromyRepConsistent

structure WeylODESolutionsEvidence (S : WeylODESolutionsPackage) where
  odesDefinedClosed : S.odesDefined
  solutionsExistLocallyClosed : S.solutionsExistLocally
  solutionsExtendGloballyClosed : S.solutionsExtendGlobally
  wronskianNonvanishingClosed : S.wronskianNonvanishing
  monodromyRepresentationClosed : S.monodromyRepresentation

def WeylODESolutionsClosed (S : WeylODESolutionsPackage) : Prop :=
  S.odesDefined ∧ S.solutionsExistLocally ∧ S.solutionsExtendGlobally ∧ S.wronskianNonvanishing ∧ S.monodromyRepresentation

theorem weyl_ode_solutions_closed_from_evidence
    (S : WeylODESolutionsPackage) (E : WeylODESolutionsEvidence S) :
    WeylODESolutionsClosed S := by
  exact And.intro E.odesDefinedClosed
    (And.intro E.solutionsExistLocallyClosed
      (And.intro E.solutionsExtendGloballyClosed
        (And.intro E.wronskianNonvanishingClosed E.monodromyRepresentationClosed)))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse