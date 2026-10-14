package cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.analysis.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;", "type", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AnalysisApi extends BaseDeviceManagerApi {
    public final List<AnalysisModel> m(int i) throws ApiException, InternalException, HttpException {
        List<AnalysisModel> dataArray = httpGet(r.m("/api/open/error-analysis/list.htm?type=", Integer.valueOf(i))).getDataArray(AnalysisModel.class);
        r.d(dataArray, "httpGet(\"/api/open/error…nalysisModel::class.java)");
        return dataArray;
    }
}
