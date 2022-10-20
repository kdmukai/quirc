QUIRC_MOD_DIR := $(USERMOD_DIR)

# Add all C files to SRC_USERMOD.
SRC_USERMOD += $(QUIRC_MOD_DIR)/quirc/lib/decode.c
SRC_USERMOD += $(QUIRC_MOD_DIR)/quirc/lib/identify.c
SRC_USERMOD += $(QUIRC_MOD_DIR)/quirc/lib/quirc.c
SRC_USERMOD += $(QUIRC_MOD_DIR)/quirc/lib/version_db.c
SRC_USERMOD += $(QUIRC_MOD_DIR)/quirc/quirc_bindings.c


# We can add our module folder to include paths if needed
CFLAGS_USERMOD += -I$(QUIRC_MOD_DIR)/quirc

