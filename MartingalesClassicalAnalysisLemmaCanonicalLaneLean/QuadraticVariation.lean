import MartingaleAdmittedObject

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure QuadraticVariationPackage where
  martingale : MartingaleAdmittedObject
  quadraticVariationProcess : Prop
  kunitaWatanabeInequality : Prop

def QuadraticVariationClosed (Q : QuadraticVariationPackage) : Prop :=
  Q.quadraticVariationProcess ∧ Q.kunitaWatanabeInequality

theorem quadratic_variation_closure (Q : QuadraticVariationPackage) (h : QuadraticVariationClosed Q) :
    QuadraticVariationClosed Q := h

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse