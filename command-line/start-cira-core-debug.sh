bash -c 'LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib && source /opt/ros/kinetic/setup.bash && source ~/.cira_core_install/cira_libs_ws/install/setup.bash --extend && export LD_LIBRARY_PATH=$(find /usr/lib -iname nvidia-* -type d 2>&1 | sed "{:q;N;s/\n/:/g;t q}"):${LD_LIBRARY_PATH} && export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/qt511/lib && rosrun cira_core cira_core_run ;$SHELL'