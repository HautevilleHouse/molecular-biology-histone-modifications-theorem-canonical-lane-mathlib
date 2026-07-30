import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneReaderDomain where
  readerDomain : Type u
  domainTopology : TopologicalSpace readerDomain

structure HistoneCodeAdmittedObject where
  domain : HistoneReaderDomain
  codeClosed : Prop
  histoneModifications : Prop
  histoneReader : Type
  readerTopology : TopologicalSpace histoneReader
  modificationRecognized : Prop
  conclusion : modificationRecognized

structure HistoneCodeEndgameState where
  object : HistoneCodeAdmittedObject

def HistoneCodeWitnessClosed (O : HistoneCodeAdmittedObject) : Prop :=
  O.modificationRecognized

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse
