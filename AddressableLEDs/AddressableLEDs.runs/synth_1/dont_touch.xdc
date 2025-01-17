# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/Arty/Arty_Master.xdc

# Block Designs: bd/design_1/design_1.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1 || ORIG_REF_NAME==design_1}]

# IP: bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_microblaze_0_0 || ORIG_REF_NAME==design_1_microblaze_0_0}]

# IP: bd/design_1/ip/design_1_DigiLED_0_0/design_1_DigiLED_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_DigiLED_0_0 || ORIG_REF_NAME==design_1_DigiLED_0_0}]

# IP: bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_axi_gpio_0_0 || ORIG_REF_NAME==design_1_axi_gpio_0_0}]

# IP: bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_dlmb_v10_0 || ORIG_REF_NAME==design_1_dlmb_v10_0}]

# IP: bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_ilmb_v10_0 || ORIG_REF_NAME==design_1_ilmb_v10_0}]

# IP: bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_dlmb_bram_if_cntlr_0 || ORIG_REF_NAME==design_1_dlmb_bram_if_cntlr_0}]

# IP: bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_ilmb_bram_if_cntlr_0 || ORIG_REF_NAME==design_1_ilmb_bram_if_cntlr_0}]

# IP: bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_lmb_bram_0 || ORIG_REF_NAME==design_1_lmb_bram_0}]

# IP: bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_mdm_1_0 || ORIG_REF_NAME==design_1_mdm_1_0}]

# IP: bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_clk_wiz_1_0 || ORIG_REF_NAME==design_1_clk_wiz_1_0}]

# IP: bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==design_1_rst_clk_wiz_1_100M_0}]

# IP: bd/design_1/ip/design_1_microblaze_0_axi_periph_0/design_1_microblaze_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_microblaze_0_axi_periph_0 || ORIG_REF_NAME==design_1_microblaze_0_axi_periph_0}]

# IP: bd/design_1/ip/design_1_xbar_0/design_1_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_xbar_0 || ORIG_REF_NAME==design_1_xbar_0}]

# XDC: bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_microblaze_0_0 || ORIG_REF_NAME==design_1_microblaze_0_0}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc_debug.xdc

# XDC: bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_axi_gpio_0_0 || ORIG_REF_NAME==design_1_axi_gpio_0_0}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_axi_gpio_0_0 || ORIG_REF_NAME==design_1_axi_gpio_0_0}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_dlmb_v10_0 || ORIG_REF_NAME==design_1_dlmb_v10_0}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_ilmb_v10_0 || ORIG_REF_NAME==design_1_ilmb_v10_0}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_mdm_1_0 || ORIG_REF_NAME==design_1_mdm_1_0}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0_ooc_trace.xdc

# XDC: bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_clk_wiz_1_0 || ORIG_REF_NAME==design_1_clk_wiz_1_0}] {/inst }]/inst ]]

# XDC: bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_clk_wiz_1_0 || ORIG_REF_NAME==design_1_clk_wiz_1_0}] {/inst }]/inst ]]

# XDC: bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==design_1_rst_clk_wiz_1_100M_0}]

# XDC: bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==design_1_rst_clk_wiz_1_100M_0}]

# XDC: bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc

# XDC: bd/design_1/design_1_ooc.xdc
