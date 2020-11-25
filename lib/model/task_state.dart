part of docker_client.api;

class TaskState {
  /// The underlying value of this enum member.
  final String value;

  const TaskState._internal(this.value);

  static const TaskState new_ = const TaskState._internal("new");
  static const TaskState allocated_ = const TaskState._internal("allocated");
  static const TaskState pending_ = const TaskState._internal("pending");
  static const TaskState assigned_ = const TaskState._internal("assigned");
  static const TaskState accepted_ = const TaskState._internal("accepted");
  static const TaskState preparing_ = const TaskState._internal("preparing");
  static const TaskState ready_ = const TaskState._internal("ready");
  static const TaskState starting_ = const TaskState._internal("starting");
  static const TaskState running_ = const TaskState._internal("running");
  static const TaskState complete_ = const TaskState._internal("complete");
  static const TaskState shutdown_ = const TaskState._internal("shutdown");
  static const TaskState failed_ = const TaskState._internal("failed");
  static const TaskState rejected_ = const TaskState._internal("rejected");
  static const TaskState remove_ = const TaskState._internal("remove");
  static const TaskState orphaned_ = const TaskState._internal("orphaned");

  static TaskState fromJson(String value) {
    return new TaskStateTypeTransformer().decode(value);
  }
  
  static List<TaskState> listFromJson(List<dynamic> json) {
    return json == null ? new List<TaskState>() : json.map((value) => TaskState.fromJson(value)).toList();
  }
}

class TaskStateTypeTransformer {

  dynamic encode(TaskState data) {
    return data.value;
  }

  TaskState decode(dynamic data) {
    switch (data) {
      case "new": return TaskState.new_;
      case "allocated": return TaskState.allocated_;
      case "pending": return TaskState.pending_;
      case "assigned": return TaskState.assigned_;
      case "accepted": return TaskState.accepted_;
      case "preparing": return TaskState.preparing_;
      case "ready": return TaskState.ready_;
      case "starting": return TaskState.starting_;
      case "running": return TaskState.running_;
      case "complete": return TaskState.complete_;
      case "shutdown": return TaskState.shutdown_;
      case "failed": return TaskState.failed_;
      case "rejected": return TaskState.rejected_;
      case "remove": return TaskState.remove_;
      case "orphaned": return TaskState.orphaned_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

