# Do this to the WORK folder of this stage
pushd ${STAGE_WORK_DIR}

log "Patch the Kernel"
pushd linux

for PATCH_FILE in "${STAGE_DIR}/PATCHES/"*; do
    echo "Applying patch ${PATCH_FILE}"
    patch -N -p1 < $PATCH_FILE
done

# out of linux 
popd

#return 
popd