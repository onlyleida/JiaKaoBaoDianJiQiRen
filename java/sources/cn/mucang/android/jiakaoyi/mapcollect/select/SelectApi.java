package cn.mucang.android.jiakaoyi.mapcollect.select;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.CarCollectSelectModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.select.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\b\u001a\u00020\tJ\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000b\u001a\u00020\tJ\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getBrandList", "", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/CarCollectSelectModel;", "getCarList", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "driveSchoolId", "", "getSchoolList", "cityCode", "getSeriesList", "brandId", "", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectApi extends n {
    public final List<CarCollectSelectModel> m() throws ApiException, InternalException, HttpException {
        List<CarCollectSelectModel> list = httpGet("/api/open/brand-series/get-all-brand.htm").getList(CarCollectSelectModel.class);
        r.d(list, "httpGet(\"/api/open/brand…tSelectModel::class.java)");
        return list;
    }

    public final List<HpCarMapModel> n(String driveSchoolId) throws ApiException, InternalException, HttpException {
        r.e(driveSchoolId, "driveSchoolId");
        List<HpCarMapModel> dataArray = httpPost("/api/open/car/list.htm", t.d(new MucangNameValuePair("driveSchoolId", driveSchoolId))).getDataArray(HpCarMapModel.class);
        r.d(dataArray, "httpPost(\n            \"/…pCarMapModel::class.java)");
        return dataArray;
    }

    public final List<HpCarMapModel> o(String cityCode) throws ApiException, InternalException, HttpException {
        r.e(cityCode, "cityCode");
        List<HpCarMapModel> dataArray = httpPost("/api/open/drive-school/list.htm", t.d(new MucangNameValuePair("cityCode", cityCode))).getDataArray(HpCarMapModel.class);
        r.d(dataArray, "httpPost(\n            \"/…pCarMapModel::class.java)");
        return dataArray;
    }

    public final List<CarCollectSelectModel> p(int i) throws ApiException, InternalException, HttpException {
        List<CarCollectSelectModel> list = httpGet(r.m("/api/open/brand-series/get-series-by-brand.htm?brandId=", Integer.valueOf(i))).getList(CarCollectSelectModel.class);
        r.d(list, "httpGet(\"/api/open/brand…tSelectModel::class.java)");
        return list;
    }
}
