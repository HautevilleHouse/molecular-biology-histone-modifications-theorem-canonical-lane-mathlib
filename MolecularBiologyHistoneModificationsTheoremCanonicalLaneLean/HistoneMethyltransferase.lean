import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneMethyltransferasePackage where
  substrateRecognition : Prop
  methylDonorBinding : Prop
  catalyticActivity : Prop
  methylationStateProcessivity : Prop
  epigeneticMemoryMaintenance : Prop

structure HistoneMethyltransferaseEvidence (H : HistoneMethyltransferasePackage) where
  substrateRecognitionClosed : H.substrateRecognition
  methylDonorBindingClosed : H.methylDonorBinding
  catalyticActivityClosed : H.catalyticActivity
  methylationStateProcessivityClosed : H.methylationStateProcessivity
  epigeneticMemoryMaintenanceClosed : H.epigeneticMemoryMaintenance

def HistoneMethyltransferaseClosed (H : HistoneMethyltransferasePackage) : Prop :=
  H.substrateRecognition ∧ H.methylDonorBinding ∧ H.catalyticActivity ∧
  H.methylationStateProcessivity ∧ H.epigeneticMemoryMaintenance

theorem histone_methyltransferase_closed_from_evidence
    (H : HistoneMethyltransferasePackage) (E : HistoneMethyltransferaseEvidence H) :
    HistoneMethyltransferaseClosed H := by
  exact And.intro E.substrateRecognitionClosed
    (And.intro E.methylDonorBindingClosed
      (And.intro E.catalyticActivityClosed
        (And.intro E.methylationStateProcessivityClosed E.epigeneticMemoryMaintenanceClosed)))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse