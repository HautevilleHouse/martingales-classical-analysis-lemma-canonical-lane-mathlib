import MartingalesClassicalAnalysisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def martingaleProjection : Projection MartingaleEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem martingale_projection_idempotent (x : MartingaleEndgameState) :
    martingaleProjection.toFun (martingaleProjection.toFun x) = martingaleProjection.toFun x := by
  exact martingaleProjection.idempotent x

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse