import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for ContainerApi
void main() {
  var instance = ContainerApi();

  group('tests for ContainerApi', () {
    // Get an archive of a filesystem resource in a container
    //
    // Get a tar archive of a resource in the filesystem of container id.
    //
    //Future containerArchive(String id, String path) async 
    test('test containerArchive', () async {
      // TODO
    });

    // Get information about files in a container
    //
    // A response header `X-Docker-Container-Path-Stat` is returned, containing a base64 - encoded JSON object with some filesystem header information about the path. 
    //
    //Future containerArchiveInfo(String id, String path) async 
    test('test containerArchiveInfo', () async {
      // TODO
    });

    // Attach to a container
    //
    // Attach to a container to read its output or send it input. You can attach to the same container multiple times and you can reattach to containers that have been detached.  Either the `stream` or `logs` parameter must be `true` for this endpoint to do anything.  See the [documentation for the `docker attach` command](https://docs.docker.com/engine/reference/commandline/attach/) for more details.  ### Hijacking  This endpoint hijacks the HTTP connection to transport `stdin`, `stdout`, and `stderr` on the same socket.  This is the response from the daemon for an attach request:  ``` HTTP/1.1 200 OK Content-Type: application/vnd.docker.raw-stream  [STREAM] ```  After the headers and two new lines, the TCP connection can now be used for raw, bidirectional communication between the client and server.  To hint potential proxies about connection hijacking, the Docker client can also optionally send connection upgrade headers.  For example, the client sends this request to upgrade the connection:  ``` POST /containers/16253994b7c4/attach?stream=1&stdout=1 HTTP/1.1 Upgrade: tcp Connection: Upgrade ```  The Docker daemon will respond with a `101 UPGRADED` response, and will similarly follow with the raw stream:  ``` HTTP/1.1 101 UPGRADED Content-Type: application/vnd.docker.raw-stream Connection: Upgrade Upgrade: tcp  [STREAM] ```  ### Stream format  When the TTY setting is disabled in [`POST /containers/create`](#operation/ContainerCreate), the stream over the hijacked connected is multiplexed to separate out `stdout` and `stderr`. The stream consists of a series of frames, each containing a header and a payload.  The header contains the information which the stream writes (`stdout` or `stderr`). It also contains the size of the associated frame encoded in the last four bytes (`uint32`).  It is encoded on the first eight bytes like this:  ```go header := [8]byte{STREAM_TYPE, 0, 0, 0, SIZE1, SIZE2, SIZE3, SIZE4} ```  `STREAM_TYPE` can be:  - 0: `stdin` (is written on `stdout`) - 1: `stdout` - 2: `stderr`  `SIZE1, SIZE2, SIZE3, SIZE4` are the four bytes of the `uint32` size encoded as big endian.  Following the header is the payload, which is the specified number of bytes of `STREAM_TYPE`.  The simplest way to implement this protocol is the following:  1. Read 8 bytes. 2. Choose `stdout` or `stderr` depending on the first byte. 3. Extract the frame size from the last four bytes. 4. Read the extracted size and output it on the correct output. 5. Goto 1.  ### Stream format when using a TTY  When the TTY setting is enabled in [`POST /containers/create`](#operation/ContainerCreate), the stream is not multiplexed. The data exchanged over the hijacked connection is simply the raw data from the process PTY and client's `stdin`. 
    //
    //Future containerAttach(String id, { String detachKeys, bool logs, bool stream, bool stdin, bool stdout, bool stderr }) async 
    test('test containerAttach', () async {
      // TODO
    });

    // Attach to a container via a websocket
    //
    //Future containerAttachWebsocket(String id, { String detachKeys, bool logs, bool stream, bool stdin, bool stdout, bool stderr }) async 
    test('test containerAttachWebsocket', () async {
      // TODO
    });

    // Get changes on a container’s filesystem
    //
    // Returns which files in a container's filesystem have been added, deleted, or modified. The `Kind` of modification can be one of:  - `0`: Modified - `1`: Added - `2`: Deleted 
    //
    //Future<List<ContainerChangeResponseItem>> containerChanges(String id) async 
    test('test containerChanges', () async {
      // TODO
    });

    // Create a container
    //
    //Future<ContainerCreateResponse> containerCreate(ContainerSpec body, { String name }) async 
    test('test containerCreate', () async {
      // TODO
    });

    // Remove a container
    //
    //Future containerDelete(String id, { bool v, bool force, bool link }) async 
    test('test containerDelete', () async {
      // TODO
    });

    // Export a container
    //
    // Export the contents of a container as a tarball.
    //
    //Future containerExport(String id) async 
    test('test containerExport', () async {
      // TODO
    });

    // Inspect a container
    //
    // Return low-level information about a container.
    //
    //Future<ContainerInspectResponse> containerInspect(String id, { bool size }) async 
    test('test containerInspect', () async {
      // TODO
    });

    // Kill a container
    //
    // Send a POSIX signal to a container, defaulting to killing to the container. 
    //
    //Future containerKill(String id, { String signal }) async 
    test('test containerKill', () async {
      // TODO
    });

    // List containers
    //
    // Returns a list of containers. For details on the format, see the [inspect endpoint](#operation/ContainerInspect).  Note that it uses a different, smaller representation of a container than inspecting a single container. For example, the list of linked containers is not propagated . 
    //
    //Future<List<Object>> containerList({ bool all, int limit, bool size, String filters }) async 
    test('test containerList', () async {
      // TODO
    });

    // Get container logs
    //
    // Get `stdout` and `stderr` logs from a container.  Note: This endpoint works only for containers with the `json-file` or `journald` logging driver. 
    //
    //Future<MultipartFile> containerLogs(String id, { bool follow, bool stdout, bool stderr, int since, int until, bool timestamps, String tail }) async 
    test('test containerLogs', () async {
      // TODO
    });

    // Pause a container
    //
    // Use the freezer cgroup to suspend all processes in a container.  Traditionally, when suspending a process the `SIGSTOP` signal is used, which is observable by the process being suspended. With the freezer cgroup the process is unaware, and unable to capture, that it is being suspended, and subsequently resumed. 
    //
    //Future containerPause(String id) async 
    test('test containerPause', () async {
      // TODO
    });

    // Delete stopped containers
    //
    //Future<ContainerPruneResponse> containerPrune({ String filters }) async 
    test('test containerPrune', () async {
      // TODO
    });

    // Rename a container
    //
    //Future containerRename(String id, String name) async 
    test('test containerRename', () async {
      // TODO
    });

    // Resize a container TTY
    //
    // Resize the TTY for a container.
    //
    //Future containerResize(String id, { int h, int w }) async 
    test('test containerResize', () async {
      // TODO
    });

    // Restart a container
    //
    //Future containerRestart(String id, { int t }) async 
    test('test containerRestart', () async {
      // TODO
    });

    // Start a container
    //
    //Future containerStart(String id, { String detachKeys }) async 
    test('test containerStart', () async {
      // TODO
    });

    // Get container stats based on resource usage
    //
    // This endpoint returns a live stream of a container’s resource usage statistics.  The `precpu_stats` is the CPU statistic of the *previous* read, and is used to calculate the CPU usage percentage. It is not an exact copy of the `cpu_stats` field.  If either `precpu_stats.online_cpus` or `cpu_stats.online_cpus` is nil then for compatibility with older daemons the length of the corresponding `cpu_usage.percpu_usage` array should be used.  To calculate the values shown by the `stats` command of the docker cli tool the following formulas can be used: * used_memory = `memory_stats.usage - memory_stats.stats.cache` * available_memory = `memory_stats.limit` * Memory usage % = `(used_memory / available_memory) * 100.0` * cpu_delta = `cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage` * system_cpu_delta = `cpu_stats.system_cpu_usage - precpu_stats.system_cpu_usage` * number_cpus = `lenght(cpu_stats.cpu_usage.percpu_usage)` or `cpu_stats.online_cpus` * CPU usage % = `(cpu_delta / system_cpu_delta) * number_cpus * 100.0` 
    //
    //Future<Object> containerStats(String id, { bool stream }) async 
    test('test containerStats', () async {
      // TODO
    });

    // Stop a container
    //
    //Future containerStop(String id, { int t }) async 
    test('test containerStop', () async {
      // TODO
    });

    // List processes running inside a container
    //
    // On Unix systems, this is done by running the `ps` command. This endpoint is not supported on Windows. 
    //
    //Future<ContainerTopResponse> containerTop(String id, { String psArgs }) async 
    test('test containerTop', () async {
      // TODO
    });

    // Unpause a container
    //
    // Resume a container which has been paused.
    //
    //Future containerUnpause(String id) async 
    test('test containerUnpause', () async {
      // TODO
    });

    // Update a container
    //
    // Change various configuration options of a container without having to recreate it. 
    //
    //Future<ContainerUpdateResponse> containerUpdate(String id, Object update) async 
    test('test containerUpdate', () async {
      // TODO
    });

    // Wait for a container
    //
    // Block until a container stops, then returns the exit code.
    //
    //Future<ContainerWaitResponse> containerWait(String id, { String condition }) async 
    test('test containerWait', () async {
      // TODO
    });

    // Extract an archive of files or folders to a directory in a container
    //
    // Upload a tar archive to be extracted to a path in the filesystem of container id.
    //
    //Future putContainerArchive(String id, String path, MultipartFile inputStream, { String noOverwriteDirNonDir, String copyUIDGID }) async 
    test('test putContainerArchive', () async {
      // TODO
    });

  });
}
