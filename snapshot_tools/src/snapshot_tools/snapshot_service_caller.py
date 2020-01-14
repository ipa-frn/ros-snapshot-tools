#!/usr/bin/env python

import rospy

from pitasc_library.scripts.service_caller  import ServiceCaller, EmptyService

class StartVideoService(ServiceCaller):
    """Call a srvs of type 'snapshot_tools/String'."""

    def __init__(self, service_name, file_name, namespace=None,
                 on_start=True, wait_for_service=True):
        from snapshot_tools.srv import String, StringRequest

        req = StringRequest()
        req.str = file_name

        ServiceCaller.__init__(
            self, service_name, namespace,
            String, req, on_start, wait_for_service)

class StopVideoService(EmptyService):
    pass

class TakeSnapShotService(StartVideoService):
    """Call a srvs of type 'snapshot_tools/String'."""
    pass

# eof
