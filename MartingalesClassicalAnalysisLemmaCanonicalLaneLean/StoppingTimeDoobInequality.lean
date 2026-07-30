import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesClassicalAnalysisLemmaCanonicalLaneLean.MartingaleBasicDefinitions

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure StoppingTime (Ω : Type u) (F : ℕ → Set (Set Ω)) where
  τ : Ω → ℕ
  stoppingProperty : ∀ n, {ω | τ ω ≤ n} ∈ F n

structure DoobMaximalInequality (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) where
  p : ℝ
  pGt1 : p > 1
  inequality : ∀ n, ℙ[sup_{k ≤ n} |M k| > λ] ≤ (1 / λ)^p * 𝔼[|M n|^p]

theorem doob_inequality_holds (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) :
    DoobMaximalInequality Ω F ℙ M := by
  sorry

def DoobInequalityClosed (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) : Prop :=
  ∃ (p : ℝ), p > 1 ∧ ∀ n λ, ℙ[sup_{k ≤ n} |M k| > λ] ≤ (1 / λ)^p * 𝔼[|M n|^p]

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse