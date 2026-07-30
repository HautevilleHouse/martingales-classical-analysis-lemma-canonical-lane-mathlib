import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure FilteredProbabilitySpace where
  Ω : Type u
  F : ℕ → Set (Set Ω)
  ℙ : Set Ω → ℝ
  filtrationProperties : Prop
  probabilityMeasure : Prop

structure Martingale (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) where
  X : ℕ → Ω → ℝ
  adapted : ∀ n, Measurable (X n) (F n)
  integrable : ∀ n, Integrable (X n) ℙ
  martingaleProperty : ∀ n m, n ≤ m → ℙ[X m | F n] = X n

structure QuadraticVariation (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) (M : Martingale Ω F ℙ) where
  ⟨M⟩ : ℕ → Ω → ℝ
  predictable : ∀ n, Measurable (⟨M⟩ n) (F (n-1))
  compensatorProperty : ∀ n, ℙ[M n ^ 2 - ⟨M⟩ n | F (n-1)] = M (n-1) ^ 2 - ⟨M⟩ (n-1)

def MartingaleAdmittedObject (Ω : Type u) (F : ℕ → Set (Set Ω)) (ℙ : Set Ω → ℝ) : AdmissibleClass where
  object := PoincareAdmittedObject.mk (PoincareSpace.mk Ω inferInstance) True True Unit inferInstance True (by trivial)
  endpointSatisfied := True
  remainderRecorded := True
  gateWitness := Or.inl trivial

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse