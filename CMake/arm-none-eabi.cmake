set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(TOOLCHAIN_PREFIX arm-none-eabi-)

# set(CFLAGS_INIT
# 	-fdata-sections
# 	-ffunction-sections
# 	--specs=nano.specs
# 	-Wl,--gc-section
# )

# set(CXXFLAGS_INIT
# 	# ${CFLAGS_INIT}
# 	-fdata-sections
# 	-ffunction-sections
# 	--specs=nano.specs
# 	-Wl,--gc-section
# 	-fno-rtti
# 	-fno-exceptions
# 	-fno-threadsafe-statics
# )

# string(REPLACE ";" " " CFLAGS_INIT_STR "${CFLAGS_INIT}")
# string(REPLACE ";" " " CXXFLAGS_INIT_STR "${CXXFLAGS_INIT}")


# set(CFLAGS
# 	${CFLAGS_INIT_STR}
# 	CACHE STRING "" FORCE
# )

# set(CXXFLAGS
# 	${CXXFLAGS_INIT_STR}
# 	CACHE STRING "" FORCE
# )

set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc ${CFLAGS})
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++ ${CFLAGS} ${CXX_FLAGS})
set(CMAKE_ASM_COMPILER ${CMAKE_C_COMPILER})
set(CMAKE_OBJCOPY ${TOOLCHAIN_PREFIX}objcopy)
set(CMAKE_SIZE ${TOOLCHAIN_PREFIX}size)

set(CMAKE_EXECUTABLE_SUFFIX_ASM ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_C ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_CXX ".elf")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

