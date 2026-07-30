import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MartingaleSpace where
  carrier : Type
  probability : Type

structure MartingaleAdmittedObject where
  space : MartingaleSpace
  filtration : Prop
  adaptedProcess : Prop
  integrability : Prop
  martingaleProperty : Prop
  conclusion : martingaleProperty

def MartingaleWitnessClosed (O : MartingaleAdmittedObject) : Prop :=
  O.martingaleProperty

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse