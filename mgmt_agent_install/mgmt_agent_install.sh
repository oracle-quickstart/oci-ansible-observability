#! /bin/bash

#Set the variables
mgmt_agent_sratch=/tmp/mgmt_agent_scratch
mgmt_agent_package=$mgmt_agent_sratch/oracle.mgmt_agent.rpm
INSTALL_JAVA=false

checksta() {
    local sta=$1
    local msg=$2
    #echo $msg 
    if [ $sta -eq 0 ]; then
        echo "Done: $msg" 
    else
        echo "FAILED: $msg"
        exit 1
    fi
}

find_java_version()
{
if type -p java; then
    echo found java executable in PATH
    _java=java
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo found java executable in JAVA_HOME
    _java="$JAVA_HOME/bin/java"
else
    echo "no java found on the system, Exiting.."
    exit 1
fi

if [[ "$_java" ]]; then
    version=$("$_java" -version 2>&1 | awk -F '"' '/version/ {print $2}' | head -c3)
    echo version "$version"
    check_version=`echo "$version >= 1.8" | bc`
    if [[ $check_version -ge 1 ]]; then
        echo "version is greater than or equal to 1.8, Continuing.."
    else 
        // To-do Add code to install java in this case.
        if [ INSTALL_JAVA == "true" ]; then
           echo "Java version is less than or equal to 1.8, Installing Java .."
           #install_java
        else
           echo "Java version is less than or equal to 1.8, Exiting .."
           exit 1
        fi
    fi
fi
}

install_java()
{
    sudo yum install -q -y java
    checksta $? "Installing Java .."
    find_java_version
}

find_java_version
cd $mgmt_agent_sratch
sudo rpm -ivh $mgmt_agent_package 
checksta $? "Starting mgmt_agent RPM Package Install .."

sudo /opt/oracle/mgmt_agent/agent_inst/bin/setup.sh opts=${mgmt_agent_sratch}/input.rsp
checksta $? "Starting the management agent setup .."

sleep 30s

systemctl is-active --quiet mgmt_agent.service
checksta $? "Checking management agent service status .."

echo "Completed management agent installation successfully .."

rm -r $mgmt_agent_sratch

echo "Cleaning up the mgmt_agent scratch .."
