import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure StoppingTime (Ω : Type u) [MeasurableSpace Ω] where
  time : Ω -> ENNReal
  adapted : Prop
  adaptedTerm : adapted

structure StoppingTimeEvidence {Ω : Type u} [MeasurableSpace Ω]
    (τ : StoppingTime Ω) where
  adaptedClosed : τ.adapted

def StoppingTimeClosed {Ω : Type u} [MeasurableSpace Ω]
    (τ : StoppingTime Ω) : Prop :=
  τ.adapted

theorem stopping_time_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω]
    (τ : StoppingTime Ω) (E : StoppingTimeEvidence τ) :
    StoppingTimeClosed τ := by
  exact E.adaptedClosed

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse