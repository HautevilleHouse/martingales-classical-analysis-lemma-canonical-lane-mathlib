import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesClassicalAnalysisLemmaCanonicalLaneLean.StoppingTimeDoobInequality

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MartingaleConvergence (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) where
  boundedInL1 : sup_n 𝔼[|M n|] < ∞
  limitExists : ∃ (X∞ : Ω → ℝ), ∀ ω, lim_{n→∞} M n ω = X∞ ω
  integrableLimit : Integrable X∞ ℙ

theorem martingale_convergence_theorem (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) :
    MartingaleConvergence Ω F ℙ M := by
  sorry

def MartingaleConvergenceClosed (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) : Prop :=
  (sup_n 𝔼[|M n|] < ∞) ∧ (∃ (X∞ : Ω → ℝ), ∀ ω, lim_{n→∞} M n ω = X∞ ω) ∧ Integrable X∞ ℙ

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse