import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  populationGroups : Type
  transitionRates : Type
  systemOfOdes : Prop
  conservationLaw : Prop
  basicReproductionNumber : Prop
  equilibriumAnalysis : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  systemOfOdesClosed : C.systemOfOdes
  conservationLawClosed : C.conservationLaw
  basicReproductionNumberClosed : C.basicReproductionNumber
  equilibriumAnalysisClosed : C.equilibriumAnalysis

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.systemOfOdes ∧ C.conservationLaw ∧ C.basicReproductionNumber ∧ C.equilibriumAnalysis

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.systemOfOdesClosed (And.intro E.conservationLawClosed
    (And.intro E.basicReproductionNumberClosed E.equilibriumAnalysisClosed))

end MedicineMolecularEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse