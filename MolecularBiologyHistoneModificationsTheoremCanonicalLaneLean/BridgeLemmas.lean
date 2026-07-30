import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HistoneCodeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse
