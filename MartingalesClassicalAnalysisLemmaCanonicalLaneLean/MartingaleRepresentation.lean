import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesClassicalAnalysisLemmaCanonicalLaneLean.MartingaleConvergenceTheorem

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MartingaleRepresentation (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) where
  M0 : ℝ
  integrand : ℕ → Ω → ℝ
  predictableIntegrand : ∀ n, Measurable (integrand n) (F (n-1))
  representation : ∀ n, M n = M0 + ∑_{k=1}^n integrand k * (M k - M (k-1))

theorem martingale_representation_for_brownian (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) :
    MartingaleRepresentation Ω F ℙ M := by
  sorry

def MartingaleRepresentationClosed (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) : Prop :=
  ∃ (M0 : ℝ) (integrand : ℕ → Ω → ℝ), (∀ n, Measurable (integrand n) (F (n-1))) ∧ (∀ n, M n = M0 + ∑_{k=1}^n integrand k * (M k - M (k-1)))

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse