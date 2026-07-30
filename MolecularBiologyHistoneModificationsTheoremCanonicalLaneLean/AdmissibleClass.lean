import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure HistoneModificationState where
  histoneCode : String
  modificationPattern : String
  geneExpressionOn : Prop

def admittedClosure (state : HistoneModificationState) : Prop :=
  state.geneExpressionOn

structure AdmissibleClass where
  object : HistoneModificationState
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def HistoneModificationsAdmissibleClosure (A : AdmissibleClass) : Prop :=
  admittedClosure A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse