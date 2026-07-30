import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.EnzymeRecruitmentEvidence

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure EpigeneticRegulationCircuitPackage {C : ChromatinStatePackage}
    {H : HistoneModificationDynamicsPackage C}
    (E : EnzymeRecruitmentEvidencePackage H) where
  feedbackLoop : Prop
  signalIntegration : Prop
  stableMaintenance : Prop
  feedbackLoopEvidence : feedbackLoop
  signalIntegrationEvidence : signalIntegration
  stableMaintenanceEvidence : stableMaintenance

structure EpigeneticRegulationCircuitEvidence {C : ChromatinStatePackage}
    {H : HistoneModificationDynamicsPackage C}
    {E : EnzymeRecruitmentEvidencePackage H}
    (R : EpigeneticRegulationCircuitPackage E) where
  feedbackLoopClosed : R.feedbackLoop
  signalIntegrationClosed : R.signalIntegration
  stableMaintenanceClosed : R.stableMaintenance

def EpigeneticRegulationCircuitClosed {C : ChromatinStatePackage}
    {H : HistoneModificationDynamicsPackage C}
    {E : EnzymeRecruitmentEvidencePackage H}
    (R : EpigeneticRegulationCircuitPackage E) : Prop :=
  R.feedbackLoop ∧ R.signalIntegration ∧ R.stableMaintenance

theorem epigenetic_regulation_circuit_closed_from_evidence
    {C : ChromatinStatePackage} {H : HistoneModificationDynamicsPackage C}
    {E : EnzymeRecruitmentEvidencePackage H}
    (R : EpigeneticRegulationCircuitPackage E)
    (Ev : EpigeneticRegulationCircuitEvidence R) : EpigeneticRegulationCircuitClosed R := by
  exact And.intro Ev.feedbackLoopClosed
    (And.intro Ev.signalIntegrationClosed Ev.stableMaintenanceClosed)

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse