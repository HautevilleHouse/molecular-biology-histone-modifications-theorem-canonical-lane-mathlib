import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneAcetyltransferasePackage where
  substrateRecognition : Prop
  acetylCoABinding : Prop
  catalyticMechanism : Prop
  acetylationSiteSpecificity : Prop
  transcriptionalActivation : Prop

structure HistoneAcetyltransferaseEvidence (H : HistoneAcetyltransferasePackage) where
  substrateRecognitionClosed : H.substrateRecognition
  acetylCoABindingClosed : H.acetylCoABinding
  catalyticMechanismClosed : H.catalyticMechanism
  acetylationSiteSpecificityClosed : H.acetylationSiteSpecificity
  transcriptionalActivationClosed : H.transcriptionalActivation

def HistoneAcetyltransferaseClosed (H : HistoneAcetyltransferasePackage) : Prop :=
  H.substrateRecognition ∧ H.acetylCoABinding ∧ H.catalyticMechanism ∧
  H.acetylationSiteSpecificity ∧ H.transcriptionalActivation

theorem histone_acetyltransferase_closed_from_evidence
    (H : HistoneAcetyltransferasePackage) (E : HistoneAcetyltransferaseEvidence H) :
    HistoneAcetyltransferaseClosed H := by
  exact And.intro E.substrateRecognitionClosed
    (And.intro E.acetylCoABindingClosed
      (And.intro E.catalyticMechanismClosed
        (And.intro E.acetylationSiteSpecificityClosed E.transcriptionalActivationClosed)))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse