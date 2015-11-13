#!/bin/sh

# Apply these patches before compilation:

# frameworks/av:
cd frameworks/av
git reset --hard
wget https://github.com/sultanxda/android_frameworks_av/commit/52f0c404ede6ca60cbc81583c4b9a7e3a86ffd41.patch
patch -p1 < 52f0c404ede6ca60cbc81583c4b9a7e3a86ffd41.patch
git clean -f -d

# frameworks/base:
cd ../../frameworks/base
git reset --hard
wget https://github.com/CyanogenMod/android_frameworks_base/commit/c783d6643ecc607e917e27091bb4d6b126c470d4.patch
patch -p1 < c783d6643ecc607e917e27091bb4d6b126c470d4.patch
wget https://github.com/sultanxda/android_frameworks_base/commit/1849d8f5b274a69bd3b11566005659e6f94ec25b.patch
patch -p1 < 1849d8f5b274a69bd3b11566005659e6f94ec25b.patch
wget https://github.com/CyanogenMod/android_frameworks_base/commit/3c0a9b2bc72d885ad0161c49c5881238157068d3.patch
patch -p1 < 3c0a9b2bc72d885ad0161c49c5881238157068d3.patch
git clean -f -d

# packages/apps/Settings:
cd ../../packages/apps/Settings
git reset --hard
wget https://github.com/sultanxda/android_packages_apps_Settings/commit/afb73252dd27e7a725ae823101fd47aa0938d3d9.patch
patch -p1 < afb73252dd27e7a725ae823101fd47aa0938d3d9.patch
git clean -f -d

cd ../..
