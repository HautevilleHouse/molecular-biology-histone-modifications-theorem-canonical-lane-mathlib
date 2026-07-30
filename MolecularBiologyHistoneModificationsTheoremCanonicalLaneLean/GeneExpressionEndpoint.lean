import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.EpigeneticRegulationCircuit

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure GeneExpressionEndpointPackage {C : ChromatinStatePackage}
    {H : HistoneModificationDynamicsPackage C}
    {E : EnzymeRecruitmentEvidencePackage H}
    (R : EpigeneticRegulationCircuitPackage E) where
  transcriptionalActivation : Prop
  transcriptionalRepression : Prop
  cellIdentityEstablished : Prop
  transcriptionalActivationEvidence : transcriptionalActivation
  transcriptionalRepressionEvidence : transcriptionalRepression
  cellIdentityEstablishedEvidence : cellIdentityEstablished

structure GeneExpressionEndpointEvidence {C : ChromatinStatePackage}
    {H : HistoneModificationDynamicsPackage C}
    {E : EnzymeRecruitmentEvidencePackage H}
    {R : EpigeneticRegulationCircuitPackage E}
    (G : GeneExpressionEndpointPackage R) where
  transcriptionalActivationClosed : G.transcriptionalActivation
  transcriptionalRepressionClosed : G.transcriptionalRepression
  cellIdentityEstablishedClosed : G.cellIdentityEstablished

def GeneExpressionEndpointClosed {C : ChromatinStatePackage}
    {H : HistoneModificationDynamicsPackage C}
    {E : EnzymeRecruitmentEvidencePackage H}
    {R : EpigeneticRegulationCircuitPackage E}
    (G : GeneExpressionEndpointPackage R) : Prop :=
  G.transcriptionalActivation ∧ G.transcriptionalRepression ∧ G.cellIdentityEstablished

theorem gene_expression_endpoint_closed_from_evidence
    {C : ChromatinStatePackage} {H : HistoneModificationDynamicsPackage C}
    {E : EnzymeRecruitmentEvidencePackage H}
    {R : EpigeneticRegulationCircuitPackage E}
    (G : GeneExpressionEndpointPackage R)
    (Ev : GeneExpressionEndpointEvidence G) : GeneExpressionEndpointClosed G := by
  exact And.intro Ev.transcriptionalActivationClosed
    (And.intro Ev.transcriptionalRepressionClosed Ev.cellIdentityEstablishedClosed)

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse