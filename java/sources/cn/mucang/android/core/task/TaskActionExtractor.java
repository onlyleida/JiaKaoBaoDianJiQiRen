package cn.mucang.android.core.task;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.task.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0018\u00010\bH&R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\f\r¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/core/task/TaskActionExtractor;", "", "task", "Lcn/mucang/android/core/task/Task;", "(Lcn/mucang/android/core/task/Task;)V", "getTask", "()Lcn/mucang/android/core/task/Task;", "extractTaskAction", "", "Lcn/mucang/android/core/task/TaskAction;", "Lcn/mucang/android/core/task/SubTask;", "Companion", "Lcn/mucang/android/core/task/NoopExtractor;", "Lcn/mucang/android/core/task/DownloadExtractor;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class TaskActionExtractor {
    public static final a b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Task f2621a;

    /* JADX INFO: renamed from: cn.mucang.android.core.task.g$a */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/android/core/task/TaskActionExtractor$Companion;", "", "()V", "get", "Lcn/mucang/android/core/task/TaskActionExtractor;", "task", "Lcn/mucang/android/core/task/Task;", "get$core_lib_release", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final TaskActionExtractor a(Task task) {
            r.e(task, "task");
            return task.getType() == 0 ? new DownloadExtractor(task) : new NoopExtractor(task);
        }
    }

    private TaskActionExtractor(Task task) {
        this.f2621a = task;
    }

    public /* synthetic */ TaskActionExtractor(Task task, o oVar) {
        this(task);
    }

    public abstract List<TaskAction<SubTask>> a();

    /* JADX INFO: renamed from: b, reason: from getter */
    protected final Task getF2621a() {
        return this.f2621a;
    }
}
