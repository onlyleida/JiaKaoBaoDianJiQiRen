package cn.mucang.android.core.task;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.http.MucangNameValuePair;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.k;

/* JADX INFO: renamed from: cn.mucang.android.core.task.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J \u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/core/task/TaskApi;", "Lcn/mucang/android/core/api/BaseApi;", "()V", "getApiHost", "", "getSignKey", "getTask", "Lcn/mucang/android/core/task/TaskResponse;", "submitResult", "Lcn/mucang/android/core/api/ApiResponse;", "taskId", "", "subTaskId", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TaskApi extends cn.mucang.android.core.api.a {
    public final TaskResponse b() {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl((TaskResponse) httpGetData("/api/open/index/get.htm", TaskResponse.class));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        return (TaskResponse) objM139constructorimpl;
    }

    public final ApiResponse c(long j, long j2, String content) {
        Object objM139constructorimpl;
        r.e(content, "content");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(httpPost("/api/open/index/submit.htm", u.p(new MucangNameValuePair("taskId", String.valueOf(j)), new MucangNameValuePair("subTaskId", String.valueOf(j2)), new MucangNameValuePair(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, content))));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        return (ApiResponse) objM139constructorimpl;
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://november.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#ootIbqKJfG52jW+EQ26FmYtJ";
    }
}
