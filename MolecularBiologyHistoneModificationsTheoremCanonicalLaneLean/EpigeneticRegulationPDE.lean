import HautevilleHouse.MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean.HistoneModificationStructure

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean

structure EpigeneticRegulationPackage where
  timeParameter : Type u
  histoneModificationDynamics : Prop
  enzymeKinetics : Prop
  feedbackLoops : Prop
  regulationEquations : Prop

structure EpigeneticRegulationEvidence (P : EpigeneticRegulationPackage) where
  histoneModificationDynamicsClosed : P.histoneModificationDynamics
  enzymeKineticsClosed : P.enzymeKinetics
  feedbackLoopsClosed : P.feedbackLoops
  regulationEquationsClosed : P.regulationEquations

def EpigeneticRegulationClosed (P : EpigeneticRegulationPackage) : Prop :=
  P.histoneModificationDynamics ∧ P.enzymeKinetics ∧ P.feedbackLoops ∧ P.regulationEquations

theorem epigenetic_regulation_closed_from_evidence (P : EpigeneticRegulationPackage) (E : EpigeneticRegulationEvidence P) : EpigeneticRegulationClosed P := by
  exact And.intro E.histoneModificationDynamicsClosed (And.intro E.enzymeKineticsClosed (And.intro E.feedbackLoopsClosed E.regulationEquationsClosed))

end MolecularBiologyHistoneModificationsTheoremCanonicalLaneLean
end HautevilleHouse