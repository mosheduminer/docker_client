import 'package:docker_client/api.dart';
import 'package:test/test.dart';

// tests for HostConfigAllOf
void main() {
    var instance = new HostConfigAllOf();

  group('test HostConfigAllOf', () {
    // A list of volume bindings for this container. Each volume binding is a string in one of these forms:  - `host-src:container-dest[:options]` to bind-mount a host path   into the container. Both `host-src`, and `container-dest` must   be an _absolute_ path. - `volume-name:container-dest[:options]` to bind-mount a volume   managed by a volume driver into the container. `container-dest`   must be an _absolute_ path.  `options` is an optional, comma-delimited list of:  - `nocopy` disables automatic copying of data from the container   path to the volume. The `nocopy` flag only applies to named volumes. - `[ro|rw]` mounts a volume read-only or read-write, respectively.   If omitted or set to `rw`, volumes are mounted read-write. - `[z|Z]` applies SELinux labels to allow or deny multiple containers   to read and write to the same volume.     - `z`: a _shared_ content label is applied to the content. This       label indicates that multiple containers can share the volume       content, for both reading and writing.     - `Z`: a _private unshared_ label is applied to the content.       This label indicates that only the current container can use       a private volume. Labeling systems such as SELinux require       proper labels to be placed on volume content that is mounted       into a container. Without a label, the security system can       prevent a container's processes from using the content. By       default, the labels set by the host operating system are not       modified. - `[[r]shared|[r]slave|[r]private]` specifies mount   [propagation behavior](https://www.kernel.org/doc/Documentation/filesystems/sharedsubtree.txt).   This only applies to bind-mounted volumes, not internal volumes   or named volumes. Mount propagation requires the source mount   point (the location where the source directory is mounted in the   host operating system) to have the correct propagation properties.   For shared volumes, the source mount point must be set to `shared`.   For slave volumes, the mount must be set to either `shared` or   `slave`. 
    // List<String> binds (default value: [])
    test('to test the property `binds`', () async {
      // TODO
    });

    // Path to a file where the container ID is written
    // String containerIDFile (default value: null)
    test('to test the property `containerIDFile`', () async {
      // TODO
    });

    // HostConfigAllOfLogConfig logConfig (default value: null)
    test('to test the property `logConfig`', () async {
      // TODO
    });

    // Network mode to use for this container. Supported standard values are: `bridge`, `host`, `none`, and `container:<name|id>`. Any other value is taken as a custom network's name to which this container should connect to. 
    // String networkMode (default value: null)
    test('to test the property `networkMode`', () async {
      // TODO
    });

    // PortMap describes the mapping of container ports to host ports, using the container's port-number and protocol as key in the format `<port>/<protocol>`, for example, `80/udp`.  If a container's port is mapped for multiple protocols, separate entries are added to the mapping table. 
    // Map<String, List<PortBinding>> portBindings (default value: {})
    test('to test the property `portBindings`', () async {
      // TODO
    });

    // RestartPolicy restartPolicy (default value: null)
    test('to test the property `restartPolicy`', () async {
      // TODO
    });

    // Automatically remove the container when the container's process exits. This has no effect if `RestartPolicy` is set. 
    // bool autoRemove (default value: null)
    test('to test the property `autoRemove`', () async {
      // TODO
    });

    // Driver that this container uses to mount volumes.
    // String volumeDriver (default value: null)
    test('to test the property `volumeDriver`', () async {
      // TODO
    });

    // A list of volumes to inherit from another container, specified in the form `<container name>[:<ro|rw>]`. 
    // List<String> volumesFrom (default value: [])
    test('to test the property `volumesFrom`', () async {
      // TODO
    });

    // Specification for mounts to be added to the container. 
    // List<Mount> mounts (default value: [])
    test('to test the property `mounts`', () async {
      // TODO
    });

    // A list of kernel capabilities to be available for container (this overrides the default set).  Conflicts with options 'CapAdd' and 'CapDrop'\" 
    // List<String> capabilities (default value: [])
    test('to test the property `capabilities`', () async {
      // TODO
    });

    // A list of kernel capabilities to add to the container. Conflicts with option 'Capabilities'. 
    // List<String> capAdd (default value: [])
    test('to test the property `capAdd`', () async {
      // TODO
    });

    // A list of kernel capabilities to drop from the container. Conflicts with option 'Capabilities'. 
    // List<String> capDrop (default value: [])
    test('to test the property `capDrop`', () async {
      // TODO
    });

    // A list of DNS servers for the container to use.
    // List<String> dns (default value: [])
    test('to test the property `dns`', () async {
      // TODO
    });

    // A list of DNS options.
    // List<String> dnsOptions (default value: [])
    test('to test the property `dnsOptions`', () async {
      // TODO
    });

    // A list of DNS search domains.
    // List<String> dnsSearch (default value: [])
    test('to test the property `dnsSearch`', () async {
      // TODO
    });

    // A list of hostnames/IP mappings to add to the container's `/etc/hosts` file. Specified in the form `[\"hostname:IP\"]`. 
    // List<String> extraHosts (default value: [])
    test('to test the property `extraHosts`', () async {
      // TODO
    });

    // A list of additional groups that the container process will run as. 
    // List<String> groupAdd (default value: [])
    test('to test the property `groupAdd`', () async {
      // TODO
    });

    // IPC sharing mode for the container. Possible values are:  - `\"none\"`: own private IPC namespace, with /dev/shm not mounted - `\"private\"`: own private IPC namespace - `\"shareable\"`: own private IPC namespace, with a possibility to share it with other containers - `\"container:<name|id>\"`: join another (shareable) container's IPC namespace - `\"host\"`: use the host system's IPC namespace  If not specified, daemon default is used, which can either be `\"private\"` or `\"shareable\"`, depending on daemon version and configuration. 
    // String ipcMode (default value: null)
    test('to test the property `ipcMode`', () async {
      // TODO
    });

    // Cgroup to use for the container.
    // String cgroup (default value: null)
    test('to test the property `cgroup`', () async {
      // TODO
    });

    // A list of links for the container in the form `container_name:alias`. 
    // List<String> links (default value: [])
    test('to test the property `links`', () async {
      // TODO
    });

    // An integer value containing the score given to the container in order to tune OOM killer preferences. 
    // int oomScoreAdj (default value: null)
    test('to test the property `oomScoreAdj`', () async {
      // TODO
    });

    // Set the PID (Process) Namespace mode for the container. It can be either:  - `\"container:<name|id>\"`: joins another container's PID namespace - `\"host\"`: use the host's PID namespace inside the container 
    // String pidMode (default value: null)
    test('to test the property `pidMode`', () async {
      // TODO
    });

    // Gives the container full access to the host.
    // bool privileged (default value: null)
    test('to test the property `privileged`', () async {
      // TODO
    });

    // Allocates an ephemeral host port for all of a container's exposed ports.  Ports are de-allocated when the container stops and allocated when the container starts. The allocated port might be changed when restarting the container.  The port is selected from the ephemeral port range that depends on the kernel. For example, on Linux the range is defined by `/proc/sys/net/ipv4/ip_local_port_range`. 
    // bool publishAllPorts (default value: null)
    test('to test the property `publishAllPorts`', () async {
      // TODO
    });

    // Mount the container's root filesystem as read only.
    // bool readonlyRootfs (default value: null)
    test('to test the property `readonlyRootfs`', () async {
      // TODO
    });

    // A list of string values to customize labels for MLS systems, such as SELinux.
    // List<String> securityOpt (default value: [])
    test('to test the property `securityOpt`', () async {
      // TODO
    });

    // Storage driver options for this container, in the form `{\"size\": \"120G\"}`. 
    // Map<String, String> storageOpt (default value: {})
    test('to test the property `storageOpt`', () async {
      // TODO
    });

    // A map of container directories which should be replaced by tmpfs mounts, and their corresponding mount options. For example:  ``` { \"/run\": \"rw,noexec,nosuid,size=65536k\" } ``` 
    // Map<String, String> tmpfs (default value: {})
    test('to test the property `tmpfs`', () async {
      // TODO
    });

    // UTS namespace to use for the container.
    // String uTSMode (default value: null)
    test('to test the property `uTSMode`', () async {
      // TODO
    });

    // Sets the usernamespace mode for the container when usernamespace remapping option is enabled. 
    // String usernsMode (default value: null)
    test('to test the property `usernsMode`', () async {
      // TODO
    });

    // Size of `/dev/shm` in bytes. If omitted, the system uses 64MB. 
    // int shmSize (default value: null)
    test('to test the property `shmSize`', () async {
      // TODO
    });

    // A list of kernel parameters (sysctls) to set in the container. For example:  ``` {\"net.ipv4.ip_forward\": \"1\"} ``` 
    // Map<String, String> sysctls (default value: {})
    test('to test the property `sysctls`', () async {
      // TODO
    });

    // Runtime to use with this container.
    // String runtime (default value: null)
    test('to test the property `runtime`', () async {
      // TODO
    });

    // Initial console size, as an `[height, width]` array. (Windows only) 
    // List<int> consoleSize (default value: [])
    test('to test the property `consoleSize`', () async {
      // TODO
    });

    // Isolation technology of the container. (Windows only) 
    // String isolation (default value: null)
    test('to test the property `isolation`', () async {
      // TODO
    });

    // The list of paths to be masked inside the container (this overrides the default set of paths). 
    // List<String> maskedPaths (default value: [])
    test('to test the property `maskedPaths`', () async {
      // TODO
    });

    // The list of paths to be set as read-only inside the container (this overrides the default set of paths). 
    // List<String> readonlyPaths (default value: [])
    test('to test the property `readonlyPaths`', () async {
      // TODO
    });


  });

}
