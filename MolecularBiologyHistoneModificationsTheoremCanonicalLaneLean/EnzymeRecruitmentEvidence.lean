import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.HistoneModificationDynamics

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure EnzymeRecruitmentEvidencePackage {C : ChromatinStatePackage}
    (H : HistoneModificationDynamicsPackage C) where
  writerRecruitment : Prop
  eraserRecruitment : Prop
  readerRecruitment : Prop
  writerRecruitmentEvidence : writerRecruitment
  eraserRecruitmentEvidence : eraserRecruitment
  readerRecruitmentEvidence : readerRecruitment

structure EnzymeRecruitmentEvidence {C : ChromatinStatePackage}
    {H : HistoneModificationDynamicsPackage C}
    (E : EnzymeRecruitmentEvidencePackage H) where
  writerRecruitmentClosed : E.writerRecruitment
  eraserRecruitmentClosed : E.eraserRecruitment
  readerRecruitmentClosed : E.readerRecruitment

def EnzymeRecruitmentClosed {C : ChromatinStatePackage}
    {H : HistoneModificationDynamicsPackage C}
    (E : EnzymeRecruitmentEvidencePackage H) : Prop :=
  E.writerRecruitment ∧ E.eraserRecruitment ∧ E.readerRecruitment

theorem enzyme_recruitment_closed_from_evidence
    {C : ChromatinStatePackage} {H : HistoneModificationDynamicsPackage C}
    (E : EnzymeRecruitmentEvidencePackage H)
    (Ev : EnzymeRecruitmentEvidence E) : EnzymeRecruitmentClosed E := by
  exact And.intro Ev.writerRecruitmentClosed
    (And.intro Ev.eraserRecruitmentClosed Ev.readerRecruitmentClosed)

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse