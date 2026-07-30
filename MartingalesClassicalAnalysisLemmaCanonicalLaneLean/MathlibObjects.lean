import MartingalesClassicalAnalysisLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Probability.Martingale

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MartingaleSpace where
  carrier : Type
  filtration : Nat → Set (Set carrier)
  probability : Measure carrier

structure MartingaleAdmittedObject where
  space : MartingaleSpace
  adaptedProcess : Nat → (carrier → ℝ)
  integrable : ∀ n, Integrable (adaptedProcess n)
  martingaleProperty : ∀ n m, n ≤ m → conditionalExpectation (adaptedProcess m) (filtration n) = adaptedProcess n
  conclusion : martingaleProperty

structure MartingaleEndgameState where
  object : MartingaleAdmittedObject

def MartingaleWitnessClosed (O : MartingaleAdmittedObject) : Prop :=
  O.martingaleProperty

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse