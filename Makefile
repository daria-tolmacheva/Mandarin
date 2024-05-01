RENDER=prman
FILE=mandarin
SLCOMPILER=oslc
VIEWER=sho
SLEXT=oso

SHADERNAME=first
SHADERNAME=displacement

# .SUFFIXES: .osl .oso
# .osl.oso:
# 	${SLCOMPILER} $<


# ${SHADERNAME}.osl :
# 	${SLCOMPILER} $<

all : ${FILE}.tiff
	${VIEWER} ${FILE}.tiff
	
${SHADERNAME}.osl :
	${SLCOMPILER} $<

${FILE}.tiff : ${SHADERNAME}.${SLEXT} ${FILE}.rib
	cat ${FILE}.rib | sed s/XXXX/${SHADERNAME}/g | ${RENDER}

clean :
	rm -f *.tiff *.${SLEXT}