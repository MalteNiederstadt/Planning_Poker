"""
ASGI config for planning_poker_site project.

It exposes the ASGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.1/howto/deployment/asgi/
"""

import os

from django.core.asgi import get_asgi_application
from dj_static import Cling

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "planning_poker_site.settings")
application = Cling(get_wsgi_application())
