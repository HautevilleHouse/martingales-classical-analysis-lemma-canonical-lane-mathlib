import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesClassicalAnalysisLemmaCanonicalLaneLean.MartingaleCondition

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MaximalInequality (Ω : Type u) [MeasurableSpace Ω] where
  martingale : MartingaleCondition Ω
  bound : Prop
  inequality : Prop
  boundTerm : bound
  inequalityTerm : inequality

structure MaximalInequalityEvidence {Ω : Type u} [MeasurableSpace Ω]
    (M : MaximalInequality Ω) where
  boundClosed : M.bound
  inequalityClosed : M.inequality

def MaximalInequalityClosed {Ω : Type u} [MeasurableSpace Ω]
    (M : MaximalInequality Ω) : Prop :=
  M.bound ∧ M.inequality

theorem maximal_inequality_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω]
    (M : MaximalInequality Ω) (E : MaximalInequalityEvidence M) :
    MaximalInequalityClosed M := by
  exact And.intro E.boundClosed E.inequalityClosed

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse