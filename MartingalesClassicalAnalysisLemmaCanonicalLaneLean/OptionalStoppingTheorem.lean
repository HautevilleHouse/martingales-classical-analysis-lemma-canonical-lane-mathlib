import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesClassicalAnalysisLemmaCanonicalLaneLean.StoppingTimeDoobInequality

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure OptionalStopping (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) (τ σ : StoppingTime Ω F) where
  τBounded : ∃ N, ∀ ω, τ ω ≤ N
  σBounded : ∃ N, ∀ ω, σ ω ≤ N
  stoppedMartingale : Martingale Ω F ℙ (fun n ω => M (min n (τ ω)) ω)
  equality : 𝔼[M τ | F σ] = M (min τ σ)

theorem optional_stopping_theorem (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) (τ σ : StoppingTime Ω F)
    (hτ : ∃ N, ∀ ω, τ ω ≤ N) (hσ : ∃ N, ∀ ω, σ ω ≤ N) :
    OptionalStopping Ω F ℙ M τ σ := by
  sorry

def OptionalStoppingClosed (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) (τ σ : StoppingTime Ω F) : Prop :=
  (∃ N, ∀ ω, τ ω ≤ N) ∧ (∃ N, ∀ ω, σ ω ≤ N) ∧ (Martingale Ω F ℙ (fun n ω => M (min n (τ ω)) ω)) ∧ (𝔼[M τ | F σ] = M (min τ σ))

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse