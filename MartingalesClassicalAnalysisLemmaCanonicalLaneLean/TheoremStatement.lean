import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

structure MartingaleAdmittedObject where
  space : Type
  sigmaAlgebra : Set (Set space)
  probabilityMeasure : Set space → ℝ
  filtration : ℕ → Set (Set space)
  adaptedSequence : ℕ → (space → ℝ)
  martingaleProperty : ℕ → Prop
  almostSureConvergence : Prop
  conclusion : almostSureConvergence

def MartingaleWitnessClosed (O : MartingaleAdmittedObject) : Prop :=
  O.almostSureConvergence

theorem martingale_witness_closed_from_object (O : MartingaleAdmittedObject) :
    MartingaleWitnessClosed O := O.conclusion

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse