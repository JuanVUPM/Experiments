-- Generated automatically by - PROOSIS - 3.8.1 


USE LPRES VERSION "1.3.5"
USE SYSTEM_MDL_LIB VERSION "1.1"


-- EL code of the schematic.
-- The COMPONENT definition lines are blocked for edition.
-- You can edit the parameters clicking over them.

COMPONENT Adiabatico 
DATA
		ENUM LiquidsGases fluid = He			



TOPOLOGY
   LPRES.Pro_Tank(
      Type1 = Area) Pro_Tank_1(
      fluid_l = LOX,
      T_d = 288.15,
      Ag = 0.001,
      T_0 = 298.15,
      p_0 = 2900000,
      Vol_t = 100,
      IVR = 0.01,
      Qp_data = 0,
      k_data = 1,
      intMet = AKIMA)


INIT 
Init_fluid(fluid, g.fluid)

CONTINUOUS
Init_fluid(fluid, g.fluid)

END COMPONENT