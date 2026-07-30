import canonicalLaneMathlib.AdmissibleClass

/-!
# Weyl Connection Cohomology Package
-/

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylConnectionCohomologyPackage {W : WeylStructurePackage}
    (O : OrdinaryDifferentialOperatorPackage W) where
  connectionCohomologyGroups : Type u
  weylCurvatureCohomologyClass : Prop
  characteristicClasses : Prop
  indexPairing : Prop
  cohomologicalInvariant : Prop

structure WeylConnectionCohomologyEvidence {W : WeylStructurePackage}
    {O : OrdinaryDifferentialOperatorPackage W}
    (C : WeylConnectionCohomologyPackage O) where
  weylCurvatureCohomologyClassClosed : C.weylCurvatureCohomologyClass
  characteristicClassesClosed : C.characteristicClasses
  indexPairingClosed : C.indexPairing
  cohomologicalInvariantClosed : C.cohomologicalInvariant

def WeylConnectionCohomologyClosed {W : WeylStructurePackage}
    {O : OrdinaryDifferentialOperatorPackage W}
    (C : WeylConnectionCohomologyPackage O) : Prop :=
  C.weylCurvatureCohomologyClass ∧ C.characteristicClasses ∧
  C.indexPairing ∧ C.cohomologicalInvariant

theorem weyl_connection_cohomology_closed_from_evidence
    {W : WeylStructurePackage} {O : OrdinaryDifferentialOperatorPackage W}
    (C : WeylConnectionCohomologyPackage O)
    (E : WeylConnectionCohomologyEvidence C) :
    WeylConnectionCohomologyClosed C := by
  exact And.intro E.weylCurvatureCohomologyClassClosed
    (And.intro E.characteristicClassesClosed
      (And.intro E.indexPairingClosed E.cohomologicalInvariantClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse