package cn.mucang.android.jiakaoyi.teachingk2.login.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSONObject;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.q.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/api/NavigationConfigApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getNavigationConfig", "Lcom/alibaba/fastjson/JSONObject;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NavigationConfigApi extends BaseDeviceManagerApi {
    public final JSONObject m() throws ApiException, InternalException, HttpException {
        JSONObject data = httpGet(r.m("/api/open/exam-site-navigation/view.htm?examSiteId=", Long.valueOf(ExamSiteUtil.e(0L)))).getData();
        r.d(data, "httpGet(\"/api/open/exam-….getExamSiteId(0)}\").data");
        return data;
    }
}
