import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean

structure WeylOrdinaryDifferentialGeneralizationsPackage {W : WeylTheoryPackage} {C : WeylCurvatureTensorPackage W}
    {Con : WeylConnectionPackage C} {I : WeylIndexTheoremPackage C Con} where
  odesClassification : Prop
  sturmLiouvilleGeneralization : Prop
  spectralAsymptotics : Prop
  inverseSpectralProblem : Prop
  connectionToStokesPhenomena : Prop

structure WeylODEGeneralizationsEvidence {W : WeylTheoryPackage} {C : WeylCurvatureTensorPackage W}
    {Con : WeylConnectionPackage C} {I : WeylIndexTheoremPackage C Con}
    (G : WeylOrdinaryDifferentialGeneralizationsPackage I) where
  odesClassificationClosed : G.odesClassification
  sturmLiouvilleGeneralizationClosed : G.sturmLiouvilleGeneralization
  spectralAsymptoticsClosed : G.spectralAsymptotics
  inverseSpectralProblemClosed : G.inverseSpectralProblem
  connectionToStokesPhenomenaClosed : G.connectionToStokesPhenomena

def WeylODEGeneralizationsClosed {W : WeylTheoryPackage} {C : WeylCurvatureTensorPackage W}
    {Con : WeylConnectionPackage C} {I : WeylIndexTheoremPackage C Con}
    (G : WeylOrdinaryDifferentialGeneralizationsPackage I) : Prop :=
  G.odesClassification ∧ G.sturmLiouvilleGeneralization ∧ G.spectralAsymptotics ∧
  G.inverseSpectralProblem ∧ G.connectionToStokesPhenomena

theorem weyl_ode_generalizations_closed_from_evidence
    {W : WeylTheoryPackage} {C : WeylCurvatureTensorPackage W}
    {Con : WeylConnectionPackage C} {I : WeylIndexTheoremPackage C Con}
    (G : WeylOrdinaryDifferentialGeneralizationsPackage I) (E : WeylODEGeneralizationsEvidence G) :
    WeylODEGeneralizationsClosed G := by
  exact And.intro E.odesClassificationClosed (And.intro E.sturmLiouvilleGeneralizationClosed
    (And.intro E.spectralAsymptoticsClosed (And.intro E.inverseSpectralProblemClosed E.connectionToStokesPhenomenaClosed)))

end WeylTheoryGeneralizationsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse