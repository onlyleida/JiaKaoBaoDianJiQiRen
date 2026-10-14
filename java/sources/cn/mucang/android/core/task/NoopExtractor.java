package cn.mucang.android.core.task;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.task.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006H\u0016¨\u0006\t"}, d2 = {"Lcn/mucang/android/core/task/NoopExtractor;", "Lcn/mucang/android/core/task/TaskActionExtractor;", "task", "Lcn/mucang/android/core/task/Task;", "(Lcn/mucang/android/core/task/Task;)V", "extractTaskAction", "", "Lcn/mucang/android/core/task/TaskAction;", "Lcn/mucang/android/core/task/SubTask;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NoopExtractor extends TaskActionExtractor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoopExtractor(Task task) {
        super(task, null);
        r.e(task, "task");
    }

    @Override // cn.mucang.android.core.task.TaskActionExtractor
    public List<TaskAction<SubTask>> a() {
        return u.j();
    }
}
