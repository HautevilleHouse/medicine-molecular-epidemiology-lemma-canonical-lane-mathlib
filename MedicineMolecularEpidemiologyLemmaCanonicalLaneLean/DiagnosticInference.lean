import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyLemmaCanonicalLaneLean

structure DiagnosticTestPackage where
  testSensitivity : Prop
  testSpecificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  likelihoodRatio : Prop
  rocCurve : Prop

structure DiagnosticTestEvidence (D : DiagnosticTestPackage) where
  testSensitivityClosed : D.testSensitivity
  testSpecificityClosed : D.testSpecificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatioClosed : D.likelihoodRatio
  rocCurveClosed : D.rocCurve

def DiagnosticTestClosed (D : DiagnosticTestPackage) : Prop :=
  D.testSensitivity ∧ D.testSpecificity ∧ D.positivePredictiveValue ∧
  D.negativePredictiveValue ∧ D.likelihoodRatio ∧ D.rocCurve

theorem diagnostic_test_closed_from_evidence (D : DiagnosticTestPackage)
    (E : DiagnosticTestEvidence D) : DiagnosticTestClosed D := by
  exact And.intro E.testSensitivityClosed
    (And.intro E.testSpecificityClosed
      (And.intro E.positivePredictiveValueClosed
        (And.intro E.negativePredictiveValueClosed
          (And.intro E.likelihoodRatioClosed E.rocCurveClosed))))

end MedicineMolecularEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse