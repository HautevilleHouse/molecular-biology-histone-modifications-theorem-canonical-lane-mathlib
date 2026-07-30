import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.HistoneModificationMarkers
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.ChromatinRemodelingComplexes
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.HistoneModificationEnzymes
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.EpigeneticRegulationPackage
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.HistoneCodeHypothesisPackage

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneModificationsAdmissibleClass where
  markers : HistoneModificationMarkersPackage
  markersEvidence : HistoneModificationMarkersEvidence markers
  complexes : ChromatinRemodelingComplexesPackage
  complexesEvidence : ChromatinRemodelingComplexesEvidence complexes
  enzymes : HistoneModificationEnzymesPackage
  enzymesEvidence : HistoneModificationEnzymesEvidence enzymes
  regulation : EpigeneticRegulationPackage
  regulationEvidence : EpigeneticRegulationEvidence regulation
  codeHypothesis : HistoneCodeHypothesisPackage
  codeHypothesisEvidence : HistoneCodeHypothesisEvidence codeHypothesis

def bridgeClosed (A : HistoneModificationsAdmissibleClass) : Prop :=
  HistoneModificationMarkersClosed A.markers ∧
  ChromatinRemodelingComplexesClosed A.complexes ∧
  HistoneModificationEnzymesClosed A.enzymes ∧
  EpigeneticRegulationClosed A.regulation ∧
  HistoneCodeHypothesisClosed A.codeHypothesis

theorem bridge_from_admissible_class (A : HistoneModificationsAdmissibleClass) :
    bridgeClosed A := by
  refine And.intro (histone_modification_markers_closed_from_evidence A.markers A.markersEvidence ?_) ?_
  · exact id
  · refine And.intro (chromatin_remodeling_complexes_closed_from_evidence A.complexes A.complexesEvidence ?_) ?_
    · exact id
    · refine And.intro (histone_modification_enzymes_closed_from_evidence A.enzymes A.enzymesEvidence ?_) ?_
      · exact id
      · refine And.intro (epigenetic_regulation_closed_from_evidence A.regulation A.regulationEvidence ?_) ?_
        · exact id
        · exact histone_code_hypothesis_closed_from_evidence A.codeHypothesis A.codeHypothesisEvidence id

def gateClosed (A : HistoneModificationsAdmissibleClass) : Prop :=
  True

theorem gate_from_admissible_class (A : HistoneModificationsAdmissibleClass) :
    gateClosed A := by
  trivial

end HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean