#!/bin/bash -ex

#!/bin/bash -ex

outdir="${ROOTFS_DIR}/opt/autogrzybke_resources"
rm -rf "$outdir"
mkdir "$outdir"
if [[ -f "${AUTOGRZYBKE_RESOURCES_TAR_ABSPATH}" ]] ; then
  tar xvf "${AUTOGRZYBKE_RESOURCES_TAR_ABSPATH}" -C "$outdir"
fi
