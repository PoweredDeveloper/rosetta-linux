sudo mkdir /eda
sudo mkdir /qinst
cd /qinst
wget https://downloads.intel.com/akdlm/software/acdsinst/24.1std/1077/ib_tar/Quartus-lite-24.1std.0.1077-linux.tar
tar xf Quartus-lite-24.1std.0.1077-linux.tar
sudo ./setup.sh --mode unattended --accept_eula 1 --installdir /eda/quartus/24.1std --create_desktop_shortcuts 1
