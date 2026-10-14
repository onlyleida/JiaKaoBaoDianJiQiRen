package cn.mucang.android.jiakaoyi.teachingk2.r0.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.ServerTeachRouteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.r0.c.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/api/TeachRouteApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getRouteList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachRouteApi extends BaseDeviceManagerApi {
    public final List<ServerTeachRouteModel> m() throws ApiException, InternalException, HttpException {
        return httpGet(r.m("/api/open/exam-site-route/get-routes.htm?examSiteId=", Long.valueOf(ExamSiteUtil.e(0L)))).getDataArray("data.examSiteRouteInfos", ServerTeachRouteModel.class);
    }
}
