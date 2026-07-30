import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.EpigeneticMemoryMaintenance
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

def HistoneModificationsClosure (C : AdmissibleClass) : Prop :=
  bridgeClosed C ∧ gateClosed C

theorem histone_modifications_endgame (C : AdmissibleClass) : HistoneModificationsClosure C := by
  exact And.intro (bridge_from_admissible_class C) (gate_from_admissible_class C)

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse