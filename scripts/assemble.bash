#!/dev/null

if ! test "${#}" -eq 0 ; then
	echo "[ee] invalid arguments; aborting!" >&2
	exit 1
fi


echo "[ii] assembling rootfs..." >&2

"${_scripts}/assemble-clean"
"${_scripts}/assemble-core"
"${_scripts}/assemble-overlays"
"${_scripts}/assemble-trimmings"


exit 0
