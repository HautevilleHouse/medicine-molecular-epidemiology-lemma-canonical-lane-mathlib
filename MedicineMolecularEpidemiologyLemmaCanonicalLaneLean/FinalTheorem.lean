import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedicineMolecularEpidemiologyLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MedicineMolecularEpidemiologyLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyLemmaCanonicalLaneLean

def ConstrainedMolecularEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_molecular_epidemiology_endgame (A : AdmissibleClass) :
    ConstrainedMolecularEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineMolecularEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse