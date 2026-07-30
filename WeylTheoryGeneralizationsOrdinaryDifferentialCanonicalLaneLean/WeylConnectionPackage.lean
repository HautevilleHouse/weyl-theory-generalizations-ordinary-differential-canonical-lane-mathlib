import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylConnectionPackage {W : WeylTheoryPackage} (C : WeylCurvatureTensorPackage W) where
  connectionOneForm : Type u
  lengthConnection : Prop
  projectiveClass : Prop
  holonomyGroup : Type v
  torsionFreeCondition : Prop
  metricCompatibilityGeneralized : Prop

structure WeylConnectionEvidence {W : WeylTheoryPackage} {C : WeylCurvatureTensorPackage W} (Con : WeylConnectionPackage C) where
  lengthConnectionClosed : Con.lengthConnection
  projectiveClassClosed : Con.projectiveClass
  torsionFreeConditionClosed : Con.torsionFreeCondition
  metricCompatibilityGeneralizedClosed : Con.metricCompatibilityGeneralized

def WeylConnectionClosed {W : WeylTheoryPackage} {C : WeylCurvatureTensorPackage W} (Con : WeylConnectionPackage C) : Prop :=
  Con.lengthConnection ∧ Con.projectiveClass ∧ Con.torsionFreeCondition ∧ Con.metricCompatibilityGeneralized

theorem weyl_connection_closed_from_evidence
    {W : WeylTheoryPackage} {C : WeylCurvatureTensorPackage W} (Con : WeylConnectionPackage C)
    (E : WeylConnectionEvidence Con) : WeylConnectionClosed Con := by
  exact And.intro E.lengthConnectionClosed (And.intro E.projectiveClassClosed
    (And.intro E.torsionFreeConditionClosed E.metricCompatibilityGeneralizedClosed))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse