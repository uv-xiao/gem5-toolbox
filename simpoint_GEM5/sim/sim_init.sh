#!/bin/bash

. ../configs/configs_$1.sh

cd ${GEM5_PATH}

if [ ${SE_OR_FS} == SE ];then 

rm -r m5out/${SE_NAME};

build/${ARCH}/gem5.${METHOD} --outdir=${SE_OUT_DIR_INIT} \
configs/deprecated/example/se.py \
--simpoint-profile \
--simpoint-interval ${interval_length} \
--cpu-type=NonCachingSimpleCPU \
-c ${SE_ELF_ROUTE} \
-o "${SE_INPUT_ROUTE}${OPTIONS}"

else
echo SE_OR_FS should be SE
fi

