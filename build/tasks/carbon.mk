# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 CarbonROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


CARBON_TARGET_PACKAGE := $(PRODUCT_OUT)/CARBON-$(CARBON_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

# This is for PhaseBurn
.PHONY: sandwich measandwich
sandwich:
	@echo ""
	@echo -e ${CL_CYN}"                  Make me a sandwich.                              "${CL_RST}
	@echo -e ${CL_CYN}"                          |                                        "${CL_RST}
	@echo -e ${CL_CYN}"                          |		       What? Make it yourself."${CL_RST}
	@echo -e ${CL_CYN}"                          |                             |          "${CL_RST}
	@echo -e ${CL_CYN}"          sudo make me a sandwich.                      |          "${CL_RST}
	@echo -e ${CL_CYN}"                          |                             |          "${CL_RST}
	@echo -e ${CL_CYN}"                          |                           Okay         "${CL_RST}
	@echo -e ${CL_CYN}"                          |                              \         "${CL_RST}
	@echo -e ${CL_CYN}"                          |                              :#.       "${CL_RST}
	@echo -e ${CL_CYN}"                          |                             ;\` .#      "${CL_RST}
	@echo -e ${CL_CYN}"                          |                             +   '      "${CL_RST}
	@echo -e ${CL_CYN}"                          |                            \`.   '      "${CL_RST}
	@echo -e ${CL_CYN}"                         ,,                            ,    +      "${CL_RST}
	@echo -e ${CL_CYN}"                        #\` @                           ,\`   @      "${CL_RST}
	@echo -e ${CL_CYN}"                       ,    #                          \`;  .,      "${CL_RST}
	@echo -e ${CL_CYN}"                       ;    +                           :#+#       "${CL_RST}
	@echo -e ${CL_CYN}"                    :#+;,   :                             @        "${CL_RST}
	@echo -e ${CL_CYN}"                    #  .@\`  +                            ,+#       "${CL_RST}
	@echo -e ${CL_CYN}"                    +   #+##.                            #+..      "${CL_RST}
	@echo -e ${CL_CYN}"                    '   \`'#                              ;+ #      "${CL_RST}
	@echo -e ${CL_CYN}"                    ,    +#.,@::++                     .. #  ;.    "${CL_RST}
	@echo -e ${CL_CYN}"                    .    @    \`,@ #                    #  :\`       "${CL_RST}
	@echo -e ${CL_CYN}"                    \`     ,#@#+#+'                       ; #       "${CL_RST}
	@echo -e ${CL_CYN}"                    .            .#                     .  \`.      "${CL_RST}
	@echo -e ${CL_CYN}"                    \`            ,\`,                    +   #      "${CL_RST}
	@echo -e ${CL_CYN}"                    :     \`\`\` \`  ; #                    ;   +      "${CL_RST}
	@echo -e ${CL_CYN}"                     @@#;,...,:@@,  \`                   ,   ,\`     "${CL_RST}
	@echo -e ${CL_CYN}"                      #,       #'                                  "${CL_RST}
	@echo -e ${CL_CYN}"                      \`        \`                                   "${CL_RST}
measandwich: sandwich

.PHONY: carbon
carbon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(CARBON_TARGET_PACKAGE)
	$(hide) $(SHA256) $(CARBON_TARGET_PACKAGE) > $(CARBON_TARGET_PACKAGE).sha256sum
	@echo ""
	@echo -e ${CL_YLW}"══════════════════════════════════════════════════════════════════════════════════════"${CL_RST}
	@echo -e ${CL_BLU}"    ██████╗ █████╗ ██████╗ ██████╗  ██████╗ ███╗   ██╗ ██████╗  ██████╗ ███╗   ███╗   "${CL_RST}
	@echo -e ${CL_BLU}"   ██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔═══██╗████╗  ██║ ██╔══██╗██╔═══██╗████╗ ████║   "${CL_RST}
	@echo -e ${CL_BLU}"   ██║     ███████║██████╔╝██████╔╝██║   ██║██╔██╗ ██║ ██████╔╝██║   ██║██╔████╔██║   "${CL_RST}
	@echo -e ${CL_BLU}"   ██║     ██╔══██║██╔══██╗██╔══██╗██║   ██║██║╚██╗██║ ██╔══██╗██║   ██║██║╚██╔╝██║   "${CL_RST}
	@echo -e ${CL_BLU}"   ╚██████╗██║  ██║██║  ██║██████╔╝╚██████╔╝██║ ╚████║ ██║  ██║╚██████╔╝██║ ╚═╝ ██║   "${CL_RST}
	@echo -e ${CL_BLU}"    ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝   "${CL_RST}
	@echo -e ${CL_RED}"                                      carbonrom.org                                   "${CL_RST}
	@echo -e ${CL_YLW}"══════════════════════════════════════════════════════════════════════════════════════"${CL_RST}
	@echo -e ${CL_CYN}"Package zip: "${CL_MAG} $(CARBON_TARGET_PACKAGE)                                       ${CL_RST}
	@echo -e ${CL_CYN}"Package sha256: "${CL_MAG}" `cat $(CARBON_TARGET_PACKAGE).sha256sum | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_CYN}"Package size:"${CL_MAG}" `du -h $(CARBON_TARGET_PACKAGE) | cut -f 1`                  "${CL_RST}
	@echo -e ${CL_YLW}"══════════════════════════════════════════════════════════════════════════════════════"${CL_RST}
