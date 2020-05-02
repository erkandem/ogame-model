from typing import Union
from src import buildings, facilities, ships, defence
from .utils import Coords, Location


class StellarObject:
    pass


class DebrisField(StellarObject):
    resources: {}


class Moon(StellarObject):
    coods: Coords
    fields: Union[float, int]
    resources: {}
    buildings: {}
    facilities: {}

    def __init__(self, *args, **kwargs):
        self.__dict__.update(kwargs)


class PlanetResources:
    metal: int
    chrystal: int
    deuterium: int
    energy: int


class PlanetBuildings:
    def __init__(self, **kwargs):
        self.MetalMine = buildings.MetalMine()
        self.CrystalMine = buildings.CrystalMine()
        self.DeuteriumSynthesizer = buildings.DeuteriumSynthesizer()
        self.SolarPlant = buildings.SolarPlant()
        self.FusionReactor = buildings.FusionReactor()
        self.CrystalStorage = buildings.CrystalStorage()
        self.MetalStorage = buildings.MetalStorage()
        self.DeuteriumTank = buildings.DeuteriumTank()


class PlanetFacilities:
    def __init__(self, **kwargs):
        self.ResearchLab = facilities.ResearchLab()
        self.Shipyard = facilities.Shipyard()
        self.AllianceDepot = facilities.AllianceDepot()
        self.NaniteFactory = facilities.NaniteFactory()
        self.MissileSilo = facilities.MissileSilo()
        self.Terraformer = facilities.Terraformer()
        self.RoboticsFactory = facilities.RoboticsFactory()
        self.SpaceDock = facilities.SpaceDock()


class PlanetDefence:
    def __init__(self):
        self.RocketLauncher = defence.RocketLauncher()
        self.LightLaser = defence.LightLaser()
        self.HeavyLaser = defence.HeavyLaser()
        self.GaussCannon = defence.GaussCannon()
        self.IonCannon = defence.IonCannon()
        self.PlasmaTurret = defence.PlasmaTurret()
        self.SmallShieldDome = defence.SmallShieldDome()
        self.LargeShieldDome = defence.LargeShieldDome()
        self.AntiBallisticMissiles = defence.AntiBallisticMissiles()
        self.InterplanetaryMissiles = defence.InterplanetaryMissiles()


class PlanetFleet:
    def __init__(self):
        self.EspionageProbe = ships.EspionageProbe()
        self.Cruiser = ships.Cruiser()
        self.LightFighter = ships.LightFighter()
        self.HeavyFighter = ships.HeavyFighter()
        self.BattleShip = ships.BattleShip()
        self.SmallCargo = ships.SmallCargo()
        self.LargeCargo = ships.LargeCargo()
        self.DeathStar = ships.DeathStar()
        self.Recycler = ships.Recycler()
        self.Bomber = ships.Bomber()
        self.Destroyer = ships.Destroyer()
        self.Battlecruiser = ships.Battlecruiser()
        self.SolarSatellite = ships.SolarSatellite()
        self.ColonyShip = ships.ColonyShip()


class Planet(StellarObject):
    def __init__(
            self,
            galaxy: int,
            system: int,
            planet: int
    ):
        self.coords = Coords(galaxy, system, planet)
        self.fields = None
        self.resources = PlanetResources()
        self.buildings = PlanetBuildings()
        self.facilities = PlanetFacilities()
        self.fleet = PlanetFleet()
        self.defence = PlanetDefence()
        self.moon = Moon()
        self.debris_field: DebrisField()
