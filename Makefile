RENDER=prman
FILE=mandarin
SLCOMPILER=oslc
VIEWER=sho
SLEXT=oso

SHADERNAME_COLOR=first
SHADERNAME_DISP=displacement_shader

all : ${FILE}.tiff
	${VIEWER} ${FILE}.tiff

${SHADERNAME_COLOR}.${SLEXT} : ${SHADERNAME_COLOR}.osl
	${SLCOMPILER} ${SHADERNAME_COLOR}.osl

${SHADERNAME_DISP}.${SLEXT} : ${SHADERNAME_DISP}.osl
	${SLCOMPILER} ${SHADERNAME_DISP}.osl

${FILE}.tiff : ${SHADERNAME_DISP}.${SLEXT} ${SHADERNAME_COLOR}.${SLEXT} ${FILE}.rib
	cat ${FILE}.rib | ${RENDER}

# doesnt work lol
clean :
	rm -f *.oso