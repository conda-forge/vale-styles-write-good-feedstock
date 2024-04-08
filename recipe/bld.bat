@echo on
set VALE_STYLES_PATH=%PREFIX%\share\vale\styles
md "%VALE_STYLES_PATH%"

copy "%RECIPE_DIR%\.vale.ini" .vale.ini

vale sync || exit 1
vale ls-config || exit 1
vale ls-dirs || exit 1

copy "LICENSE-vale-write-good-0.4.0" LICENSE || exit 1
