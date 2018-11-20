# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := test_dataview
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=test_dataview' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	-I/home/guybedford/Projects/node/include/node \
	-I/home/guybedford/Projects/node/src \
	-I/home/guybedford/Projects/node/deps/openssl/config \
	-I/home/guybedford/Projects/node/deps/openssl/openssl/include \
	-I/home/guybedford/Projects/node/deps/uv/include \
	-I/home/guybedford/Projects/node/deps/zlib \
	-I/home/guybedford/Projects/node/deps/v8/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=test_dataview' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	-I/home/guybedford/Projects/node/include/node \
	-I/home/guybedford/Projects/node/src \
	-I/home/guybedford/Projects/node/deps/openssl/config \
	-I/home/guybedford/Projects/node/deps/openssl/openssl/include \
	-I/home/guybedford/Projects/node/deps/uv/include \
	-I/home/guybedford/Projects/node/deps/zlib \
	-I/home/guybedford/Projects/node/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/../entry_point.o \
	$(obj).target/$(TARGET)/test_dataview.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/test_dataview.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/test_dataview.node: LIBS := $(LIBS)
$(obj).target/test_dataview.node: TOOLSET := $(TOOLSET)
$(obj).target/test_dataview.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/test_dataview.node
# Add target alias
.PHONY: test_dataview
test_dataview: $(builddir)/test_dataview.node

# Copy this to the executable output path.
$(builddir)/test_dataview.node: TOOLSET := $(TOOLSET)
$(builddir)/test_dataview.node: $(obj).target/test_dataview.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/test_dataview.node
# Short alias for building this executable.
.PHONY: test_dataview.node
test_dataview.node: $(obj).target/test_dataview.node $(builddir)/test_dataview.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/test_dataview.node