package cn.mucang.android.jiakaoyi.k3setting.teach;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.v, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ\u001e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0005\u001a\u00020\u0006J\u001c\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0012¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "addTeachStep", "", "examSiteId", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "remark", "deleteTeachData", TtmlNode.ATTR_ID, "", "deleteTeachStep", "stepId", "", "stepNum", "getOnlineTeachData", "", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;", "saveTeachData", "data", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3TeachApi extends BaseDeviceManagerApi {
    public final boolean m(String examSiteId, Step step, String remark) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(examSiteId, "examSiteId");
        kotlin.jvm.internal.r.e(step, "step");
        kotlin.jvm.internal.r.e(remark, "remark");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", examSiteId));
        arrayList.add(new MucangNameValuePair("stepId", String.valueOf(step.type)));
        if (n0.g(remark)) {
            arrayList.add(new MucangNameValuePair("remark", remark));
        }
        return httpPost("/api/open/owner/k3-teach/save-more-step.htm", arrayList).isSuccess();
    }

    public final boolean n(long j) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(TtmlNode.ATTR_ID, String.valueOf(j)));
        return httpPost("/api/open/owner/k3-teach/delete.htm", arrayList).isSuccess();
    }

    public final boolean o(String examSiteId, int i, int i2) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(examSiteId, "examSiteId");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", examSiteId));
        arrayList.add(new MucangNameValuePair("stepId", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("stepNum", String.valueOf(i2)));
        return httpPost("/api/open/owner/k3-teach/delete-more-step.htm", arrayList).isSuccess();
    }

    public final List<K3TeachEntity> p(String examSiteId) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(examSiteId, "examSiteId");
        List<K3TeachEntity> dataArray = httpGet(kotlin.jvm.internal.r.m("/api/open/owner/k3-teach/list.htm?examSiteId=", examSiteId)).getDataArray(K3TeachEntity.class);
        kotlin.jvm.internal.r.d(dataArray, "httpGet(\"/api/open/owner…ity::class.java\n        )");
        return dataArray;
    }

    public final boolean q(long j, List<? extends TeachData> data) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(data, "data");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("data", JSON.toJSONString(data)));
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        return httpPost("/api/open/owner/k3-teach/save.htm", arrayList).isSuccess();
    }
}
