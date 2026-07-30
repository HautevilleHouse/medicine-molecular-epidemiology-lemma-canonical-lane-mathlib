import canonicalLaneMathlib.AdmissibleClass
import MedicineMolecularEpidemiologyLemmaCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyLemmaCanonicalLaneLean

structure EndemicEquilibriumPackage {C : CompartmentModel} (M : CompartmentModelClosed C) where
  basicReproductiveNumber : ℝ
  endemicPrevalence : ℝ
  stabilityCondition : Prop
  herdImmunityThreshold : ℝ

tructure EndemicEquilibriumEvidence {C : CompartmentModel}
    {M : CompartmentModelClosed C} (E : EndemicEquilibriumPackage M) where
  r0Computed : E.basicReproductiveNumber = C.transmissionRate / C.recoveryRate
  prevalenceComputed : E.endemicPrevalence = 1 - 1 / E.basicReproductiveNumber
  stabilityConditionClosed : E.stabilityCondition
  herdImmunityThresholdComputed : E.herdImmunityThreshold = 1 - 1 / E.basicReproductiveNumber

def EndemicEquilibriumClosed {C : CompartmentModel}
    {M : CompartmentModelClosed C} (E : EndemicEquilibriumPackage M) : Prop :=
  E.basicReproductiveNumber = C.transmissionRate / C.recoveryRate ∧
  E.endemicPrevalence = 1 - 1 / E.basicReproductiveNumber ∧
  E.stabilityCondition ∧
  E.herdImmunityThreshold = 1 - 1 / E.basicReproductiveNumber

theorem endemic_equilibrium_closed_from_evidence {C : CompartmentModel}
    {M : CompartmentModelClosed C} (E : EndemicEquilibriumPackage M)
    (Ev : EndemicEquilibriumEvidence E) : EndemicEquilibriumClosed E := by
  exact And.intro Ev.r0Computed
    (And.intro Ev.prevalenceComputed
      (And.intro Ev.stabilityConditionClosed Ev.herdImmunityThresholdComputed))

end MedicineMolecularEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse