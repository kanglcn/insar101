SOURCEDIR	= source
OUTPUTDIR 	= .

html dirhtml:
	jupyter-book build ${SOURCEDIR} --path-output ${OUTPUTDIR} --builder $@

ghp:
	ghp-import -n -p -f _build/html

clean:
	rm -rf ${OUTPUTDIR}/_build/
