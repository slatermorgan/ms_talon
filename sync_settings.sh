#!/bin/bash

# Usage: ./sync_settings.sh

SOURCE_DIR=settings
DEST_DIR=../community/settings/

cp -rT "$SOURCE_DIR" "$DEST_DIR"

echo "Successfuly synced talon settings from $SOURCE_DIR to $DEST_DIR"
