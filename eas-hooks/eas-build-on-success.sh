#!/usr/bin/env bash

# function cleanup()
# {
#   echo 'Cleaning up...'
#   if [[ "$EAS_BUILD_PLATFORM" == "android" ]]; then
#     # Kill emulator
#     adb emu kill &
#   fi
# }

# if [[ "$EAS_BUILD_PROFILE" != "test" ]]; then
#   exit
# fi

# # Fail if anything errors
# set -eox pipefail
# # If this script exits, trap it first and clean up the emulator
# trap cleanup EXIT


#ANDROID_EMULATOR=pixel_4
#if [[ "$EAS_BUILD_PLATFORM" == "android" ]]; then
#  # Execute Android tests
#  if [[ "$EAS_BUILD_PROFILE" == "test" ]]; then
#    detox test --configuration android.release
#  fi
#else
  # Execute iOS tests
  if [[ "$EAS_BUILD_PROFILE" == "test" ]]; then
    detox test --configuration ios.release
  fi
fi