import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneModificationState where
  modificationPattern : Type
  nucleosomePositions : Type
  geneExpressionLevels : Type
  cellCyclePhase : Type

structure HistoneModificationObject where
  state : HistoneModificationState
  modificationPatternsStable : Prop
  epigeneticMemory : Prop
  chromatinAccessibility : Prop
  conclusion : modificationPatternsStable ∧ epigeneticMemory ∧ chromatinAccessibility

def HistoneWitnessClosed (O : HistoneModificationObject) : Prop :=
  O.modificationPatternsStable ∧ O.epigeneticMemory ∧ O.chromatinAccessibility

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse