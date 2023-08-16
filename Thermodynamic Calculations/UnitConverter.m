%% Unit conversion

u = symunit;

givenUnit = 0.015755 * u.MW * u.kg/ u.kJ;
desiredUnit = unitConvert(givenUnit, u.kg/ u.s);
desiredUnit = vpa(desiredUnit)
%% 
u = symunit;
givenUnit_1 = 1 * u.Fahrenheit;
desiredUnit_1 = unitConvert(givenUnit_1, u.Rankine, "Temperature", "absolute");
desiredUnit_1 = vpa(desiredUnit_1)

%% Calculating Theta

vL = 44.43;
vV = 114.95;
vGiven = 100.596;


theta = (vGiven - vL)/(vV - vL);
fprintf("The value for theta is : %f.\n" , theta)

%% Calculating v using theta for saturated mixtures

vLiquid = 0.0902;
vVapor = 0.2161;
theta = 0.796455;


v = (theta*vVapor) + (1-theta)* (vLiquid);
fprintf("The value for v is : %f.\n", v)

%% Length

% Ao - angstrom
% a_0 - Bohr radius
% au - astronomical unit
% ch - chain
% ft - foot
% ft_US - U.S. survey foot
% ftm - fathom
% fur - furlong
% gg - gauge
% hand - hand
% in - inch
% inm - international nautical mile
% land - league
% li - link
% line - line
% ly - light-year
% m - meter (SI)
% mi - mile
% mi_US - U.S. survey mile
% mil - mil
% nmile - British imperial nautical mile
% pc - parsec
% pica - pica
% pica_US - U.S. customary pica
% pt - point
% pt_US - U.S. customary point
% rod - rod
% span - span
% xu - x unit
% xu_Cu - x unit (copper)
% xu_Mo - x unit (molybdenum)
% yd - yard


%% Mass


% Mt - metric megaton
% ct - carat
% cwt - U.S. customary short hundredweight
% cwt_UK - British imperial short hundredweight
% dalton - atomic mass constant
% dr - dram
% g - gram (SI)
% gr - grain
% hyl - hyl
% kt - metric kiloton
% lbm - pound mass
% m_e - electron mass
% m_p - proton mass
% m_u - atomic mass constant
% oz - ounce
% quarter - quarter
% slug - slug
% stone - stone
% t - metric ton
% tn - U.S. customary short ton
% ton_UK - British imperial ton



%% Time
% d - day
% fortnight - 14 days
% h - hour
% min - minute
% month_30 - 30-day month
% s - second (SI)
% week - 7-day week
% year_360 - 360-day year
% year_Julian - Julian year
% year_Gregorian - Gregorian year
% Absorbed Dose or Dose Equivalent
% Gy - gray (SI)
% Rad - absorbed radiation dose
% Sv - sievert (SI)
% rem - roentgen equivalent man
% Acceleration
% Gal - gal
% g_n - earth gravitational acceleration
% Activity
% Bq - becquerel (SI)
% Ci - curie
%% Amount of Substance


% item - number of items
% mol - mole (SI)
% molecule - number of molecules


%% Angular Momentum
% Nms - newton meter second
% h_bar - reduced Planck constant
% h_c - Planck constant
% Area
% a - are
% ac - acre
% ac_US - U.S. survey acre
% barn - barn
% circ_mil - circular mil
% circ_inch - circular inch
% ha - metric hectare
% ha_US - U.S. survey hectare
% ro - rood
% twp - township
% Capacitance
% F - farad (SI)
% abF - abfarad
% statF - statfarad
% Capacitance Per Length
% e_0 - vacuum electric permittivity or electric constant
% Catalytic Activity
% kat - katal (SI)
% Conductance
% G_0 - conductance quantum
% S - siemens (SI)
% abS - absiemens
% statS - statsiemens
% Data Transfer Rate
% Bd - baud
% bps - bit per second
% Digital Information
% B - byte
% bit - basic unit of information
% Dimensionless
% alpha - fine-structure constant
% g_e - electron g-factor
% g_p - proton g-factor
% Dose Equivalent
% Sv - sievert (SI)
% Dynamic Viscosity
% P - poise
% reyn - reynolds
% Electric Charge
% C - coulomb (SI)
% Fr - franklin
% abC - abcoulomb
% e - elementary charge
% statC - statcoulomb
% Electric Charge Per Mole of Electrons
% F_c - Faraday constant
% Electric Current
% A - ampere (SI)
% Bi - biot
% abA - abampere
% statA - statampere
% Electric Dipole Moment
% debye - debye
% Electric Potential or Electromotive Force
% V - volt (SI)
% abV - abvolt
% statV - statvolt
% Energy or Work or Heat
% Btu_IT - British thermal unit (International Table)
% Btu_th - British thermal unit (thermochemical)
% E_h - Hartree energy
% J - joule (SI)
% Nm - newton meter
% Wh - watt hour
% Ws - watt second
% cal_4 - calorie (4 degree Celsius)
% cal_20 - calorie (20 degree Celsius)
% cal_15 - calorie (15 degree Celsius)
% cal_IT - calorie (International Table)
% cal_th - calorie (thermochemical)
% cal_mean - calorie (mean)
% eV - electronvolt
% erg - erg
% kcal_4 - kilocalorie (4 degree Celsius)
% kcal_20 - kilocalorie (20 degree Celsius)
% kcal_15 - kilocalorie (15 degree Celsius)
% kcal_IT - kilocalorie (International Table)
% kcal_th - kilocalorie (thermochemical)
% kcal_mean - kilocalorie (mean)
% kpm - kilopond meter
% therm - therm
% Energy Per Temperature
% k_B - Boltzmann constant
% Energy Per Temperature Per Amount of Substance
% R_c - molar gas constant
% European Currency
% Cent - cent
% EUR - Euro
%% Flow Rate

% gpm - U.S. customary gallon per minute
% gpm_UK - British imperial gallon per minute
% lpm - liter per minute

%% Force


% N - newton (SI)
% dyn - dyne
% kgf - kilogram force
% kip - kip
% kp - kilopond
% lbf - pound force
% ozf - ounce force
% p - pond
% pdl - poundal
% sn - sthene
% tonf - short ton force


%% Former European Currency
% ATS - Austrian Schilling
% BEF - Belgian Franc
% DM - German Mark
% ESP - Spanish Peseta
% FIM - Finnish Markka
% FRF - French Franc
% IEP - Irish Pound
% ITL - Italian Lire
% LUF - Luxembourgian Franc
% NLG - Dutch Gulden
% PTE - Portuguese Escudo
% Frequency
% Hz - hertz (SI)
% dv_Cs - caesium hyperfine transition frequency
% Frequency of Rotation
% rpm - revolution per minute
% rps - revolution per second
% Fuel Consumption
% l_100km - liter per 100 km
% Fuel Economy
% mpg - mile per gallon
% Gravity
% G_c - Newtonian constant of gravitation
% Illuminance
% lx - lux (SI)
% nx - nox
% ph - phot
% Inductance
% H - henry (SI)
% abH - abhenry
% statH - stathenry
% Inductance Per Length
% mu_0 - vacuum magnetic permeability
% Intensity Per Fourth Power of Absolute Temperature
% sigma - Stefan–Boltzmann constant
% Ionising Dosage
% R - roentgen
% Kinematic Viscosity
% St - stokes
% newt - newt
% Luminance
% asb - apostilb
% sb - stilb
% Luminous Efficacy
% K_cd - luminous efficacy of a defined visible radiation
% Luminous Flux
% lm - lumen (SI)
% Luminous Intensity
% cd - candela (SI)
% cp - candlepower
% Magnetic Field Strength
% Oe - oersted
% Magnetic Flux
% Mx - maxwell
% Wb - weber (SI)
% abWb - abweber
% statWb - statweber
% phi_0 - magnetic flux quantum
% Magnetic Flux Density
% G - gauss
% T - tesla (SI)
% abT - abtesla
% statT - stattesla
% Magnetic Force
% Gb - gilbert
% Mass Per Length
% den - denier
% tex - filament tex
% Particle Magnetic Moment Per Angular Momentum
% gamma_e - electron gyromagnetic ratio
% gamma_p - proton gyromagnetic ratio
% Particle Per Amount of Substance
% N_A - Avogadro constant
% Plane Angle
% arcsec - arcsecond
% arcmin - arcminute
% deg - degree
% rad - radian (SI)
% rev - revolution
% Power or Heat Flow Rate
% HP_E - electrical horsepower
% HP_I - mechanical horsepower
% HP_UK - British imperial horsepower
% HP_DIN - metric horsepower (DIN 66036)
% PS_SAE - net horsepower (SAE J1349)
% PS_DIN - horsepower (DIN 70020)
% W - watt (SI)
% poncelet - poncelet


