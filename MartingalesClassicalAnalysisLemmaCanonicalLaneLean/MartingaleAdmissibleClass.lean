import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MartingaleAdmissibleObject where
  filtration : Type u
  adaptedProcess : filtration → Prop
  martingaleProperty : Prop
  finalValue : Prop

structure MartingaleAdmissibleClass extends AdmissibleClass where
  martingaleObject : MartingaleAdmissibleObject
  martingaleClosed : martingaleObject.martingaleProperty

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse