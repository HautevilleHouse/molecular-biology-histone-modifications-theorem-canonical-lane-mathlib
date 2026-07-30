import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.ChromatinStatePackage

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneModificationDynamicsPackage (C : ChromatinStatePackage) where
  methylationDynamics : Prop
  acetylationDynamics : Prop
  phosphorylationDynamics : Prop
  methylationDynamicsEvidence : methylationDynamics
  acetylationDynamicsEvidence : acetylationDynamics
  phosphorylationDynamicsEvidence : phosphorylationDynamics

structure HistoneModificationDynamicsEvidence {C : ChromatinStatePackage}
    (H : HistoneModificationDynamicsPackage C) where
  methylationDynamicsClosed : H.methylationDynamics
  acetylationDynamicsClosed : H.acetylationDynamics
  phosphorylationDynamicsClosed : H.phosphorylationDynamics

def HistoneModificationDynamicsClosed {C : ChromatinStatePackage}
    (H : HistoneModificationDynamicsPackage C) : Prop :=
  H.methylationDynamics ∧ H.acetylationDynamics ∧ H.phosphorylationDynamics

theorem histone_modification_dynamics_closed_from_evidence
    {C : ChromatinStatePackage} (H : HistoneModificationDynamicsPackage C)
    (E : HistoneModificationDynamicsEvidence H) : HistoneModificationDynamicsClosed H := by
  exact And.intro E.methylationDynamicsClosed
    (And.intro E.acetylationDynamicsClosed E.phosphorylationDynamicsClosed)

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse