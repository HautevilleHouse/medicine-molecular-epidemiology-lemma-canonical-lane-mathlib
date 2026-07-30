import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyLemmaCanonicalLaneLean

structure PharmacokineticsPackage where
  drugConcentration : Type u → Type v
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeDistribution : ℝ
  clearanceRate : ℝ

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.clearanceRate > 0 ∧ P.volumeDistribution > 0

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage)
    (h : P.clearanceRate > 0 ∧ P.volumeDistribution > 0) : PharmacokineticsClosed P :=
  h

end MedicineMolecularEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse