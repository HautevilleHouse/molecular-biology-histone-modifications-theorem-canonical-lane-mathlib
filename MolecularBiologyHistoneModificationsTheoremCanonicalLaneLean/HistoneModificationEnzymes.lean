import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneModificationEnzymesPackage where
  histoneAcetyltransferases : Prop
  histoneDeacetylases : Prop
  histoneMethyltransferases : Prop
  histoneDemethylases : Prop
  kinases : Prop
  phosphatases : Prop
  ubiquitinLigases : Prop
  deubiquitinases : Prop

structure HistoneModificationEnzymesEvidence (P : HistoneModificationEnzymesPackage) where
  histoneAcetyltransferasesClosed : P.histoneAcetyltransferases
  histoneDeacetylasesClosed : P.histoneDeacetylases
  histoneMethyltransferasesClosed : P.histoneMethyltransferases
  histoneDemethylasesClosed : P.histoneDemethylases
  kinasesClosed : P.kinases
  phosphatasesClosed : P.phosphatases
  ubiquitinLigasesClosed : P.ubiquitinLigases
  deubiquitinasesClosed : P.deubiquitinases

def HistoneModificationEnzymesClosed (P : HistoneModificationEnzymesPackage) : Prop :=
  P.histoneAcetyltransferases ∧ P.histoneDeacetylases ∧
  P.histoneMethyltransferases ∧ P.histoneDemethylases ∧
  P.kinases ∧ P.phosphatases ∧
  P.ubiquitinLigases ∧ P.deubiquitinases

theorem histone_modification_enzymes_closed_from_evidence (P : HistoneModificationEnzymesPackage)
    (E : HistoneModificationEnzymesEvidence P) : HistoneModificationEnzymesClosed P := by
  exact And.intro E.histoneAcetyltransferasesClosed
    (And.intro E.histoneDeacetylasesClosed
      (And.intro E.histoneMethyltransferasesClosed
        (And.intro E.histoneDemethylasesClosed
          (And.intro E.kinasesClosed
            (And.intro E.phosphatasesClosed
              (And.intro E.ubiquitinLigasesClosed E.deubiquitinasesClosed))))))

end HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean