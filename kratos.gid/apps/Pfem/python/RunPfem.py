import KratosMultiphysics
import KratosMultiphysics.ExternalSolversApplication
import KratosMultiphysics.DelaunayMeshingApplication
import KratosMultiphysics.PfemApplication
import KratosMultiphysics.ConstitutiveModelsApplication
import KratosMultiphysics.SolidMechanicsApplication
import MainPfem

MainPfem.PfemSolution(KratosMultiphysics.Model()).Run()