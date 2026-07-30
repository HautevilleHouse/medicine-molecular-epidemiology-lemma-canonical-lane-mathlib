import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyLemmaCanonicalLaneLean

structure PopulationStratificationPackage where
  subpopulationDefinition : Prop
  incidenceRates : Prop
  confoundingControl : Prop
  interactionTerms : Prop

structure PopulationStratificationEvidence (P : PopulationStratificationPackage) where
  subpopulationDefinitionClosed : P.subpopulationDefinition
  incidenceRatesClosed : P.incidenceRates
  confoundingControlClosed : P.confoundingControl
  interactionTermsClosed : P.interactionTerms

def PopulationStratificationClosed (P : PopulationStratificationPackage) : Prop :=
  P.subpopulationDefinition ∧ P.incidenceRates ∧ P.confoundingControl ∧ P.interactionTerms

theorem population_stratification_closed_from_evidence
    (P : PopulationStratificationPackage) (E : PopulationStratificationEvidence P) :
    PopulationStratificationClosed P := by
  exact And.intro E.subpopulationDefinitionClosed
    (And.intro E.incidenceRatesClosed
      (And.intro E.confoundingControlClosed E.interactionTermsClosed))

end MedicineMolecularEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse