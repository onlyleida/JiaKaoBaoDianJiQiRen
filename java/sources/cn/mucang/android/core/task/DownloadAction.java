package cn.mucang.android.core.task;

import cn.mucang.android.core.encode.Digests;
import cn.mucang.android.core.utils.j;
import com.alibaba.fastjson.JSONObject;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.core.task.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/core/task/DownloadAction;", "Lcn/mucang/android/core/task/TaskAction;", "Lcn/mucang/android/core/task/SubTask$DownloadSubTask;", "taskId", "", "subTask", "(JLcn/mucang/android/core/task/SubTask$DownloadSubTask;)V", "run", "", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DownloadAction extends TaskAction<SubTask.DownloadSubTask> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadAction(long j, SubTask.DownloadSubTask subTask) {
        super(j, subTask, null);
        r.e(subTask, "subTask");
    }

    @Override // java.lang.Runnable
    public void run() throws IOException {
        Object objM139constructorimpl;
        Object objM139constructorimpl2;
        String md5 = a().getMd5();
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(cn.mucang.android.core.http.a.q().v(a().getUrl()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        v vVar = null;
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        InputStream inputStream = (InputStream) objM139constructorimpl;
        int i = 1;
        if (inputStream != null) {
            try {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM139constructorimpl2 = Result.m139constructorimpl(Boolean.valueOf(t.p(md5, j.a(Digests.md5(inputStream)), true)));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM139constructorimpl2 = Result.m139constructorimpl(k.a(th2));
                }
                Boolean bool = Boolean.FALSE;
                if (Result.m145isFailureimpl(objM139constructorimpl2)) {
                    objM139constructorimpl2 = bool;
                }
                i = ((Boolean) objM139constructorimpl2).booleanValue() ? 0 : 1;
                v vVar2 = v.f15822a;
                kotlin.io.b.a(inputStream, null);
                vVar = vVar2;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    kotlin.io.b.a(inputStream, th3);
                    throw th4;
                }
            }
        }
        if (vVar == null) {
            i = 2;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("time", (Object) String.valueOf(jCurrentTimeMillis2));
        jSONObject.put("status", (Object) String.valueOf(i));
        TaskApi taskApi = new TaskApi();
        long f2620a = getF2620a();
        long subTaskId = a().getSubTaskId();
        String string = jSONObject.toString();
        r.d(string, "content.toString()");
        taskApi.c(f2620a, subTaskId, string);
    }
}
