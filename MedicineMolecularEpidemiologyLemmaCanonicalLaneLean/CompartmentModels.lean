import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  populationType : Type u
  compartmentCount : Nat
  transitionRates : Type v
  initialCondition : Prop
  wellStirredAssumption : Prop
  flowConservation : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  initialConditionClosed : C.initialCondition
  wellStirredAssumptionClosed : C.wellStirredAssumption
  flowConservationClosed : C.flowConservation

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.initialCondition ∧ C.wellStirredAssumption ∧ C.flowConservation

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.initialConditionClosed
    (And.intro E.wellStirredAssumptionClosed E.flowConservationClosed)

end MedicineMolecularEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse