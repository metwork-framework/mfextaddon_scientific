#!/bin/bash

set -eu
set -x

cd /src


echo -e "[metwork_${DEP_BRANCH}]" >/etc/yum.repos.d/metwork.repo
echo -e "name=Metwork Continuous Integration Branch ${DEP_BRANCH}" >> /etc/yum.repos.d/metwork.repo
echo -e "baseurl=http://metwork-framework.org/pub/metwork/continuous_integration/rpms/${DEP_BRANCH}/${OS_VERSION}/" >> /etc/yum.repos.d/metwork.repo
echo -e "gpgcheck=0\n\enabled=1\n\metadata_expire=0\n" >>/etc/yum.repos.d/metwork.repo

    for rpm in ./rpms/metwork-mfext*.rpm; do rpm -qp --requires ./$rpm | grep metwork | grep -v "=" >> liste_dep; done
    cat liste_dep | sort -u > liste_dep2
    yum clean all
    yum -y install `cat liste_dep2`
    rm -f liste_dep liste_dep2
    rm /etc/yum.repos.d/metwork.repo
    yum clean all
    yum -y localinstall ./rpms/metwork-mfext*.rpm
    if test -d "integration_tests"; then cd integration_tests; /opt/metwork-mfext/bin/mfext_wrapper ./run_integration_tests.sh; cd ..; fi

