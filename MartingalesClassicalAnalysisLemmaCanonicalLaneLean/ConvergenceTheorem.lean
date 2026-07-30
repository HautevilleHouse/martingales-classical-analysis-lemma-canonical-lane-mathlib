import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesClassicalAnalysisLemmaCanonicalLaneLean.MartingaleCondition

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure ConvergenceTheorem (Ω : Type u) [MeasurableSpace Ω] where
  martingale : MartingaleCondition Ω
  almostSureConvergence : Prop
  limitIntegrable : Prop
  almostSureConvergenceTerm : almostSureConvergence
  limitIntegrableTerm : limitIntegrable

structure ConvergenceTheoremEvidence {Ω : Type u} [MeasurableSpace Ω]
    (C : ConvergenceTheorem Ω) where
  almostSureConvergenceClosed : C.almostSureConvergence
  limitIntegrableClosed : C.limitIntegrable

def ConvergenceTheoremClosed {Ω : Type u} [MeasurableSpace Ω]
    (C : ConvergenceTheorem Ω) : Prop :=
  C.almostSureConvergence ∧ C.limitIntegrable

theorem convergence_theorem_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω]
    (C : ConvergenceTheorem Ω) (E : ConvergenceTheoremEvidence C) :
    ConvergenceTheoremClosed C := by
  exact And.intro E.almostSureConvergenceClosed E.limitIntegrableClosed

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse