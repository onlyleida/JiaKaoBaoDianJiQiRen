package cn.mucang.android.core.task;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: renamed from: cn.mucang.android.core.task.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b0\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002B\u0017\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0002\u0010\u0006R\u0016\u0010\u0005\u001a\u00028\u0000X\u0084\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\u0082\u0001\u0001\f¨\u0006\r"}, d2 = {"Lcn/mucang/android/core/task/TaskAction;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/Runnable;", "taskId", "", "subTask", "(JLjava/lang/Object;)V", "getSubTask", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getTaskId", "()J", "Lcn/mucang/android/core/task/DownloadAction;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class TaskAction<T> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f2620a;
    private final T b;

    private TaskAction(long j, T t) {
        this.f2620a = j;
        this.b = t;
    }

    public /* synthetic */ TaskAction(long j, Object obj, o oVar) {
        this(j, obj);
    }

    protected final T a() {
        return this.b;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    protected final long getF2620a() {
        return this.f2620a;
    }
}
