{{ ansible_managed | comment(beginning="--[[", end="]]--", decoration="", prefix_count=0, postfix_count=0) }}

help("Add path for Core 26.02 modules to MODULEPATH")

prepend_path{"MODULEPATH", "{{ [NSP_install_root, 'spack/modules/Core/26.02'] | path_join }}", priority=10}
