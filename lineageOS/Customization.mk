# Copyright (C) 2020 martin Dünkelmann <nc-duenkekl3@netcologne.de>
#
# ROM specific customization for Sony Open Devices
# PlatformConfig/BoardConfig overrides
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# AVB prevents modifications like GAPPS or the dualsim patcher from working.
# It detects these "modified" files and prevent them from being loaded.
# Which results in a broken device, after an OTA reactivates AVB.
# AVB is anyway not useful, since we can't relock our device and everybody with direct hardware access can modify it.
# If we set this variable in the customization repo, it won't get used, since it gets already set in the SODP device trees.
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
