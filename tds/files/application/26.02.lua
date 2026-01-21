--[[
| WARNING! This file is managed by Ansible.
| Do NOT make manual changes to this file.
| Please email walid.arsalane@nrel.gov to request a change.

| Info:
|   Role: files
|   NREL Template: files/Core/25.06.lua
|   User: warsalan
]]--

help("Add path for Applications 26.02 modules to MODULEPATH")

prepend_path{"MODULEPATH", "/nopt/nrel/apps/eyas/apps_modules/26.02", priority=10}
