package cn.mucang.android.core.task;

import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.k;

/* JADX INFO: renamed from: cn.mucang.android.core.task.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0018\u00010\u0006H\u0016¨\u0006\t"}, d2 = {"Lcn/mucang/android/core/task/DownloadExtractor;", "Lcn/mucang/android/core/task/TaskActionExtractor;", "task", "Lcn/mucang/android/core/task/Task;", "(Lcn/mucang/android/core/task/Task;)V", "extractTaskAction", "", "Lcn/mucang/android/core/task/TaskAction;", "Lcn/mucang/android/core/task/SubTask$DownloadSubTask;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DownloadExtractor extends TaskActionExtractor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadExtractor(Task task) {
        super(task, null);
        r.e(task, "task");
    }

    @Override // cn.mucang.android.core.task.TaskActionExtractor
    public List<TaskAction<SubTask.DownloadSubTask>> a() {
        Object objM139constructorimpl;
        List<String> subTaskList = getF2621a().getSubTaskList();
        if (subTaskList == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(v.u(subTaskList, 10));
        for (String str : subTaskList) {
            try {
                Result.Companion companion = Result.INSTANCE;
                SubTask.DownloadSubTask downloadSubTask = (SubTask.DownloadSubTask) JSON.parseObject(str, SubTask.DownloadSubTask.class);
                objM139constructorimpl = Result.m139constructorimpl(downloadSubTask != null ? new DownloadAction(getF2621a().getTaskId(), downloadSubTask) : null);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            arrayList.add((DownloadAction) objM139constructorimpl);
        }
        return CollectionsKt___CollectionsKt.Z(arrayList);
    }
}
