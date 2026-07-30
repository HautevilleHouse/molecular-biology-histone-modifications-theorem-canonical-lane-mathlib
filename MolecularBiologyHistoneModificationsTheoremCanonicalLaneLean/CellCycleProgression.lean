import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.TranscriptionalRegulation

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure CellCycleProgressionPackage where
  g1PhaseCheckpoint : Prop
  sPhaseDnaReplication : Prop
  g2PhaseCheckpoint : Prop
  mitosisCompletion : Prop

structure CellCycleProgressionEvidence (C : CellCycleProgressionPackage) where
  g1PhaseCheckpointClosed : C.g1PhaseCheckpoint
  sPhaseDnaReplicationClosed : C.sPhaseDnaReplication
  g2PhaseCheckpointClosed : C.g2PhaseCheckpoint
  mitosisCompletionClosed : C.mitosisCompletion

def CellCycleProgressionClosed (C : CellCycleProgressionPackage) : Prop :=
  C.g1PhaseCheckpoint ∧ C.sPhaseDnaReplication ∧ C.g2PhaseCheckpoint ∧ C.mitosisCompletion

theorem cell_cycle_progression_closed_from_evidence (C : CellCycleProgressionPackage) (E : CellCycleProgressionEvidence C) : CellCycleProgressionClosed C := by
  exact And.intro E.g1PhaseCheckpointClosed (And.intro E.sPhaseDnaReplicationClosed (And.intro E.g2PhaseCheckpointClosed E.mitosisCompletionClosed))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse