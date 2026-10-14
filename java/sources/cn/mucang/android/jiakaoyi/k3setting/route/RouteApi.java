package cn.mucang.android.jiakaoyi.k3setting.route;

import cn.mucang.android.core.api.d.a;
import cn.mucang.android.core.api.d.b;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.f;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.e.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\bJ\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\bJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\bJ.\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u001a2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\b2\b\b\u0002\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bJ\u0014\u0010#\u001a\u00020\u00042\f\u0010$\u001a\b\u0012\u0004\u0012\u00020&0%¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/RouteApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "addRouteTeachGps", "", "teachId", "", "uid", "", "lat", "", "lon", "bearing", "", "addToMyRoute", "routeId", "clearRouteTeachGps", "deleteRoute", "editRoute", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "getRobotRouteList", "", "Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;", "getRouteById", "getRouteList", "Lcn/mucang/android/core/api/fetch/FetchMoreResponse;", "examSiteId", "type", "cursor", "pageSize", "", "saveRoute", "shareRoute", "phone", "updateMyRouteSpots", "routeNodeSpots", "", "Lcn/mucang/jiakaoyi/uilib/model/RouteNodeSpots;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteApi extends BaseDeviceManagerApi {
    public final boolean m(long j, String uid, double d2, double d3, float f2) throws ApiException, InternalException, HttpException {
        r.e(uid, "uid");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("teachId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("uid", uid));
        arrayList.add(new MucangNameValuePair("latitude", String.valueOf(d2)));
        arrayList.add(new MucangNameValuePair("longitude", String.valueOf(d3)));
        arrayList.add(new MucangNameValuePair("bearing", String.valueOf(f2)));
        return httpPost("/api/open/owner/route/add-gps.htm", arrayList).isSuccess();
    }

    public final boolean n(String routeId) throws ApiException, InternalException, HttpException {
        r.e(routeId, "routeId");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("routeId", routeId));
        return httpPost("/api/open/owner/route/add-to-my-route.htm", arrayList).isSuccess();
    }

    public final boolean o(long j, String uid) throws ApiException, InternalException, HttpException {
        r.e(uid, "uid");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("teachId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("uid", uid));
        return httpPost("/api/open/owner/route/clean-gps.htm", arrayList).isSuccess();
    }

    public final boolean p(String routeId) throws ApiException, InternalException, HttpException {
        r.e(routeId, "routeId");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("routeId", routeId));
        return AppUtils.k() ? httpPost("/api/open/owner/route/delete-exam-site-route.htm", arrayList).isSuccess() : httpPost("/api/open/owner/route/delete.htm", arrayList).isSuccess();
    }

    public final boolean q(LocalRoute route) throws ApiException, InternalException, HttpException {
        r.e(route, "route");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(route.getExamSiteId())));
        arrayList.add(new MucangNameValuePair("canPublic", String.valueOf(route.isCanPublic())));
        arrayList.add(new MucangNameValuePair("distance", String.valueOf(route.getDistance())));
        arrayList.add(new MucangNameValuePair("routeName", route.getRouteName()));
        arrayList.add(new MucangNameValuePair("routeId", route.getRouteId()));
        arrayList.add(new MucangNameValuePair("spots", f.a(route.getNodes())));
        return AppUtils.k() ? httpPost("/api/open/owner/route/save-exam-site-route.htm", arrayList).isSuccess() : httpPost("/api/open/owner/route/edit.htm", arrayList).isSuccess();
    }

    public final List<OnlineRoute> r() throws Exception {
        List<OnlineRoute> listHttpGetDataList = httpGetDataList(r.m("/api/open/owner/route/exam-site-list.htm?examSiteId=", Long.valueOf(ExamSiteUtil.e(0L))), OnlineRoute.class);
        r.d(listHttpGetDataList, "httpGetDataList(\n       …ute::class.java\n        )");
        return listHttpGetDataList;
    }

    public final OnlineRoute s(String routeId) throws Exception {
        r.e(routeId, "routeId");
        Object objHttpGetData = httpGetData(r.m("/api/open/owner/route/get-by-route-id.htm?routeId=", routeId), OnlineRoute.class);
        r.d(objHttpGetData, "httpGetData(\n           …ute::class.java\n        )");
        return (OnlineRoute) objHttpGetData;
    }

    public final b<OnlineRoute> t(long j, String type, String cursor, int i) throws Exception {
        r.e(type, "type");
        r.e(cursor, "cursor");
        a aVar = new a();
        aVar.c(cursor);
        aVar.d(i);
        b<OnlineRoute> bVarHttpGetFetchMoreResponse = httpGetFetchMoreResponse(new StringBuilder("/api/open/owner/route/list.htm?examSiteId=" + j + "&type=" + type), aVar, OnlineRoute.class);
        r.d(bVarHttpGetFetchMoreResponse, "httpGetFetchMoreResponse…ute::class.java\n        )");
        return bVarHttpGetFetchMoreResponse;
    }

    public final boolean v(LocalRoute route) throws ApiException, InternalException, HttpException {
        r.e(route, "route");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(route.getExamSiteId())));
        arrayList.add(new MucangNameValuePair("canPublic", String.valueOf(route.isCanPublic())));
        arrayList.add(new MucangNameValuePair("distance", String.valueOf(route.getDistance())));
        arrayList.add(new MucangNameValuePair("routeName", route.getRouteName()));
        arrayList.add(new MucangNameValuePair("routeId", route.getRouteId()));
        arrayList.add(new MucangNameValuePair("distance", String.valueOf(route.getDistance())));
        arrayList.add(new MucangNameValuePair("spots", f.a(route.getNodes())));
        return AppUtils.k() ? httpPost("/api/open/owner/route/save-exam-site-route.htm", arrayList).isSuccess() : httpPost("/api/open/owner/route/save.htm", arrayList).isSuccess();
    }
}
