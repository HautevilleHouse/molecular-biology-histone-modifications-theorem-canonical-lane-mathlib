import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure ChromatinRemodelingComplexesPackage where
  swiSnfComplex : Prop
  iswiComplex : Prop
  chromodomainHelicase : Prop
  ino80Complex : Prop

structure ChromatinRemodelingComplexesEvidence (P : ChromatinRemodelingComplexesPackage) where
  swiSnfComplexClosed : P.swiSnfComplex
  iswiComplexClosed : P.iswiComplex
  chromodomainHelicaseClosed : P.chromodomainHelicase
  ino80ComplexClosed : P.ino80Complex

def ChromatinRemodelingComplexesClosed (P : ChromatinRemodelingComplexesPackage) : Prop :=
  P.swiSnfComplex ∧ P.iswiComplex ∧
  P.chromodomainHelicase ∧ P.ino80Complex

theorem chromatin_remodeling_complexes_closed_from_evidence (P : ChromatinRemodelingComplexesPackage)
    (E : ChromatinRemodelingComplexesEvidence P) : ChromatinRemodelingComplexesClosed P := by
  exact And.intro E.swiSnfComplexClosed
    (And.intro E.iswiComplexClosed
      (And.intro E.chromodomainHelicaseClosed E.ino80ComplexClosed))

end HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean