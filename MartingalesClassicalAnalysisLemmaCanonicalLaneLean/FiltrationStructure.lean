import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure FiltrationStructure where
  indexSet : Type u
  sigmaAlgebras : indexSet -> Type v
  measurability : Prop
  monotonicity : Prop
  measurabilityTerm : measurability
  monotonicityTerm : monotonicity

structure FiltrationEvidence (F : FiltrationStructure) where
  measurabilityClosed : F.measurability
  monotonicityClosed : F.monotonicity

def FiltrationClosed (F : FiltrationStructure) : Prop :=
  F.measurability ∧ F.monotonicity

theorem filtration_closed_from_evidence (F : FiltrationStructure)
    (E : FiltrationEvidence F) : FiltrationClosed F := by
  exact And.intro E.measurabilityClosed E.monotonicityClosed

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse