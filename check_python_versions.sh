ls -1 /usr/bin/python* /usr/local/bin/python* 2>/dev/null | sort

# LIST ALL Python version 
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 10
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.14 20

# TO FINALIZE WHICH IS DEFAULT
# sudo update-alternatives --config python3

# Another alternative using 'uv' 
# uv python list