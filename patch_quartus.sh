sudo cp /opt/quartus/24.1std/quartus/adm/qenv.sh /opt/quartus/24.1std/quartus/adm/qenv.sh.bak
sudo sed -i '/# We don'\''t support processors without SSE extensions (e.g. Pentium II and older CPUs)./i\
if test `uname -m` = "aarch64" ; then\
  export QUARTUS_BIT_TYPE=64\
fi
' /opt/quartus/24.1std/quartus/adm/qenv.sh

sudo sed -i '/# We don'\''t support processors without SSE extensions (e.g. Pentium II and older CPUs)./,/##### Determine what bitness executables we should use/ {
    /^[^#]/ s/^/# /
}' "/opt/quartus/24.1std/quartus/adm/qenv.sh"

#wget https://github.com/federunco/federunco/raw/refs/heads/main/libccl_sqlite3.so
#sudo cp /opt/quartus/24.1std/quartus/linux64/libccl_sqlite3.so /opt/quartus/24.1std/quartus/linux64/libccl_sqlite3.so.bak
#sudo cp libccl_sqlite3.so /opt/quartus/24.1std/quartus/linux64/libccl_sqlite3.so