QUIRC_MOD_DIR := $(USERMOD_DIR)

# Add all C files to SRC_USERMOD.
SRC_USERMOD += $(QUIRC_MOD_DIR)/lib/decode.c
SRC_USERMOD += $(QUIRC_MOD_DIR)/lib/identify.c
SRC_USERMOD += $(QUIRC_MOD_DIR)/lib/quirc.c
SRC_USERMOD += $(QUIRC_MOD_DIR)/lib/version_db.c
SRC_USERMOD += $(QUIRC_MOD_DIR)/quirc_bindings.c


# We can add our module folder to include paths if needed
CFLAGS_USERMOD += -I$(QUIRC_MOD_DIR) -Wno-sign-compare -Wno-unused-variable
