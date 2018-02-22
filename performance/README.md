# Automated Performance Tests for Openshift.io

## There are the following scenarios here:
 * ### Hypothesis Scout ( Interacts with Measurements API ) ([`hypothesis-scout`](https://github.com/fabric8-hdd/fabric8-hypothesis-tests/tree/master/performance/scripts/hypothesis-scout))
   These tests measure performance (response time) of the REST endpoints of the hypothesis-measurements-api.
     
 * ### Hypothesis Manager Client (Interacts with Manager API.) ([`hypothesis-manager-client`](https://github.com/fabric8-hdd/fabric8-hypothesis-tests/tree/master/performance/scripts/hypothesis-manager-client))
   These tests measure performance (response time) of the REST endpoints of the hypothesis-manager-api.

## Resources:

 * [GitHub repository `fabric8-hdd/fabric8-hypothesis-tests`](https://github.com/fabric8-services/fabric8-auth-tests) - Under `performance` directory
   * [`jenkins-jobs/`](https://github.com/fabric8-services/fabric8-auth-tests/tree/master/performance/jenkins-jobs) - [Jenkins Job Builder](https://docs.openstack.org/infra/jenkins-job-builder/) descriptors for the Jenkins jobs.
   * [`openstack/osioperf-lab/`](https://github.com/fabric8-services/fabric8-auth-tests/tree/master/performance/openstack/osioperf-lab) - Resources for OsioPerf LAB
   * [`scripts/`](https://github.com/fabric8-services/fabric8-auth-tests/tree/master/performance/scripts) - Sources and automation scripts for the performance scenarios.
 * [Jenkins](https://osioperf-jenkins.rhev-ci-vms.eng.rdu2.redhat.com) - Used to run the automated jobs to execute the performance scenarios.
 * [OsioPerf LAB](https://ci-rhos.centralci.eng.rdu2.redhat.com/) - An OpenStack cluster (`OpenShift.io-Performance-Testing` project) for the clients that will simulate concurrent users accessing the tested system.
   * 2 server nodes (4 CPU, 8GB RAM)
     * `osioperf-server-1`: Used to host the tested service.
     * `osioperf-server-2`: Used as a master for the performance testing tool or a second node for tested service if needed.
   * 10 client nodes (2 CPU, 4GB RAM)
     * `osioperf-client-1`, …, `osioperf-client-10`: Used as slaves for the performance testing tool simulating multiple concurrent users accessing the tested service from multiple places.
   The slaves provides the means to simulate large number of concurrent users (500, 1000, … ) to hit not only the OsioPerf servers but the OSIO (prod-like environment) itself, as well.
   The rest of the resources kept ready for ad-hoc needs.
 * [Zabbix](https://zabbix.devshift.net:9443/zabbix/index.php) - A place where to place results to keep track.
 * [Locust](https://locust.io/) - An open source load testing tool capable of distributed testing (1 master - N slaves).