import MartingaleAdmittedObject

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure DoobMaximalInequalityPackage where
  martingale : MartingaleAdmittedObject
  maximalFunction : Prop
  inequality : Prop
  LpBound : Prop
  rightContinuity : Prop

def DoobMaximalInequalityClosed (D : DoobMaximalInequalityPackage) : Prop :=
  D.maximalFunction ∧ D.inequality ∧ D.LpBound ∧ D.rightContinuity

theorem doob_maximal_inequality_closure (D : DoobMaximalInequalityPackage) (h : DoobMaximalInequalityClosed D) :
    DoobMaximalInequalityClosed D := h

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse