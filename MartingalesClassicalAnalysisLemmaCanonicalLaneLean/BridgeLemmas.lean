import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesClassicalAnalysisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MartingaleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MartingalesClassicalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse