import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyLemmaCanonicalLaneLean

structure PharmacokineticModelPackage where
  drugDosingRegimen : Type
  absorptionDistributionMetabolismExcretion : Prop
  plasmaConcentrationCurve : Prop
  areaUnderTheCurve : Prop
  clearanceVolume : Prop
  halfLife : Prop
  bioavailability : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  absorptionDistributionMetabolismExcretionClosed : P.absorptionDistributionMetabolismExcretion
  plasmaConcentrationCurveClosed : P.plasmaConcentrationCurve
  areaUnderTheCurveClosed : P.areaUnderTheCurve
  clearanceVolumeClosed : P.clearanceVolume
  halfLifeClosed : P.halfLife
  bioavailabilityClosed : P.bioavailability

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.absorptionDistributionMetabolismExcretion ∧ P.plasmaConcentrationCurve ∧
  P.areaUnderTheCurve ∧ P.clearanceVolume ∧ P.halfLife ∧ P.bioavailability

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.absorptionDistributionMetabolismExcretionClosed
    (And.intro E.plasmaConcentrationCurveClosed
      (And.intro E.areaUnderTheCurveClosed
        (And.intro E.clearanceVolumeClosed
          (And.intro E.halfLifeClosed E.bioavailabilityClosed))))

end MedicineMolecularEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse