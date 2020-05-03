from utils.models import Singleton


class Auth(object):
    user = None
    __metaclass__ = Singleton

    def setUser(self, user):
        self.user = user
