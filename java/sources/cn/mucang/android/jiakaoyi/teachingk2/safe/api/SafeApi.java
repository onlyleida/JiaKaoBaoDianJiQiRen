package cn.mucang.android.jiakaoyi.teachingk2.safe.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.api.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getSafeConfig", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeApi extends n {
    public final List<SafeServerModel> m() throws ApiException, InternalException, HttpException {
        List<SafeServerModel> list = httpGet(r.m("/api/open/safe-config/get-safe-config.htm?examSiteId=", Long.valueOf(ExamSiteUtil.e(0L)))).getList(SafeServerModel.class);
        r.d(list, "httpGet(\"/api/open/safe-…del::class.java\n        )");
        return list;
    }
}
