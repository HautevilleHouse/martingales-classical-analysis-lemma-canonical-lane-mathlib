import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MartingaleCondition (Ω : Type u) [MeasurableSpace Ω] where
  integrable : Prop
  conditionalExpectationCondition : Prop
  integrableTerm : integrable
  conditionalExpectationConditionTerm : conditionalExpectationCondition

structure MartingaleConditionEvidence {Ω : Type u} [MeasurableSpace Ω]
    (M : MartingaleCondition Ω) where
  integrableClosed : M.integrable
  conditionalExpectationConditionClosed : M.conditionalExpectationCondition

def MartingaleConditionClosed {Ω : Type u} [MeasurableSpace Ω]
    (M : MartingaleCondition Ω) : Prop :=
  M.integrable ∧ M.conditionalExpectationCondition

theorem martingale_condition_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω]
    (M : MartingaleCondition Ω) (E : MartingaleConditionEvidence M) :
    MartingaleConditionClosed M := by
  exact And.intro E.integrableClosed E.conditionalExpectationConditionClosed

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse