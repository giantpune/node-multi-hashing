# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := multihashing
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=multihashing' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-D_GNU_SOURCE -maes -fPIC -Ofast -flto -fuse-linker-plugin -funroll-loops -funswitch-loops -fpeel-loops \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x \
	-std=c++0x -maes -march=native

INCS_Debug := \
	-I/usr/include/nodejs/include/node \
	-I/usr/include/nodejs/src \
	-I/usr/include/nodejs/deps/uv/include \
	-I/usr/include/nodejs/deps/v8/include \
	-I$(srcdir)/crypto

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=multihashing' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-D_GNU_SOURCE -maes -fPIC -Ofast -flto -fuse-linker-plugin -funroll-loops -funswitch-loops -fpeel-loops \
	-O3 \
	-ffunction-sections \
	-fdata-sections

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x \
	-std=c++0x -maes -march=native

INCS_Release := \
	-I/usr/include/nodejs/include/node \
	-I/usr/include/nodejs/src \
	-I/usr/include/nodejs/deps/uv/include \
	-I/usr/include/nodejs/deps/v8/include \
	-I$(srcdir)/crypto

OBJS := \
	$(obj).target/$(TARGET)/multihashing.o \
	$(obj).target/$(TARGET)/scryptn.o \
	$(obj).target/$(TARGET)/yescrypt/sha256_Y.o \
	$(obj).target/$(TARGET)/yescrypt/yescrypt-best.o \
	$(obj).target/$(TARGET)/yescrypt/yescryptcommon.o \
	$(obj).target/$(TARGET)/keccak.o \
	$(obj).target/$(TARGET)/skein.o \
	$(obj).target/$(TARGET)/x11.o \
	$(obj).target/$(TARGET)/quark.o \
	$(obj).target/$(TARGET)/bcrypt.o \
	$(obj).target/$(TARGET)/groestl.o \
	$(obj).target/$(TARGET)/blake.o \
	$(obj).target/$(TARGET)/fugue.o \
	$(obj).target/$(TARGET)/qubit.o \
	$(obj).target/$(TARGET)/hefty1.o \
	$(obj).target/$(TARGET)/shavite3.o \
	$(obj).target/$(TARGET)/cryptonight.o \
	$(obj).target/$(TARGET)/x13.o \
	$(obj).target/$(TARGET)/x14.o \
	$(obj).target/$(TARGET)/boolberry.o \
	$(obj).target/$(TARGET)/nist5.o \
	$(obj).target/$(TARGET)/sha1.o \
	$(obj).target/$(TARGET)/x15.o \
	$(obj).target/$(TARGET)/fresh.o \
	$(obj).target/$(TARGET)/s3.o \
	$(obj).target/$(TARGET)/neoscrypt.o \
	$(obj).target/$(TARGET)/dcrypt.o \
	$(obj).target/$(TARGET)/jh.o \
	$(obj).target/$(TARGET)/c11.o \
	$(obj).target/$(TARGET)/x17.o \
	$(obj).target/$(TARGET)/sha3/sph_hefty1.o \
	$(obj).target/$(TARGET)/sha3/sph_fugue.o \
	$(obj).target/$(TARGET)/sha3/aes_helper.o \
	$(obj).target/$(TARGET)/sha3/sph_blake.o \
	$(obj).target/$(TARGET)/sha3/sph_bmw.o \
	$(obj).target/$(TARGET)/sha3/sph_cubehash.o \
	$(obj).target/$(TARGET)/sha3/sph_echo.o \
	$(obj).target/$(TARGET)/sha3/sph_groestl.o \
	$(obj).target/$(TARGET)/sha3/sph_jh.o \
	$(obj).target/$(TARGET)/sha3/sph_keccak.o \
	$(obj).target/$(TARGET)/sha3/sph_luffa.o \
	$(obj).target/$(TARGET)/sha3/sph_shavite.o \
	$(obj).target/$(TARGET)/sha3/sph_simd.o \
	$(obj).target/$(TARGET)/sha3/sph_skein.o \
	$(obj).target/$(TARGET)/sha3/sph_whirlpool.o \
	$(obj).target/$(TARGET)/sha3/sph_shabal.o \
	$(obj).target/$(TARGET)/sha3/hamsi.o \
	$(obj).target/$(TARGET)/crypto/oaes_lib.o \
	$(obj).target/$(TARGET)/crypto/c_keccak.o \
	$(obj).target/$(TARGET)/crypto/c_groestl.o \
	$(obj).target/$(TARGET)/crypto/c_blake256.o \
	$(obj).target/$(TARGET)/crypto/c_jh.o \
	$(obj).target/$(TARGET)/crypto/c_skein.o \
	$(obj).target/$(TARGET)/crypto/hash.o \
	$(obj).target/$(TARGET)/crypto/aesb.o \
	$(obj).target/$(TARGET)/crypto/wild_keccak.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-fPIC -Ofast -flto -fuse-linker-plugin

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-fPIC -Ofast -flto -fuse-linker-plugin

LIBS :=

$(obj).target/multihashing.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/multihashing.node: LIBS := $(LIBS)
$(obj).target/multihashing.node: TOOLSET := $(TOOLSET)
$(obj).target/multihashing.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/multihashing.node
# Add target alias
.PHONY: multihashing
multihashing: $(builddir)/multihashing.node

# Copy this to the executable output path.
$(builddir)/multihashing.node: TOOLSET := $(TOOLSET)
$(builddir)/multihashing.node: $(obj).target/multihashing.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/multihashing.node
# Short alias for building this executable.
.PHONY: multihashing.node
multihashing.node: $(obj).target/multihashing.node $(builddir)/multihashing.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/multihashing.node

