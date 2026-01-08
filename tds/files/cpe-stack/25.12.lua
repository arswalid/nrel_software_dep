--[[
| WARNING! This file is managed by Ansible.
| Do NOT make manual changes to this file.
| Please email walid.arsalane@nrel.gov to request a change.

| Info:
|   Role: files
|   NREL Template: files/Core/25.06.lua
|   User: warsalan
]]--

help("Add path for Core 25.12 modules to MODULEPATH")




local modulepath_root = "/opt/cray/pe/lmod/modulefiles"
local lmod_sys = os.getenv("LMOD_sys")
-- Paths to add/remove
local sys_path  = pathJoin(modulepath_root, lmod_sys)
local thirdpartycom_path  = "/nopt/nrel/apps/testing/dep_stack/kestrel/cpe-deps"
local core_path = pathJoin(modulepath_root, "core")
local optimization_path = "/opt/cray/pe/lmod/modulefiles/craype-targets/default"
local libfabric_path = "/opt/cray/modulefiles"
local craympichpackages_path = "/nopt/nrel/apps/testing/dep_stack/kestrel/spack/modules/gcc/12.2.1/cray-mpich-8.1.28/gcc-12.2.1"


prepend_path{"MODULEPATH", sys_path, priority=10}
prepend_path{"MODULEPATH", thirdpartycom_path, priority=10}
prepend_path{"MODULEPATH", core_path, priority=10}
prepend_path{"MODULEPATH", optimization_path, priority=10}
prepend_path{"MODULEPATH", libfabric_path, priority=10}
prepend_path{"MODULEPATH", "/nopt/nrel/apps/testing/dep_stack/kestrel/craympich_packages", priority=10}
