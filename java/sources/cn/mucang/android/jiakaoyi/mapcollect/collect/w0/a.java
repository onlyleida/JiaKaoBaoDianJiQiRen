package cn.mucang.android.jiakaoyi.mapcollect.collect.w0;

import cn.mucang.android.core.api.d.b;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class a extends BaseDeviceManagerApi {
    public boolean m(int i) throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/car-body/add-to-my-car.htm?id=" + i).isSuccess();
    }

    public boolean n(HpCarMapModel hpCarMapModel) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("bodyData", hpCarMapModel.bodyData));
        arrayList.add(new MucangNameValuePair("modelCode", hpCarMapModel.modelCode));
        arrayList.add(new MucangNameValuePair("isProxy", "true"));
        arrayList.add(new MucangNameValuePair("describe", hpCarMapModel.describe));
        long j = hpCarMapModel.id;
        if (j > 0) {
            arrayList.add(new MucangNameValuePair(TtmlNode.ATTR_ID, String.valueOf(j)));
        }
        return httpPost("/api/open/owner/car-body/save.htm", arrayList).isSuccess();
    }

    public boolean o(String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(TtmlNode.ATTR_ID, str));
        return httpPost("/api/open/owner/car-body/delete-by-id.htm", arrayList).isSuccess();
    }

    public boolean p(String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(TtmlNode.ATTR_ID, str));
        return httpPost("/api/open/car-body/delete.htm", arrayList).isSuccess();
    }

    public boolean q(int i) throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/owner/car-body/add-to-my-car.htm?id=" + i).isSuccess();
    }

    public b<HpCarMapModel> r(String str, int i) throws ApiException, InternalException, HttpException {
        cn.mucang.android.core.api.d.a aVar = new cn.mucang.android.core.api.d.a();
        aVar.c(str);
        return httpGetFetchMoreResponse(new StringBuilder("/api/open/owner/car-body/list.htm?status=" + i), aVar, HpCarMapModel.class);
    }

    public HpCarMapModel s() throws ApiException, InternalException, HttpException {
        return (HpCarMapModel) httpGetData("/api/open/owner/car-body/my-car-data.htm", HpCarMapModel.class);
    }

    public b<HpCarMapModel> t(String str, int i) throws ApiException, InternalException, HttpException {
        cn.mucang.android.core.api.d.a aVar = new cn.mucang.android.core.api.d.a();
        aVar.c(str);
        return httpGetFetchMoreResponse(new StringBuilder("/api/open/car-body/list.htm?status=" + i), aVar, HpCarMapModel.class);
    }

    public boolean u(int i, int i2) throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/car-body/set-official-data.htm?id=" + i + "&status=" + i2).isSuccess();
    }
}
