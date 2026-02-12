# 获取模块根目录
#0=${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}
#0=${${(M)0:#/*}:-$PWD/$0}
#export module_dir="${0:h}"

local module_dir="${0:A:h}"

fpath=("${module_dir}/functions" $fpath)

for func in ${module_dir}/functions/*(:t); do
    autoload -Uz "$func"
done

alias x=extract
