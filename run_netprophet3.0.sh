#!/bin/bash
l_top=(2000 1500 1000)
p_wd=/scratch/mblab/dabid/netprophet/
./netprophet3.0.sh \
  --p_in_target ${p_wd}code_netprophet3.0/sample_data/genes \
  --p_in_reg ${p_wd}code_netprophet3.0/sample_data/regulators \
  --p_in_sample ${p_wd}code_netprophet3.0/sample_data/conditions \
  --p_in_expr_target ${p_wd}code_netprophet3.0/sample_data/data.expr.tsv \
  --p_in_expr_reg ${p_wd}code_netprophet3.0/sample_data/expr_reg \
  --flag_slurm "ON" \
  --p_out_logs ${p_wd}net_logs/ \
  --p_out_dir ${p_wd}net_debug/test2/ \
  --data test2 \
  --flag_global_shrinkage "ON" \
  --flag_local_shrinkage "OFF" \
  --model "netprophet" \
  --p_in_net_de ${p_wd}code_netprophet3.0/sample_data/signed.de.adj \
  --p_in_binding_event ${p_wd}data_binding/reg_target_cc_exo_chip_exclusive.txt \
  --l_count_top ${l_top[@]}
