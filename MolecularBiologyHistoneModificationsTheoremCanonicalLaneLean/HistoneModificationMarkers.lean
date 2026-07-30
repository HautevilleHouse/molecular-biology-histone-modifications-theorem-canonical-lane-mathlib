import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneModificationMarkersPackage where
  acetylationMarkers : Prop
  methylationMarkers : Prop
  phosphorylationMarkers : Prop
  ubiquitinationMarkers : Prop

structure HistoneModificationMarkersEvidence (P : HistoneModificationMarkersPackage) where
  acetylationMarkersClosed : P.acetylationMarkers
  methylationMarkersClosed : P.methylationMarkers
  phosphorylationMarkersClosed : P.phosphorylationMarkers
  ubiquitinationMarkersClosed : P.ubiquitinationMarkers

def HistoneModificationMarkersClosed (P : HistoneModificationMarkersPackage) : Prop :=
  P.acetylationMarkers ∧ P.methylationMarkers ∧
  P.phosphorylationMarkers ∧ P.ubiquitinationMarkers

theorem histone_modification_markers_closed_from_evidence (P : HistoneModificationMarkersPackage)
    (E : HistoneModificationMarkersEvidence P) : HistoneModificationMarkersClosed P := by
  exact And.intro E.acetylationMarkersClosed
    (And.intro E.methylationMarkersClosed
      (And.intro E.phosphorylationMarkersClosed E.ubiquitinationMarkersClosed))

end HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean