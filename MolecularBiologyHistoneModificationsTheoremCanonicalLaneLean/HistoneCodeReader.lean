import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneCodeReaderPackage where
  bromodomainAcetylLysine : Prop
  chromodomainMethylLysine : Prop
  tudorDomainMethylArginine : Prop
  phdDomainUnmodified : Prop
  combinatorialRecognition : Prop

structure HistoneCodeReaderEvidence (H : HistoneCodeReaderPackage) where
  bromodomainAcetylLysineClosed : H.bromodomainAcetylLysine
  chromodomainMethylLysineClosed : H.chromodomainMethylLysine
  tudorDomainMethylArginineClosed : H.tudorDomainMethylArginine
  phdDomainUnmodifiedClosed : H.phdDomainUnmodified
  combinatorialRecognitionClosed : H.combinatorialRecognition

def HistoneCodeReaderClosed (H : HistoneCodeReaderPackage) : Prop :=
  H.bromodomainAcetylLysine ∧ H.chromodomainMethylLysine ∧
  H.tudorDomainMethylArginine ∧ H.phdDomainUnmodified ∧ H.combinatorialRecognition

theorem histone_code_reader_closed_from_evidence
    (H : HistoneCodeReaderPackage) (E : HistoneCodeReaderEvidence H) :
    HistoneCodeReaderClosed H := by
  exact And.intro E.bromodomainAcetylLysineClosed
    (And.intro E.chromodomainMethylLysineClosed
      (And.intro E.tudorDomainMethylArginineClosed
        (And.intro E.phdDomainUnmodifiedClosed E.combinatorialRecognitionClosed)))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse