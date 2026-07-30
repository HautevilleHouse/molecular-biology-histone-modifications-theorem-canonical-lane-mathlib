import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure EpigeneticRegulationPackage where
  dnaMethylation : Prop
  histoneModifications : Prop
  chromatinStructure : Prop
  geneExpressionRegulation : Prop
  cellularMemory : Prop
  environmentalResponse : Prop

structure EpigeneticRegulationEvidence (P : EpigeneticRegulationPackage) where
  dnaMethylationClosed : P.dnaMethylation
  histoneModificationsClosed : P.histoneModifications
  chromatinStructureClosed : P.chromatinStructure
  geneExpressionRegulationClosed : P.geneExpressionRegulation
  cellularMemoryClosed : P.cellularMemory
  environmentalResponseClosed : P.environmentalResponse

def EpigeneticRegulationClosed (P : EpigeneticRegulationPackage) : Prop :=
  P.dnaMethylation ∧ P.histoneModifications ∧
  P.chromatinStructure ∧ P.geneExpressionRegulation ∧
  P.cellularMemory ∧ P.environmentalResponse

theorem epigenetic_regulation_closed_from_evidence (P : EpigeneticRegulationPackage)
    (E : EpigeneticRegulationEvidence P) : EpigeneticRegulationClosed P := by
  exact And.intro E.dnaMethylationClosed
    (And.intro E.histoneModificationsClosed
      (And.intro E.chromatinStructureClosed
        (And.intro E.geneExpressionRegulationClosed
          (And.intro E.cellularMemoryClosed E.environmentalResponseClosed))))

end HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean