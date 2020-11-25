import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for ImageApi
void main() {
  var instance = ImageApi();

  group('tests for ImageApi', () {
    // Delete builder cache
    //
    //Future<BuildPruneResponse> buildPrune({ int keepStorage, bool all, String filters }) async 
    test('test buildPrune', () async {
      // TODO
    });

    // Build an image
    //
    // Build an image from a tar archive with a `Dockerfile` in it.  The `Dockerfile` specifies how the image is built from the tar archive. It is typically in the archive's root, but can be at a different path or have a different name by specifying the `dockerfile` parameter. [See the `Dockerfile` reference for more information](https://docs.docker.com/engine/reference/builder/).  The Docker daemon performs a preliminary validation of the `Dockerfile` before starting the build, and returns an error if the syntax is incorrect. After that, each instruction is run one-by-one until the ID of the new image is output.  The build is canceled if the client drops the connection by quitting or being killed. 
    //
    //Future imageBuild({ String dockerfile, String t, String extrahosts, String remote, bool q, bool nocache, String cachefrom, String pull, bool rm, bool forcerm, int memory, int memswap, int cpushares, String cpusetcpus, int cpuperiod, int cpuquota, String buildargs, int shmsize, bool squash, String labels, String networkmode, String contentType, String xRegistryConfig, String platform, String target, String outputs, MultipartFile inputStream }) async 
    test('test imageBuild', () async {
      // TODO
    });

    // Create a new image from a container
    //
    //Future<IdResponse> imageCommit({ String container, String repo, String tag, String comment, String author, bool pause, String changes, ContainerConfig containerConfig }) async 
    test('test imageCommit', () async {
      // TODO
    });

    // Create an image
    //
    // Create an image by either pulling it from a registry or importing it.
    //
    //Future imageCreate({ String fromImage, String fromSrc, String repo, String tag, String message, String xRegistryAuth, String platform, String inputImage }) async 
    test('test imageCreate', () async {
      // TODO
    });

    // Remove an image
    //
    // Remove an image, along with any untagged parent images that were referenced by that image.  Images can't be removed if they have descendant images, are being used by a running container or are being used by a build. 
    //
    //Future<List<ImageDeleteResponseItem>> imageDelete(String name, { bool force, bool noprune }) async 
    test('test imageDelete', () async {
      // TODO
    });

    // Export an image
    //
    // Get a tarball containing all images and metadata for a repository.  If `name` is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned. If `name` is an image ID, similarly only that image (and its parents) are returned, but with the exclusion of the `repositories` file in the tarball, as there were no image names referenced.  ### Image tarball format  An image tarball contains one directory per image layer (named using its long ID), each containing these files:  - `VERSION`: currently `1.0` - the file format version - `json`: detailed layer information, similar to `docker inspect layer_id` - `layer.tar`: A tarfile containing the filesystem changes in this layer  The `layer.tar` file contains `aufs` style `.wh..wh.aufs` files and directories for storing attribute changes and deletions.  If the tarball defines a repository, the tarball should also include a `repositories` file at the root that contains a list of repository and tag names mapped to layer IDs.  ```json {   \"hello-world\": {     \"latest\": \"565a9d68a73f6706862bfe8409a7f659776d4d60a8d096eb4a3cbce6999cc2a1\"   } } ``` 
    //
    //Future<MultipartFile> imageGet(String name) async 
    test('test imageGet', () async {
      // TODO
    });

    // Export several images
    //
    // Get a tarball containing all images and metadata for several image repositories.  For each value of the `names` parameter: if it is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned; if it is an image ID, similarly only that image (and its parents) are returned and there would be no names referenced in the 'repositories' file for this image ID.  For details on the format, see the [export image endpoint](#operation/ImageGet). 
    //
    //Future<MultipartFile> imageGetAll({ List<String> names }) async 
    test('test imageGetAll', () async {
      // TODO
    });

    // Get the history of an image
    //
    // Return parent layers of an image.
    //
    //Future<List<HistoryResponseItem>> imageHistory(String name) async 
    test('test imageHistory', () async {
      // TODO
    });

    // Inspect an image
    //
    // Return low-level information about an image.
    //
    //Future<Image> imageInspect(String name) async 
    test('test imageInspect', () async {
      // TODO
    });

    // List Images
    //
    // Returns a list of images on the server. Note that it uses a different, smaller representation of an image than inspecting a single image.
    //
    //Future<List<ImageSummary>> imageList({ bool all, String filters, bool digests }) async 
    test('test imageList', () async {
      // TODO
    });

    // Import images
    //
    // Load a set of images and tags into a repository.  For details on the format, see the [export image endpoint](#operation/ImageGet). 
    //
    //Future imageLoad({ bool quiet, MultipartFile imagesTarball }) async 
    test('test imageLoad', () async {
      // TODO
    });

    // Delete unused images
    //
    //Future<ImagePruneResponse> imagePrune({ String filters }) async 
    test('test imagePrune', () async {
      // TODO
    });

    // Push an image
    //
    // Push an image to a registry.  If you wish to push an image on to a private registry, that image must already have a tag which references the registry. For example, `registry.example.com/myimage:latest`.  The push is cancelled if the HTTP connection is closed. 
    //
    //Future imagePush(String name, String xRegistryAuth, { String tag }) async 
    test('test imagePush', () async {
      // TODO
    });

    // Search images
    //
    // Search for an image on Docker Hub.
    //
    //Future<List<ImageSearchResponseItem>> imageSearch(String term, { int limit, String filters }) async 
    test('test imageSearch', () async {
      // TODO
    });

    // Tag an image
    //
    // Tag an image so that it becomes part of a repository.
    //
    //Future imageTag(String name, { String repo, String tag }) async 
    test('test imageTag', () async {
      // TODO
    });

  });
}
