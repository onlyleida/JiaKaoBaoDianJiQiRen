package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.d.a;
import cn.mucang.android.core.api.d.b;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.signal.car.CarSelectModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\bJ\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\bJ\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J&\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001dJ\u000e\u0010 \u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/GeneralBusinessApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "copySiteMapData", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "model", "createExamSiteMap", "updateMap", "", "deleteMap", "mapSiteId", "", "getCarList", "", "Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;", "getExamMapBySiteId", "examSiteId", "needMapData", "getMapList", "Lcn/mucang/android/core/api/fetch/FetchMoreResponse;", "cursor", "", "onlyPublic", "getRealCarList", "getSiteListByCity", "cityCode", "saveMapData", "setOrigin", "latitude", "", "longitude", "altitude", "updateSiteMapData", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GeneralBusinessApi extends BaseDeviceManagerApi {
    public final ExamSiteModel m(ExamSiteModel model) throws ApiException, InternalException, HttpException {
        r.e(model, "model");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("cityCode", model.cityCode));
        arrayList.add(new MucangNameValuePair("driveSchoolName", model.driveSchoolName));
        arrayList.add(new MucangNameValuePair("examSiteName", model.examSiteName));
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(model.examSiteId)));
        arrayList.add(new MucangNameValuePair("canPublic", String.valueOf(model.canPublic)));
        arrayList.add(new MucangNameValuePair("mapDataMd5", model.mapDataMd5));
        arrayList.add(new MucangNameValuePair("mapDataUrl", model.mapDataUrl));
        long j = model.gpsBaseId;
        if (j > 0) {
            arrayList.add(new MucangNameValuePair("gpsBaseId", String.valueOf(j)));
        }
        Object data = httpPost("/api/open/owner/exam-site-map/create-map-and-site.htm", arrayList).getData((Class<Object>) ExamSiteModel.class);
        r.d(data, "httpPost(\"/api/open/owne…xamSiteModel::class.java)");
        return (ExamSiteModel) data;
    }

    public final ExamSiteModel n(ExamSiteModel model, boolean z) throws ApiException, InternalException, HttpException {
        r.e(model, "model");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("cityCode", model.cityCode));
        arrayList.add(new MucangNameValuePair("driveSchoolName", model.driveSchoolName));
        arrayList.add(new MucangNameValuePair("examSiteName", model.examSiteName));
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(model.examSiteId)));
        arrayList.add(new MucangNameValuePair("canPublic", String.valueOf(model.canPublic)));
        arrayList.add(new MucangNameValuePair("updateMap", String.valueOf(z)));
        long j = model.gpsBaseId;
        if (j > 0) {
            arrayList.add(new MucangNameValuePair("gpsBaseId", String.valueOf(j)));
        }
        Object data = httpPost("/api/open/owner/exam-site-map/create-map-and-site.htm", arrayList).getData((Class<Object>) ExamSiteModel.class);
        r.d(data, "httpPost(\"/api/open/owne…xamSiteModel::class.java)");
        return (ExamSiteModel) data;
    }

    public final boolean o(long j) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        return httpPost("/api/open/owner/exam-site-map/delete.htm", arrayList).isSuccess();
    }

    public final List<CarSelectModel> p() throws ApiException, InternalException, HttpException {
        List<CarSelectModel> dataArray = httpGet("/api/open/owner/model/list-obd-models.htm").getDataArray(CarSelectModel.class);
        r.d(dataArray, "httpGet(\"/api/open/owner…rSelectModel::class.java)");
        return dataArray;
    }

    public final ExamSiteModel q(long j, boolean z) throws ApiException, InternalException, HttpException {
        return (ExamSiteModel) httpGetData("/api/open/owner/exam-site-map/get-map.htm?examSiteId=" + j + "&returnMapData=" + z, ExamSiteModel.class);
    }

    public final b<ExamSiteModel> r(String cursor, boolean z) throws Exception {
        r.e(cursor, "cursor");
        a aVar = new a();
        aVar.c(cursor);
        aVar.d(20);
        b<ExamSiteModel> bVarHttpGetFetchMoreResponse = httpGetFetchMoreResponse(new StringBuilder(r.m("/api/open/owner/exam-site-map/list.htm?onlyPublic=", Boolean.valueOf(z))), aVar, ExamSiteModel.class);
        r.d(bVarHttpGetFetchMoreResponse, "httpGetFetchMoreResponse…del::class.java\n        )");
        return bVarHttpGetFetchMoreResponse;
    }

    public final List<CarSelectModel> s() throws InternalException {
        List<CarSelectModel> dataArray = httpGet("/api/open/owner/model-universal/list.htm").getDataArray(CarSelectModel.class);
        r.d(dataArray, "httpGet(\"/api/open/owner…rSelectModel::class.java)");
        return dataArray;
    }

    public final b<ExamSiteModel> t(String str, String cursor) throws Exception {
        r.e(cursor, "cursor");
        a aVar = new a();
        aVar.c(cursor);
        aVar.d(100);
        b<ExamSiteModel> bVarHttpGetFetchMoreResponse = httpGetFetchMoreResponse(new StringBuilder(r.m("/api/open/owner/exam-site/list-public-site.htm?areaCode=", str)), aVar, ExamSiteModel.class);
        r.d(bVarHttpGetFetchMoreResponse, "httpGetFetchMoreResponse…del::class.java\n        )");
        return bVarHttpGetFetchMoreResponse;
    }

    public final ExamSiteModel u(ExamSiteModel model) throws ApiException, InternalException, HttpException {
        r.e(model, "model");
        String str = model.mapData;
        r.d(str, "model.mapData");
        byte[] bytes = str.getBytes(Charsets.f15811a);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        t.a("mapUpload", r.m("mapUpload size ", Integer.valueOf(bytes.length)));
        Object data = httpPost(r.m("/api/open/owner/exam-site-map/collect-map.htm?&examSiteId=", Long.valueOf(model.examSiteId)), bytes, true).getData((Class<Object>) ExamSiteModel.class);
        r.d(data, "httpPost(\"/api/open/owne…del::class.java\n        )");
        return (ExamSiteModel) data;
    }

    public final boolean v(long j, double d2, double d3, double d4) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("originLatitude", String.valueOf(d2)));
        arrayList.add(new MucangNameValuePair("originLongitude", String.valueOf(d3)));
        arrayList.add(new MucangNameValuePair("originAltitude", String.valueOf(d4)));
        return httpPost("/api/open/owner/exam-site-map/set-origin-gps.htm", arrayList).isSuccess();
    }

    public final boolean w(ExamSiteModel model) throws ApiException, InternalException, HttpException {
        r.e(model, "model");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("cityCode", model.cityCode));
        arrayList.add(new MucangNameValuePair("driveSchoolName", model.driveSchoolName));
        arrayList.add(new MucangNameValuePair("examSiteName", model.examSiteName));
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(model.examSiteId)));
        arrayList.add(new MucangNameValuePair("canPublic", String.valueOf(model.canPublic)));
        arrayList.add(new MucangNameValuePair("mapDataMd5", model.mapDataMd5));
        arrayList.add(new MucangNameValuePair("mapDataUrl", model.mapDataUrl));
        long j = model.gpsBaseId;
        if (j > 0) {
            arrayList.add(new MucangNameValuePair("gpsBaseId", String.valueOf(j)));
        }
        return httpPost("/api/open/owner/exam-site-map/update.htm", arrayList).isSuccess();
    }
}
