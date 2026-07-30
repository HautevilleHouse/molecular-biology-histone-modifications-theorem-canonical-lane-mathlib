import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneModificationCrossTalkPackage where
  methylationAcetylationSwitch : Prop
  ubiquitinationPhosphorylation : Prop
  modificationCascades : Prop
  positiveFeedbackLoops : Prop
  combinatorialOutcome : Prop

structure HistoneModificationCrossTalkEvidence (H : HistoneModificationCrossTalkPackage) where
  methylationAcetylationSwitchClosed : H.methylationAcetylationSwitch
  ubiquitinationPhosphorylationClosed : H.ubiquitinationPhosphorylation
  modificationCascadesClosed : H.modificationCascades
  positiveFeedbackLoopsClosed : H.positiveFeedbackLoops
  combinatorialOutcomeClosed : H.combinatorialOutcome

def HistoneModificationCrossTalkClosed (H : HistoneModificationCrossTalkPackage) : Prop :=
  H.methylationAcetylationSwitch ∧ H.ubiquitinationPhosphorylation ∧
  H.modificationCascades ∧ H.positiveFeedbackLoops ∧ H.combinatorialOutcome

theorem histone_modification_cross_talk_closed_from_evidence
    (H : HistoneModificationCrossTalkPackage) (E : HistoneModificationCrossTalkEvidence H) :
    HistoneModificationCrossTalkClosed H := by
  exact And.intro E.methylationAcetylationSwitchClosed
    (And.intro E.ubiquitinationPhosphorylationClosed
      (And.intro E.modificationCascadesClosed
        (And.intro E.positiveFeedbackLoopsClosed E.combinatorialOutcomeClosed)))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse