class Facility:
    name: str

    @property
    def name(self):
        return self.__class__.__name__


class AllianceDepot(Facility):
    pass


class RoboticsFactory(Facility):
    pass


class Shipyard(Facility):
    pass


class ResearchLab(Facility):
    pass


class MissileSilo(Facility):
    pass


class NaniteFactory(Facility):
    pass


class Terraformer(Facility):
    pass


class SpaceDock(Facility):
    pass
