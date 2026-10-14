package cn.mucang.android.core.task;

import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.task.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcn/mucang/android/core/task/ServerTask;", "", "()V", "executeIfNeed", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ServerTask {
    public static final void a() {
        a0.a();
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("ServerTask");
            return;
        }
        t.a("core", "ServerTask start execute");
        if (System.currentTimeMillis() < f.a.a.a.d.c()) {
            return;
        }
        final ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadPool.a("serverTask"));
        executorServiceNewSingleThreadExecutor.execute(new Runnable() { // from class: cn.mucang.android.core.task.a
            @Override // java.lang.Runnable
            public final void run() {
                ServerTask.b(executorServiceNewSingleThreadExecutor);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ExecutorService executorService) {
        List<Task> taskList;
        TaskResponse taskResponseB = new TaskApi().b();
        long nextRequestTime = taskResponseB == null ? 0L : taskResponseB.getNextRequestTime();
        if (nextRequestTime > 0) {
            f.a.a.a.d.h(nextRequestTime);
        }
        if (taskResponseB != null && (taskList = taskResponseB.getTaskList()) != null) {
            for (Task task : taskList) {
                TaskActionExtractor.a aVar = TaskActionExtractor.b;
                r.d(task, "task");
                List<TaskAction<SubTask>> listA = aVar.a(task).a();
                if (listA != null) {
                    Iterator<T> it = listA.iterator();
                    while (it.hasNext()) {
                        executorService.execute((TaskAction) it.next());
                    }
                }
            }
        }
        executorService.shutdown();
    }
}
