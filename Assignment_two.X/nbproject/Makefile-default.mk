#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Assignment_two.c ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/lcd_x8.c ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_adc.c ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_pwm.c ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_ser.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Assignment_two.p1 ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1 ${OBJECTDIR}/_ext/1529523155/my_adc.p1 ${OBJECTDIR}/_ext/1529523155/my_pwm.p1 ${OBJECTDIR}/_ext/1529523155/my_ser.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/Assignment_two.p1.d ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1.d ${OBJECTDIR}/_ext/1529523155/my_adc.p1.d ${OBJECTDIR}/_ext/1529523155/my_pwm.p1.d ${OBJECTDIR}/_ext/1529523155/my_ser.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Assignment_two.p1 ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1 ${OBJECTDIR}/_ext/1529523155/my_adc.p1 ${OBJECTDIR}/_ext/1529523155/my_pwm.p1 ${OBJECTDIR}/_ext/1529523155/my_ser.p1

# Source Files
SOURCEFILES=Assignment_two.c ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/lcd_x8.c ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_adc.c ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_pwm.c ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_ser.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18LF4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Assignment_two.p1: Assignment_two.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Assignment_two.p1.d 
	@${RM} ${OBJECTDIR}/Assignment_two.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/Assignment_two.p1 Assignment_two.c 
	@-${MV} ${OBJECTDIR}/Assignment_two.d ${OBJECTDIR}/Assignment_two.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Assignment_two.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1529523155/lcd_x8.p1: ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/lcd_x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529523155" 
	@${RM} ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1529523155/lcd_x8.p1 ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/lcd_x8.c 
	@-${MV} ${OBJECTDIR}/_ext/1529523155/lcd_x8.d ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1529523155/my_adc.p1: ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529523155" 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1529523155/my_adc.p1 ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_adc.c 
	@-${MV} ${OBJECTDIR}/_ext/1529523155/my_adc.d ${OBJECTDIR}/_ext/1529523155/my_adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1529523155/my_adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1529523155/my_pwm.p1: ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529523155" 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_pwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1529523155/my_pwm.p1 ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_pwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1529523155/my_pwm.d ${OBJECTDIR}/_ext/1529523155/my_pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1529523155/my_pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1529523155/my_ser.p1: ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529523155" 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_ser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1529523155/my_ser.p1 ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1529523155/my_ser.d ${OBJECTDIR}/_ext/1529523155/my_ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1529523155/my_ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/Assignment_two.p1: Assignment_two.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Assignment_two.p1.d 
	@${RM} ${OBJECTDIR}/Assignment_two.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/Assignment_two.p1 Assignment_two.c 
	@-${MV} ${OBJECTDIR}/Assignment_two.d ${OBJECTDIR}/Assignment_two.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Assignment_two.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1529523155/lcd_x8.p1: ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/lcd_x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529523155" 
	@${RM} ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1529523155/lcd_x8.p1 ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/lcd_x8.c 
	@-${MV} ${OBJECTDIR}/_ext/1529523155/lcd_x8.d ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1529523155/lcd_x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1529523155/my_adc.p1: ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529523155" 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1529523155/my_adc.p1 ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_adc.c 
	@-${MV} ${OBJECTDIR}/_ext/1529523155/my_adc.d ${OBJECTDIR}/_ext/1529523155/my_adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1529523155/my_adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1529523155/my_pwm.p1: ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529523155" 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_pwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1529523155/my_pwm.p1 ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_pwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1529523155/my_pwm.d ${OBJECTDIR}/_ext/1529523155/my_pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1529523155/my_pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1529523155/my_ser.p1: ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529523155" 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1529523155/my_ser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1529523155/my_ser.p1 ../../OneDrive/Desktop/testtpic/testtpic/pwm_asl.X/my_ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1529523155/my_ser.d ${OBJECTDIR}/_ext/1529523155/my_ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1529523155/my_ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=icd3  -DXPRJ_default=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     --rom=default,-fd30-ffff --ram=default,-ef4-eff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/Assignment_two.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
