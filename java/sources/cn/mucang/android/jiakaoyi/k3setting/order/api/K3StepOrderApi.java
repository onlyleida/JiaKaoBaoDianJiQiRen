package cn.mucang.android.jiakaoyi.k3setting.order.api;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.a2.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004J\u0016\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tJ$\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000f2\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004J\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\u0013\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/api/K3StepOrderApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "k3StepIds", "", "", "batchSave", "", "examSiteId", "", "items", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", InputIdCardActivity.DELETE, TtmlNode.ATTR_ID, "initOrders", "", "queryOrders", "displayStatus", "reset", "save", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3StepOrderApi extends BaseDeviceManagerApi {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Integer> f4392e;

    public K3StepOrderApi() {
        List<Step> listK3Steps = Step.k3Steps();
        r.d(listK3Steps, "k3Steps()");
        ArrayList arrayList = new ArrayList();
        for (Object obj : listK3Steps) {
            Step step = (Step) obj;
            if ((step == Step.K3_Global && step == Step.K3_QiBu && step == Step.K3_LightSimulate && step == Step.K3_ShangChe) ? false : true) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(v.u(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(((Step) it.next()).type));
        }
        this.f4392e = arrayList2;
    }

    public final boolean m(long j, List<? extends StepOrderItem> items) throws ApiException, InternalException, HttpException {
        r.e(items, "items");
        List<MucangNameValuePair> listM = u.m(new MucangNameValuePair("batchSaveData", JSON.toJSONString(items)), new MucangNameValuePair("examSiteId", String.valueOf(j)));
        return AppUtils.k() ? httpPost("/api/open/owner/kemu-instruction-config/batch-save-exam-site-config.htm", listM).isSuccess() : httpPost("/api/open/owner/kemu-instruction-config/batch-save.htm", listM).isSuccess();
    }

    public final boolean n(long j, long j2) throws ApiException, InternalException, HttpException {
        List<MucangNameValuePair> listM = u.m(new MucangNameValuePair(TtmlNode.ATTR_ID, String.valueOf(j2)), new MucangNameValuePair("examSiteId", String.valueOf(j)));
        return AppUtils.k() ? httpPost("/api/open/owner/kemu-instruction-config/delete-exam-site-config.htm", listM).isSuccess() : httpPost("/api/open/owner/kemu-instruction-config/delete.htm", listM).isSuccess();
    }

    public final List<StepOrderItem> o(long j, List<? extends StepOrderItem> items) throws ApiException, InternalException, HttpException {
        r.e(items, "items");
        ApiResponse apiResponseHttpPost = httpPost("/api/open/owner/kemu-instruction-config/init.htm", u.m(new MucangNameValuePair("data", JSON.toJSONString(items)), new MucangNameValuePair("examSiteId", String.valueOf(j))));
        if (apiResponseHttpPost.isSuccess()) {
            return apiResponseHttpPost.getDataArray(StepOrderItem.class);
        }
        return null;
    }

    public final List<StepOrderItem> p(long j, int i) throws ApiException, InternalException, HttpException {
        if (AppUtils.k()) {
            List<StepOrderItem> listHttpGetDataList = httpGetDataList("/api/open/owner/kemu-instruction-config/get-config-list.htm?examSiteId=" + j + "&displayStatus=" + i, StepOrderItem.class);
            r.d(listHttpGetDataList, "{\n            httpGetDat…a\n            )\n        }");
            return listHttpGetDataList;
        }
        List<StepOrderItem> listHttpGetDataList2 = httpGetDataList("/api/open/owner/kemu-instruction-config/get.htm?examSiteId=" + j + "&stepIds=" + ((Object) JSON.toJSONString(this.f4392e)) + "&displayStatus=" + i, StepOrderItem.class);
        r.d(listHttpGetDataList2, "{\n            httpGetDat…a\n            )\n        }");
        return listHttpGetDataList2;
    }

    public final boolean q(long j) throws ApiException, InternalException, HttpException {
        k(KeMu.K3.serverKeMu);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("types", String.valueOf(DataType.ROUTE.getType())));
        return httpPost("/api/open/owner/exam-site/reset.htm", arrayList).isSuccess();
    }

    public final boolean r(long j, StepOrderItem item) throws ApiException, InternalException, HttpException {
        r.e(item, "item");
        List<MucangNameValuePair> listM = u.m(new MucangNameValuePair(TtmlNode.ATTR_ID, String.valueOf(item.id)), new MucangNameValuePair("stepId", String.valueOf(item.stepId)), new MucangNameValuePair("examSiteId", String.valueOf(j)), new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, item.name), new MucangNameValuePair("stepAliasName", item.stepAliasName), new MucangNameValuePair(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, item.content));
        return AppUtils.k() ? httpPost("/api/open/owner/kemu-instruction-config/save-exam-site-config.htm", listM).isSuccess() : httpPost("/api/open/owner/kemu-instruction-config/save.htm", listM).isSuccess();
    }
}
