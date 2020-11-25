import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for SystemInfo
void main() {
    var instance = new SystemInfo();

  group('test SystemInfo', () {
    // Unique identifier of the daemon.  <p><br /></p>  > **Note**: The format of the ID itself is not part of the API, and > should not be considered stable. 
    // String ID (default value: null)
    test('to test the property `ID`', () async {
      // TODO
    });

    // Total number of containers on the host.
    // int containers (default value: null)
    test('to test the property `containers`', () async {
      // TODO
    });

    // Number of containers with status `\"running\"`. 
    // int containersRunning (default value: null)
    test('to test the property `containersRunning`', () async {
      // TODO
    });

    // Number of containers with status `\"paused\"`. 
    // int containersPaused (default value: null)
    test('to test the property `containersPaused`', () async {
      // TODO
    });

    // Number of containers with status `\"stopped\"`. 
    // int containersStopped (default value: null)
    test('to test the property `containersStopped`', () async {
      // TODO
    });

    // Total number of images on the host.  Both _tagged_ and _untagged_ (dangling) images are counted. 
    // int images (default value: null)
    test('to test the property `images`', () async {
      // TODO
    });

    // Name of the storage driver in use.
    // String driver (default value: null)
    test('to test the property `driver`', () async {
      // TODO
    });

    // Information specific to the storage driver, provided as \"label\" / \"value\" pairs.  This information is provided by the storage driver, and formatted in a way consistent with the output of `docker info` on the command line.  <p><br /></p>  > **Note**: The information returned in this field, including the > formatting of values and labels, should not be considered stable, > and may change without notice. 
    // List<List<String>> driverStatus (default value: [])
    test('to test the property `driverStatus`', () async {
      // TODO
    });

    // Root directory of persistent Docker state.  Defaults to `/var/lib/docker` on Linux, and `C:\\ProgramData\\docker` on Windows. 
    // String dockerRootDir (default value: null)
    test('to test the property `dockerRootDir`', () async {
      // TODO
    });

    // Status information about this node (standalone Swarm API).  <p><br /></p>  > **Note**: The information returned in this field is only propagated > by the Swarm standalone API, and is empty (`null`) when using > built-in swarm mode. 
    // List<List<String>> systemStatus (default value: [])
    test('to test the property `systemStatus`', () async {
      // TODO
    });

    // PluginsInfo plugins (default value: null)
    test('to test the property `plugins`', () async {
      // TODO
    });

    // Indicates if the host has memory limit support enabled.
    // bool memoryLimit (default value: null)
    test('to test the property `memoryLimit`', () async {
      // TODO
    });

    // Indicates if the host has memory swap limit support enabled.
    // bool swapLimit (default value: null)
    test('to test the property `swapLimit`', () async {
      // TODO
    });

    // Indicates if the host has kernel memory limit support enabled.
    // bool kernelMemory (default value: null)
    test('to test the property `kernelMemory`', () async {
      // TODO
    });

    // Indicates if CPU CFS(Completely Fair Scheduler) period is supported by the host. 
    // bool cpuCfsPeriod (default value: null)
    test('to test the property `cpuCfsPeriod`', () async {
      // TODO
    });

    // Indicates if CPU CFS(Completely Fair Scheduler) quota is supported by the host. 
    // bool cpuCfsQuota (default value: null)
    test('to test the property `cpuCfsQuota`', () async {
      // TODO
    });

    // Indicates if CPU Shares limiting is supported by the host. 
    // bool cPUShares (default value: null)
    test('to test the property `cPUShares`', () async {
      // TODO
    });

    // Indicates if CPUsets (cpuset.cpus, cpuset.mems) are supported by the host.  See [cpuset(7)](https://www.kernel.org/doc/Documentation/cgroup-v1/cpusets.txt) 
    // bool cPUSet (default value: null)
    test('to test the property `cPUSet`', () async {
      // TODO
    });

    // Indicates if the host kernel has PID limit support enabled.
    // bool pidsLimit (default value: null)
    test('to test the property `pidsLimit`', () async {
      // TODO
    });

    // Indicates if OOM killer disable is supported on the host.
    // bool oomKillDisable (default value: null)
    test('to test the property `oomKillDisable`', () async {
      // TODO
    });

    // Indicates IPv4 forwarding is enabled.
    // bool iPv4Forwarding (default value: null)
    test('to test the property `iPv4Forwarding`', () async {
      // TODO
    });

    // Indicates if `bridge-nf-call-iptables` is available on the host.
    // bool bridgeNfIptables (default value: null)
    test('to test the property `bridgeNfIptables`', () async {
      // TODO
    });

    // Indicates if `bridge-nf-call-ip6tables` is available on the host.
    // bool bridgeNfIp6tables (default value: null)
    test('to test the property `bridgeNfIp6tables`', () async {
      // TODO
    });

    // Indicates if the daemon is running in debug-mode / with debug-level logging enabled. 
    // bool debug (default value: null)
    test('to test the property `debug`', () async {
      // TODO
    });

    // The total number of file Descriptors in use by the daemon process.  This information is only returned if debug-mode is enabled. 
    // int nFd (default value: null)
    test('to test the property `nFd`', () async {
      // TODO
    });

    // The  number of goroutines that currently exist.  This information is only returned if debug-mode is enabled. 
    // int nGoroutines (default value: null)
    test('to test the property `nGoroutines`', () async {
      // TODO
    });

    // Current system-time in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds. 
    // String systemTime (default value: null)
    test('to test the property `systemTime`', () async {
      // TODO
    });

    // The logging driver to use as a default for new containers. 
    // String loggingDriver (default value: null)
    test('to test the property `loggingDriver`', () async {
      // TODO
    });

    // The driver to use for managing cgroups. 
    // String cgroupDriver (default value: "cgroupfs")
    test('to test the property `cgroupDriver`', () async {
      // TODO
    });

    // Number of event listeners subscribed.
    // int nEventsListener (default value: null)
    test('to test the property `nEventsListener`', () async {
      // TODO
    });

    // Kernel version of the host.  On Linux, this information obtained from `uname`. On Windows this information is queried from the <kbd>HKEY_LOCAL_MACHINE\\\\SOFTWARE\\\\Microsoft\\\\Windows NT\\\\CurrentVersion\\\\</kbd> registry value, for example _\"10.0 14393 (14393.1198.amd64fre.rs1_release_sec.170427-1353)\"_. 
    // String kernelVersion (default value: null)
    test('to test the property `kernelVersion`', () async {
      // TODO
    });

    // Name of the host's operating system, for example: \"Ubuntu 16.04.2 LTS\" or \"Windows Server 2016 Datacenter\" 
    // String operatingSystem (default value: null)
    test('to test the property `operatingSystem`', () async {
      // TODO
    });

    // Generic type of the operating system of the host, as returned by the Go runtime (`GOOS`).  Currently returned values are \"linux\" and \"windows\". A full list of possible values can be found in the [Go documentation](https://golang.org/doc/install/source#environment). 
    // String oSType (default value: null)
    test('to test the property `oSType`', () async {
      // TODO
    });

    // Hardware architecture of the host, as returned by the Go runtime (`GOARCH`).  A full list of possible values can be found in the [Go documentation](https://golang.org/doc/install/source#environment). 
    // String architecture (default value: null)
    test('to test the property `architecture`', () async {
      // TODO
    });

    // The number of logical CPUs usable by the daemon.  The number of available CPUs is checked by querying the operating system when the daemon starts. Changes to operating system CPU allocation after the daemon is started are not reflected. 
    // int NCPU (default value: null)
    test('to test the property `NCPU`', () async {
      // TODO
    });

    // Total amount of physical memory available on the host, in bytes. 
    // int memTotal (default value: null)
    test('to test the property `memTotal`', () async {
      // TODO
    });

    // Address / URL of the index server that is used for image search, and as a default for user authentication for Docker Hub and Docker Cloud. 
    // String indexServerAddress (default value: "https://index.docker.io/v1/")
    test('to test the property `indexServerAddress`', () async {
      // TODO
    });

    // RegistryServiceConfig registryConfig (default value: null)
    test('to test the property `registryConfig`', () async {
      // TODO
    });

    // User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`). 
    // List<Object> genericResources (default value: [])
    test('to test the property `genericResources`', () async {
      // TODO
    });

    // HTTP-proxy configured for the daemon. This value is obtained from the [`HTTP_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable. Credentials ([user info component](https://tools.ietf.org/html/rfc3986#section-3.2.1)) in the proxy URL are masked in the API response.  Containers do not automatically inherit this configuration. 
    // String httpProxy (default value: null)
    test('to test the property `httpProxy`', () async {
      // TODO
    });

    // HTTPS-proxy configured for the daemon. This value is obtained from the [`HTTPS_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable. Credentials ([user info component](https://tools.ietf.org/html/rfc3986#section-3.2.1)) in the proxy URL are masked in the API response.  Containers do not automatically inherit this configuration. 
    // String httpsProxy (default value: null)
    test('to test the property `httpsProxy`', () async {
      // TODO
    });

    // Comma-separated list of domain extensions for which no proxy should be used. This value is obtained from the [`NO_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable.  Containers do not automatically inherit this configuration. 
    // String noProxy (default value: null)
    test('to test the property `noProxy`', () async {
      // TODO
    });

    // Hostname of the host.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // User-defined labels (key/value metadata) as set on the daemon.  <p><br /></p>  > **Note**: When part of a Swarm, nodes can both have _daemon_ labels, > set through the daemon configuration, and _node_ labels, set from a > manager node in the Swarm. Node labels are not included in this > field. Node labels can be retrieved using the `/nodes/(id)` endpoint > on a manager node in the Swarm. 
    // List<String> labels (default value: [])
    test('to test the property `labels`', () async {
      // TODO
    });

    // Indicates if experimental features are enabled on the daemon. 
    // bool experimentalBuild (default value: null)
    test('to test the property `experimentalBuild`', () async {
      // TODO
    });

    // Version string of the daemon.  > **Note**: the [standalone Swarm API](https://docs.docker.com/swarm/swarm-api/) > returns the Swarm version instead of the daemon  version, for example > `swarm/1.2.8`. 
    // String serverVersion (default value: null)
    test('to test the property `serverVersion`', () async {
      // TODO
    });

    // URL of the distributed storage backend.   The storage backend is used for multihost networking (to store network and endpoint information) and by the node discovery mechanism.  <p><br /></p>  > **Note**: This field is only propagated when using standalone Swarm > mode, and overlay networking using an external k/v store. Overlay > networks with Swarm mode enabled use the built-in raft store, and > this field will be empty. 
    // String clusterStore (default value: null)
    test('to test the property `clusterStore`', () async {
      // TODO
    });

    // The network endpoint that the Engine advertises for the purpose of node discovery. ClusterAdvertise is a `host:port` combination on which the daemon is reachable by other hosts.  <p><br /></p>  > **Note**: This field is only propagated when using standalone Swarm > mode, and overlay networking using an external k/v store. Overlay > networks with Swarm mode enabled use the built-in raft store, and > this field will be empty. 
    // String clusterAdvertise (default value: null)
    test('to test the property `clusterAdvertise`', () async {
      // TODO
    });

    // List of [OCI compliant](https://github.com/opencontainers/runtime-spec) runtimes configured on the daemon. Keys hold the \"name\" used to reference the runtime.  The Docker daemon relies on an OCI compliant runtime (invoked via the `containerd` daemon) as its interface to the Linux kernel namespaces, cgroups, and SELinux.  The default runtime is `runc`, and automatically configured. Additional runtimes can be configured by the user and will be listed here. 
    // Map<String, Runtime> runtimes (default value: {})
    test('to test the property `runtimes`', () async {
      // TODO
    });

    // Name of the default OCI runtime that is used when starting containers.  The default can be overridden per-container at create time. 
    // String defaultRuntime (default value: "runc")
    test('to test the property `defaultRuntime`', () async {
      // TODO
    });

    // SwarmInfo swarm (default value: null)
    test('to test the property `swarm`', () async {
      // TODO
    });

    // Indicates if live restore is enabled.  If enabled, containers are kept running when the daemon is shutdown or upon daemon start if running containers are detected. 
    // bool liveRestoreEnabled (default value: false)
    test('to test the property `liveRestoreEnabled`', () async {
      // TODO
    });

    // Represents the isolation technology to use as a default for containers. The supported values are platform-specific.  If no isolation value is specified on daemon start, on Windows client, the default is `hyperv`, and on Windows server, the default is `process`.  This option is currently not used on other platforms. 
    // String isolation (default value: "default")
    test('to test the property `isolation`', () async {
      // TODO
    });

    // Name and, optional, path of the `docker-init` binary.  If the path is omitted, the daemon searches the host's `$PATH` for the binary and uses the first result. 
    // String initBinary (default value: null)
    test('to test the property `initBinary`', () async {
      // TODO
    });

    // Commit containerdCommit (default value: null)
    test('to test the property `containerdCommit`', () async {
      // TODO
    });

    // Commit runcCommit (default value: null)
    test('to test the property `runcCommit`', () async {
      // TODO
    });

    // Commit initCommit (default value: null)
    test('to test the property `initCommit`', () async {
      // TODO
    });

    // List of security features that are enabled on the daemon, such as apparmor, seccomp, SELinux, user-namespaces (userns), and rootless.  Additional configuration options for each security feature may be present, and are included as a comma-separated list of key/value pairs. 
    // List<String> securityOptions (default value: [])
    test('to test the property `securityOptions`', () async {
      // TODO
    });

    // Reports a summary of the product license on the daemon.  If a commercial license has been applied to the daemon, information such as number of nodes, and expiration are included. 
    // String productLicense (default value: null)
    test('to test the property `productLicense`', () async {
      // TODO
    });

    // List of warnings / informational messages about missing features, or issues related to the daemon configuration.  These messages can be printed by the client as information to the user. 
    // List<String> warnings (default value: [])
    test('to test the property `warnings`', () async {
      // TODO
    });


  });

}