%% Pressure or Stress


% Ba - barye
% Pa - pascal (SI)
% Torr - torr
% at - technical atmosphere
% atm - standard atmosphere
% bar - bar
% cmHg - centimeter of mercury (conventional)
% cmH2O - centimeter of water (conventional)
% ftHg - foot of mercury (conventional)
% ftH2O - foot of water (conventional)
% inHg - inch of mercury (conventional)
% inH2O - inch of water (conventional)
% ksf - kip per square foot
% ksi - kip per square inch
% mH2O - meter of water (conventional)
% mHg - meter of mercury (conventional)
% mmHg - millimeter of mercury (conventional)
% mmH2O - millimeter of water (conventional)
% psf - pound force per square foot
% psi - pound force per square inch
% pz - pieze



%% Quantum Resistance
% R_K - von Klitzing constant
% Radiation
% lan - langley
% Reciprocal Length
% kayser - kayser
% R_inf - Rydberg constant
% Refractive Power of Lenses
% dpt - diopter
% Resistance
% Ohm - ohm (SI)
% abOhm - abohm
% statOhm - statohm
% Solid Angle
% sr - steradian (SI)
% Substance Per Volume
% molarity - molarity


%% Temperature

% Celsius - degree Celsius (SI)
% Fahrenheit - degree Fahrenheit
% K - kelvin (SI)
% Rankine - degree Rankine
% Reaumur - degree Reaumur


%% Velocity


% Kyne - kyne
% c_0 - speed of light in vacuum
% fpm - foot per minute
% fps - foot per second
% kmh - kilometer per hour
% knot_UK - British imperial knot
% kts - international knot
% mach - speed of sound
% mph - mile per hour


%% Volume


% barrel - barrel
% bbl - U.S. customary dry barrel
% bu_UK - British imperial bushel
% chaldron - chaldron
% dry_bu - U.S. customary dry bushel
% dry_gal - U.S. customary dry gallon
% dry_pk - U.S. customary dry peck
% dry_pt - U.S. customary dry pint
% dry_qt - U.S. customary dry quart
% fldr - U.S. customary fluid dram
% fldr_UK - British imperial fluid drachm (dram)
% floz - U.S. customary fluid ounce
% floz_UK - British imperial fluid ounce
% gal - U.S. customary liquid gallon
% gal_UK - British imperial gallon
% gill - U.S. customary fluid gill
% gill_UK - British imperial gill
% igal - British imperial gallon
% l - liter
% liq_pt - U.S. customary liquid pint
% liq_qt - U.S. customary liquid quart
% minim - U.S. customary minim
% minim_UK - British imperial minim
% pint - U.S. customary liquid pint
% pint_UK - British imperial pint
% pk_UK - British imperial peck
% pottle - British imperial pottle
% qt_UK - British imperial quart
% quart - U.S. customary liquid quart
% 


%% 

% Yotta 1024	Y, yotta	u.Ym, u.yottam
% Zetta 1021	Z, zetta	u.Zm, u.zettam
% Exa 1018	E, exa	u.Em, u.exam
% Peta 1015	P, peta	u.Pm, u.petam
% Tera 1012	T, tera	u.Tm, u.teram
% Giga 109	G, giga	u.gigam, u.Gm
% Mega 106	M, mega	u.Mm, u.megam
% Kilo 103	k, kilo	u.km, u.kilom
% Hecto 102	h, hecto	u.hm, u.hectom
% Deka 101	da, deka, deca	u.dam, u.dekam, u.decam
% Deci 10–1	d, deci	u.dm, u.decim
% Centi 10–2	c, centi	u.cm, u.centim
% Milli 10–3	m, milli	u.mm, u.millim
% Micro 10–6	mc, micro, u	u.mcm, u.microm, u.um
% Nano 10–9	n, nano	u.nm, u.nanom
% Pico 10–12	p, pico	u.pm, u.picom
% Femto 10–15	f, femto	u.fm, u.femtom
% Atto 10–18	a, atto	u.am, u.attom
% Zepto 10–21	z, zepto	u.zm, u.zeptom
% Yocto 10–24	y, yocto	u.ym, u.yoctom
