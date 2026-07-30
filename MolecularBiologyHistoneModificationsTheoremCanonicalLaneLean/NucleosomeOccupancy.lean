import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure NucleosomeOccupancyPackage where
  dnaSequenceDependence : Prop
  histoneModificationAffinity : Prop
  remodelingFactorRecruitment : Prop
  transcriptionFactorAccess : Prop
  dynamicTurnover : Prop

structure NucleosomeOccupancyEvidence (N : NucleosomeOccupancyPackage) where
  dnaSequenceDependenceClosed : N.dnaSequenceDependence
  histoneModificationAffinityClosed : N.histoneModificationAffinity
  remodelingFactorRecruitmentClosed : N.remodelingFactorRecruitment
  transcriptionFactorAccessClosed : N.transcriptionFactorAccess
  dynamicTurnoverClosed : N.dynamicTurnover

def NucleosomeOccupancyClosed (N : NucleosomeOccupancyPackage) : Prop :=
  N.dnaSequenceDependence ∧ N.histoneModificationAffinity ∧
  N.remodelingFactorRecruitment ∧ N.transcriptionFactorAccess ∧ N.dynamicTurnover

theorem nucleosome_occupancy_closed_from_evidence
    (N : NucleosomeOccupancyPackage) (E : NucleosomeOccupancyEvidence N) :
    NucleosomeOccupancyClosed N := by
  exact And.intro E.dnaSequenceDependenceClosed
    (And.intro E.histoneModificationAffinityClosed
      (And.intro E.remodelingFactorRecruitmentClosed
        (And.intro E.transcriptionFactorAccessClosed E.dynamicTurnoverClosed)))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse