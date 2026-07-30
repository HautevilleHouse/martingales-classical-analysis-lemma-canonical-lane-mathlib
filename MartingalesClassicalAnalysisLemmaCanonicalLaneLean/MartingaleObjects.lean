import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MartingaleProcess (Ω : Type u) [MeasurableSpace Ω] where
  filtration : Filtration Ω
  adapted : Prop
  integrable : Prop
  conditionalExpectationEq : Prop

structure AdmittedMartingaleObject where
  process : MartingaleProcess ℕ
  statement : Prop
  conclusion : statement

def MartingaleWitnessClosed (O : AdmittedMartingaleObject) : Prop :=
  O.statement

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse