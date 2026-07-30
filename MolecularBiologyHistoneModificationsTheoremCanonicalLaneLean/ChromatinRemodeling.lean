import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.EpigeneticRegulationPDE

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure ChromatinRemodelingPackage where
  atpDependentRemodeling : Prop
  histoneVariantIncorporation : Prop
  nucleosomeSliding : Prop
  chromatinLoops : Prop

structure ChromatinRemodelingEvidence (C : ChromatinRemodelingPackage) where
  atpDependentRemodelingClosed : C.atpDependentRemodeling
  histoneVariantIncorporationClosed : C.histoneVariantIncorporation
  nucleosomeSlidingClosed : C.nucleosomeSliding
  chromatinLoopsClosed : C.chromatinLoops

def ChromatinRemodelingClosed (C : ChromatinRemodelingPackage) : Prop :=
  C.atpDependentRemodeling ∧ C.histoneVariantIncorporation ∧ C.nucleosomeSliding ∧ C.chromatinLoops

theorem chromatin_remodeling_closed_from_evidence (C : ChromatinRemodelingPackage) (E : ChromatinRemodelingEvidence C) : ChromatinRemodelingClosed C := by
  exact And.intro E.atpDependentRemodelingClosed (And.intro E.histoneVariantIncorporationClosed (And.intro E.nucleosomeSlidingClosed E.chromatinLoopsClosed))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse