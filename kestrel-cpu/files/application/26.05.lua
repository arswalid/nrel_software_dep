--[[
| WARNING! This file is managed by Ansible.
| Do NOT make manual changes to this file.
| Please email walid.arsalane@nrel.gov to request a change.

| Info:
|   Role: files
|   NREL Template: files/Core/26.05.lua
|   User: warsalan
]]--

help("Add path for Applications 26.05 modules to MODULEPATH")

prepend_path{"MODULEPATH", "{{ [NSP_install_root, 'apps_modules/26.05'] | path_join }}", priority=10}
