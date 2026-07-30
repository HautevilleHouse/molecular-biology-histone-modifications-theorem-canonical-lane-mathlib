import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.ChromatinRemodeling

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure TranscriptionalRegulationPackage where
  rnaPolymeraseRecruitment : Prop
  transcriptionFactorBinding : Prop
  elongationSplicing : Prop
  mrnaExport : Prop

structure TranscriptionalRegulationEvidence (T : TranscriptionalRegulationPackage) where
  rnaPolymeraseRecruitmentClosed : T.rnaPolymeraseRecruitment
  transcriptionFactorBindingClosed : T.transcriptionFactorBinding
  elongationSplicingClosed : T.elongationSplicing
  mrnaExportClosed : T.mrnaExport

def TranscriptionalRegulationClosed (T : TranscriptionalRegulationPackage) : Prop :=
  T.rnaPolymeraseRecruitment ∧ T.transcriptionFactorBinding ∧ T.elongationSplicing ∧ T.mrnaExport

theorem transcriptional_regulation_closed_from_evidence (T : TranscriptionalRegulationPackage) (E : TranscriptionalRegulationEvidence T) : TranscriptionalRegulationClosed T := by
  exact And.intro E.rnaPolymeraseRecruitmentClosed (And.intro E.transcriptionFactorBindingClosed (And.intro E.elongationSplicingClosed E.mrnaExportClosed))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse