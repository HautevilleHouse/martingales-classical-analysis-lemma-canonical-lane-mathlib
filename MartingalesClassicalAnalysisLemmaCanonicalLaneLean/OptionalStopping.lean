import MartingaleAdmittedObject

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure OptionalStoppingPackage where
  martingale : MartingaleAdmittedObject
  stoppingTimes : Prop
  stoppedProcess : Prop
  optionalStoppingTheorem : Prop

def OptionalStoppingClosed (O : OptionalStoppingPackage) : Prop :=
  O.stoppingTimes ∧ O.stoppedProcess ∧ O.optionalStoppingTheorem

theorem optional_stopping_closure (O : OptionalStoppingPackage) (h : OptionalStoppingClosed O) :
    OptionalStoppingClosed O := h

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse