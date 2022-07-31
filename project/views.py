# -*- coding: utf-8 -*-

"""

    mod:: `project.core`

"""

# ----------- START: Namespace Imports ---------- #
__import__('pkg_resources').declare_namespace(__name__)
# ----------- END: Namespace Imports ---------- #

# ----------- START: Native Imports ---------- #
# ----------- END: Native Imports ---------- #

# ----------- START: Third Party Imports ---------- #
from django.http import HttpResponse
# ----------- END: Third Party Imports ---------- #

# ----------- START: In-App Imports ---------- #
# ----------- END: In-App Imports ---------- #

__all__ = [
    # All public symbols go here.
]


def test_view(request):
    return HttpResponse("Hello world!")
