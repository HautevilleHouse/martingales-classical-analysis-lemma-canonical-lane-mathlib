import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MartingaleConvergencePackage (A : MartingaleAdmissibleClass) where
  convergenceInProbability : Prop
  almostSureConvergence : Prop
  rateOfConvergence : Prop
  limitMoments : Prop

def MartingaleConvergenceClosed (A : MartingaleAdmissibleClass) (C : MartingaleConvergencePackage A) : Prop :=
  C.convergenceInProbability ∧ C.almostSureConvergence ∧ C.rateOfConvergence ∧ C.limitMoments

theorem martingale_convergence_closed_from_evidence (A : MartingaleAdmissibleClass) (C : MartingaleConvergencePackage A) (h : C.convergenceInProbability ∧ C.almostSureConvergence ∧ C.rateOfConvergence ∧ C.limitMoments) : MartingaleConvergenceClosed A C := by
  exact h

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse