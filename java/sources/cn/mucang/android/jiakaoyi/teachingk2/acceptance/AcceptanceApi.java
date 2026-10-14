package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseWorkOrderApi;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.v, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007J\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0004J@\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseWorkOrderApi;", "()V", "getAcceptanceList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;", "workOrderId", "", "getChildList", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "module", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "getWorkOrderList", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;", "submitAcceptance", "", "subType", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, Constant.START_TIME, "endTime", "trackId", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AcceptanceApi extends BaseWorkOrderApi {
    public AcceptanceApi() {
        b();
        Map<String, String> extraParams = getExtraParams();
        kotlin.jvm.internal.r.d(extraParams, "extraParams");
        extraParams.put("examSiteId", String.valueOf(ExamSiteUtil.e(0L)));
        Map<String, String> extraParams2 = getExtraParams();
        kotlin.jvm.internal.r.d(extraParams2, "extraParams");
        extraParams2.put("gearType", String.valueOf(cn.mucang.android.jiakaoyi.signal.utils.f.a()));
        Map<String, String> extraParams3 = getExtraParams();
        kotlin.jvm.internal.r.d(extraParams3, "extraParams");
        extraParams3.put("carCode", SelectCarManager.g());
    }

    public final List<AcceptanceModel> m(long j) throws InternalException {
        Map<String, String> extraParams = getExtraParams();
        kotlin.jvm.internal.r.d(extraParams, "extraParams");
        extraParams.put("workOrderId", String.valueOf(j));
        List<AcceptanceModel> dataArray = httpGet("/api/admin/acceptance-result/get-project-list.htm").getDataArray(AcceptanceModel.class);
        kotlin.jvm.internal.r.d(dataArray, "httpGet(\"/api/admin/acce…del::class.java\n        )");
        return dataArray;
    }

    public final List<AcceptanceChildModel> n(AcceptanceModule module, long j) throws InternalException {
        kotlin.jvm.internal.r.e(module, "module");
        Map<String, String> extraParams = getExtraParams();
        kotlin.jvm.internal.r.d(extraParams, "extraParams");
        extraParams.put("workOrderId", String.valueOf(j));
        List<AcceptanceChildModel> dataArray = httpGet(kotlin.jvm.internal.r.m("/api/admin/acceptance-result/find-by-type.htm?type=", Integer.valueOf(module.getType()))).getDataArray(AcceptanceChildModel.class);
        kotlin.jvm.internal.r.d(dataArray, "httpGet(\"/api/admin/acce…del::class.java\n        )");
        return dataArray;
    }

    public final List<WorkOrderModel> o() throws InternalException {
        List<WorkOrderModel> dataArray = httpGet("/api/admin/acceptance-result/get-acceptance-work-order-list.htm").getDataArray(WorkOrderModel.class);
        kotlin.jvm.internal.r.d(dataArray, "httpGet(\"/api/admin/acce…del::class.java\n        )");
        return dataArray;
    }

    public final String p(AcceptanceModule module, String str, String content, long j, long j2, String trackId, long j3) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(content, "content");
        kotlin.jvm.internal.r.e(trackId, "trackId");
        Map<String, String> extraParams = getExtraParams();
        kotlin.jvm.internal.r.d(extraParams, "extraParams");
        extraParams.put("workOrderId", String.valueOf(j3));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, content));
        arrayList.add(new MucangNameValuePair("trackId", trackId));
        arrayList.add(new MucangNameValuePair(Constant.START_TIME, String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("endTime", String.valueOf(j2)));
        arrayList.add(new MucangNameValuePair("ruleId", String.valueOf(ExamSiteUtil.o(KeMu.K2, 0L, 2, null))));
        ApiResponse apiResponseHttpPost = httpPost("/api/admin/acceptance-result/submit.htm?type=" + module.getType() + "&subType=" + ((Object) str), arrayList);
        if (!apiResponseHttpPost.isSuccess()) {
            return "";
        }
        String string = apiResponseHttpPost.getData().getString("reportUrl");
        kotlin.jvm.internal.r.d(string, "response.data.getString(\"reportUrl\")");
        return string;
    }
}
