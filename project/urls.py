# -*- coding: utf-8 -*-

"""project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

# ----------- START: Namespace Imports ---------- #
# ----------- END: Namespace Imports ---------- #

# ----------- START: Native Imports ---------- #
# ----------- END: Native Imports ---------- #

# ----------- START: Third Party Imports ---------- #
from django.contrib import admin
from django.urls import path
# ----------- END: Third Party Imports ---------- #

# ----------- START: In-App Imports ---------- #
from project.views import test_view
# ----------- END: In-App Imports ---------- #

__all__ = [
    # All public symbols go here.
]

urlpatterns = [
    path('admin/', admin.site.urls),
    path('entry-point1', test_view)
]
