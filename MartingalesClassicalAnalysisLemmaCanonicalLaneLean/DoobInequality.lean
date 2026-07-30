import MartingalesClassicalAnalysisLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure DoobInequalityPackage {M : MartingaleSpace} (X : Nat → (M.carrier → ℝ)) where
  submartingale : ∀ n, Integrable (X n) ∧ ∀ n m, n ≤ m → conditionalExpectation (X m) (M.filtration n) ≥ X n
  maxInequality : ∀ λ > 0, M.probability {ω | max_{k ≤ n} X k ω ≥ λ} ≤ (1/λ) * ∫ X n dM.probability
  lpInequality : ∀ p > 1, (∫ (max_{k ≤ n} X k)^p dM.probability) ≤ (p/(p-1))^p * ∫ (X n)^p dM.probability
  convergenceTheorem : ∃ X∞, ∀ ω, X n ω → X∞ ω almost surely

structure DoobInequalityEvidence {M : MartingaleSpace} {X : Nat → (M.carrier → ℝ)}
    (P : DoobInequalityPackage X) where
  submartingaleClosed : P.submartingale
  maxInequalityClosed : P.maxInequality
  lpInequalityClosed : P.lpInequality
  convergenceClosed : P.convergenceTheorem

def DoobInequalityClosed {M : MartingaleSpace} {X : Nat → (M.carrier → ℝ)}
    (P : DoobInequalityPackage X) : Prop :=
  P.submartingale ∧ P.maxInequality ∧ P.lpInequality ∧ P.convergenceTheorem

theorem doob_inequality_closed_from_evidence {M : MartingaleSpace} {X : Nat → (M.carrier → ℝ)}
    (P : DoobInequalityPackage X) (E : DoobInequalityEvidence P) : DoobInequalityClosed P := by
  exact And.intro E.submartingaleClosed (And.intro E.maxInequalityClosed (And.intro E.lpInequalityClosed E.convergenceClosed))

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse