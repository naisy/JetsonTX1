# Usage:
# sudo su
# ./setup_for_JetsonTX2_JetPack3.2.sh
# JetPack 3.2 Product ReleaseのSPI有効化は失敗。
########################################
# CPUファン自動起動
########################################
./setup_cpufun.sh


########################################
# CPUファンを有効にする
########################################
# ref: http://elinux.org/Jetson/TX1_Controlling_Performance
sh -c 'echo 255 > /sys/kernel/debug/tegra_fan/target_pwm'


########################################
# Max-N modeに設定する
########################################
# デフォルトは -m 3 のMax-P ARM
# OpenCVがビルド出来なくなるから変更しない
#nvpmodel -q --verbose
#nvpmodel -m 0
#nvpmodel -q --verbose


########################################
# Ubuntu 16.04 パッケージ更新
########################################
./setup_update.sh


########################################
# .bashrc (ubuntu/root両方)
########################################
./setup_bash.sh


########################################
# dircolors
########################################
./setup_dircolors.sh


########################################
# reboot
########################################
reboot

