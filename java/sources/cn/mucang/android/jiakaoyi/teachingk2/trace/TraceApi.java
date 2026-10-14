package cn.mucang.android.jiakaoyi.teachingk2.trace;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseUserCollectionApi;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.trace.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\f\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseUserCollectionApi;", "()V", "getExamDetail", "Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceMenuModel;", "trackId", "", "getExamList", "", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getMenuList", "getStepDetail", TtmlNode.ATTR_ID, "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TraceApi extends BaseUserCollectionApi {
    public final TraceMenuModel m(String str) throws InternalException {
        Object data = httpGet(r.m("/api/open/track/seek?trackId=", str)).getData((Class<Object>) TraceMenuModel.class);
        r.d(data, "httpGet(\"/api/open/track…aceMenuModel::class.java)");
        return (TraceMenuModel) data;
    }

    public final List<TraceMenuModel> n(KeMu keMu) throws Exception {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        List<TraceMenuModel> listHttpGetDataList = httpGetDataList(r.m("/api/open/train/list-summary.htm?type=12&examSiteId=", Long.valueOf(ExamSiteUtil.e(0L))), TraceMenuModel.class);
        r.d(listHttpGetDataList, "httpGetDataList(\"/api/op…aceMenuModel::class.java)");
        return listHttpGetDataList;
    }

    public final List<TraceMenuModel> o(KeMu keMu) throws Exception {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        List<TraceMenuModel> list = httpGetDataList("/api/open/train/list?type=0&examSiteId=" + ExamSiteUtil.e(0L) + "&lastDay=1", TraceMenuModel.class);
        if (keMu != KeMu.K3) {
            r.d(list, "list");
            return list;
        }
        r.d(list, "list");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            TraceMenuModel traceMenuModel = (TraceMenuModel) obj;
            if ((traceMenuModel.getType() == Step.K3_LightSimulate.type || traceMenuModel.getType() == Step.K3_ShangChe.type) ? false : true) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final TraceMenuModel p(String str, String str2) throws ApiException, InternalException, HttpException {
        Object data = httpGet("/api/open/track/seek?id=" + ((Object) str) + "&trackId=" + ((Object) str2)).getData((Class<Object>) TraceMenuModel.class);
        r.d(data, "httpGet(\"/api/open/track…aceMenuModel::class.java)");
        return (TraceMenuModel) data;
    }
}
