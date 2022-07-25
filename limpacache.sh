# SCRIPT limpa cache e swap disco
# EXECUTAR SCRIPT COMO ROOT
# Edit by Oscar 07/03/2018
#
echo "SCRIPT LIMPA SWAP E CACHE"
sync; echo 3 > /proc/sys/vm/drop_caches
sysctl -w vm.drop_caches=3
swapoff -a && swapon -a
echo "executado:" $(date +"%x %r") > /var/log/log_script_clear_cash_swap.txt
echo "SCRIPT EXECUTADO COM SUCESSO"
#FIM
