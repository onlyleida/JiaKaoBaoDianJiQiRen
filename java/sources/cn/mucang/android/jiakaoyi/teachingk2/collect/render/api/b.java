package cn.mucang.android.jiakaoyi.teachingk2.collect.render.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.OrderModel;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.StepGroupModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.c;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b extends BaseDeviceManagerApi {
    public b() {
        b();
    }

    private List<TeachModel> s(String str) throws ApiException, InternalException, HttpException {
        return c.b(httpGet(str).getJsonObject().getJSONObject("data").getJSONArray("itemList"));
    }

    @Override // cn.mucang.android.core.api.a
    protected cn.mucang.android.core.api.request.e.c getRequestConfig() {
        return new cn.mucang.android.core.api.request.e.c(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
    }

    public void m(String str, String str2, int i, int i2, String str3) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("programmeId", str2));
        arrayList.add(new MucangNameValuePair("teachModelIds", str));
        arrayList.add(new MucangNameValuePair("step", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("stepDirection", String.valueOf(i2)));
        arrayList.add(new MucangNameValuePair("parkingSpaceGroup", str3));
        httpPost("/api/admin/teach-model/add-new-step.htm", arrayList);
    }

    public boolean n(TeachModel teachModel) throws ApiException, InternalException, HttpException {
        TeachModel teachModelA = c.a(httpPost("/api/open/owner/teach-model/create-new.htm", JSON.toJSONString(teachModel, SerializerFeature.DisableCircularReferenceDetect).getBytes()).getData());
        if (teachModelA == null) {
            return false;
        }
        teachModel.teachModelId = teachModelA.teachModelId;
        return true;
    }

    public boolean o(TeachModel teachModel) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("teachModelId", teachModel.teachModelId));
        return httpPost("/api/open/owner/teach-model/delete-new.htm", arrayList).isSuccess();
    }

    public void p(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("programmeId", str2));
        arrayList.add(new MucangNameValuePair("teachModelIds", str));
        httpPost("/api/admin/teach-model/batch-delete.htm", arrayList);
    }

    public List<TeachModel> q(String str, int i) throws ApiException, InternalException, HttpException {
        StringBuilder sb = new StringBuilder("/api/open/owner/teach-model/list-new.htm?programmeId=" + str);
        if (i > 0) {
            sb.append("&stepId=");
            sb.append(i);
        }
        return s(sb.toString());
    }

    public List<StepGroupModel> r(String str) throws ApiException, InternalException, HttpException {
        return httpGetDataList("/api/admin/teach-model/get-all-group.htm?programmeId=" + str, StepGroupModel.class);
    }

    public void t(String str, String str2, List<TeachModel> list) throws ApiException, InternalException, HttpException {
        httpPost("/api/open/owner/teach-model/copy.htm?programmeId=" + str2 + "&teachModelIds=" + str, JSON.toJSONString(list, SerializerFeature.DisableCircularReferenceDetect).getBytes());
    }

    public boolean u(String str, int i, int i2, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("programmeId", str));
        arrayList.add(new MucangNameValuePair("step", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("stepDirection", String.valueOf(i2)));
        arrayList.add(new MucangNameValuePair("groupData", str2));
        return httpPost("/api/admin/teach-model/bind-park-space.htm", arrayList).isSuccess();
    }

    public boolean v(TeachModel teachModel) throws ApiException, InternalException, HttpException {
        return httpPost("/api/open/owner/teach-model/update-new.htm", JSON.toJSONString(teachModel, SerializerFeature.DisableCircularReferenceDetect).getBytes()).isSuccess();
    }

    public void w(List<OrderModel> list) throws ApiException, InternalException, HttpException {
        httpPost("/api/open/owner/teach-model/update-position.htm", JSON.toJSONString(list, SerializerFeature.DisableCircularReferenceDetect).getBytes());
    }
}
