package cn.mucang.android.jiakaoyi.k3setting.order;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightOrderStandard;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.z1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u000f2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0017J\u001e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fJ\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u0006\u0010\u0019\u001a\u00020\u0015J\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\bJ\f\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u000fJ\u001d\u0010\"\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010#J\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001e0\u000fJ\u000e\u0010%\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010&\u001a\u00020\u0006J\u000e\u0010'\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/LightApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "addAssemble", "", Constant.PROTOCOL_WEBVIEW_NAME, "", "ids", "addLightOrder", "model", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "buildLightIds", "lights", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;", "buildParams", "Lcn/mucang/android/core/http/MucangNameValuePair;", "deleteAssemble", TtmlNode.ATTR_ID, "", "deleteLight", "", "editAssemble", "assembleId", "editLight", "getAssembleOrders", "getAssembles", "Lcn/mucang/android/core/api/fetch/FetchMoreResponse;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;", "cursor", "getLightOrderStandards", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;", "getLights", "(Ljava/lang/Long;)Ljava/util/List;", "getTestAssembles", "orderAssembles", "resetAssemblesAndLights", "saveLightsSort", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightApi extends BaseDeviceManagerApi {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ExamSiteModel f4491e = ExamSiteUtil.d();

    private final String o(List<? extends Light> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            sb.append(((Light) it.next()).lightId);
            sb.append(",");
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "sb.toString()");
        return string;
    }

    private final List<MucangNameValuePair> p(LightExamModel lightExamModel) {
        List<Light> list = lightExamModel.lights;
        kotlin.jvm.internal.r.d(list, "model.lights");
        List<Light> list2 = lightExamModel.notAllowed;
        kotlin.jvm.internal.r.d(list2, "model.notAllowed");
        return kotlin.collections.u.m(new MucangNameValuePair("examProgramId", String.valueOf(lightExamModel.examProgramId)), new MucangNameValuePair("lightConfigId", String.valueOf(lightExamModel.configId)), new MucangNameValuePair("deductId", String.valueOf(lightExamModel.deductId)), new MucangNameValuePair(SocialConstants.PARAM_APP_DESC, lightExamModel.desc), new MucangNameValuePair(BuildConfig.FLAVOR_feat, lightExamModel.standard), new MucangNameValuePair("lights", o(list)), new MucangNameValuePair("notAllowed", o(list2)), new MucangNameValuePair("icon", lightExamModel.icon), new MucangNameValuePair("voiceCode", String.valueOf(lightExamModel.voiceCode)), new MucangNameValuePair("playOrder", String.valueOf(lightExamModel.playOrder)), new MucangNameValuePair("tag", String.valueOf(lightExamModel.tag)), new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.h(0L))));
    }

    public static /* synthetic */ List y(LightApi lightApi, Long l, int i, Object obj) throws ApiException, InternalException, HttpException {
        if ((i & 1) != 0) {
            l = null;
        }
        return lightApi.x(l);
    }

    public final boolean A() throws ApiException, InternalException, HttpException {
        k(KeMu.K3.serverKeMu);
        StringBuilder sb = new StringBuilder();
        sb.append(DataType.LIGHT_MODEL.getType());
        sb.append(',');
        sb.append(DataType.LIGHT_GROUP.getType());
        return httpPost("/api/open/owner/exam-site/reset.htm", kotlin.collections.u.m(new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.h(0L))), new MucangNameValuePair("types", sb.toString()))).isSuccess();
    }

    public final boolean B(String ids) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(ids, "ids");
        return httpPost("/api/open/owner/light-exam-program/sort.htm", kotlin.collections.t.d(new MucangNameValuePair("examProgramIds", ids))).isSuccess();
    }

    public final boolean m(String name, String ids) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(ids, "ids");
        return httpPost("/api/open/owner/light-combination/add.htm", kotlin.collections.u.m(new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, name), new MucangNameValuePair("lightJudges", ids), new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.h(0L))))).isSuccess();
    }

    public final boolean n(LightExamModel model) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(model, "model");
        return httpPost("/api/open/owner/light-exam-program/add.htm", p(model)).isSuccess();
    }

    public final boolean q(long j) throws ApiException, InternalException, HttpException {
        return httpPost("/api/open/owner/light-combination/delete.htm", kotlin.collections.u.m(new MucangNameValuePair(TtmlNode.ATTR_ID, String.valueOf(j)), new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.h(0L))))).isSuccess();
    }

    public final boolean r(int i) throws ApiException, InternalException, HttpException {
        return httpPost("/api/open/owner/light-exam-program/delete.htm", kotlin.collections.t.d(new MucangNameValuePair("examProgramId", String.valueOf(i)))).isSuccess();
    }

    public final boolean s(long j, String name, String ids) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(ids, "ids");
        return httpPost("/api/open/owner/light-combination/edit.htm", kotlin.collections.u.m(new MucangNameValuePair(TtmlNode.ATTR_ID, String.valueOf(j)), new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, name), new MucangNameValuePair("lightJudges", ids), new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.h(0L))))).isSuccess();
    }

    public final boolean t(LightExamModel model) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(model, "model");
        return httpPost("/api/open/owner/light-exam-program/edit.htm", p(model)).isSuccess();
    }

    public final List<LightExamModel> u(long j) throws ApiException, InternalException, HttpException {
        return x(Long.valueOf(j));
    }

    public final cn.mucang.android.core.api.d.b<LightAssembleModel> v(String cursor) throws Exception {
        kotlin.jvm.internal.r.e(cursor, "cursor");
        cn.mucang.android.core.api.d.a aVar = new cn.mucang.android.core.api.d.a();
        aVar.c(cursor);
        aVar.d(50);
        cn.mucang.android.core.api.d.b<LightAssembleModel> bVarHttpGetFetchMoreResponse = httpGetFetchMoreResponse(new StringBuilder(kotlin.jvm.internal.r.m("/api/open/owner/light-combination/list.htm?examSiteId=", Long.valueOf(ExamSiteUtil.h(0L)))), aVar, LightAssembleModel.class);
        kotlin.jvm.internal.r.d(bVarHttpGetFetchMoreResponse, "httpGetFetchMoreResponse…del::class.java\n        )");
        return bVarHttpGetFetchMoreResponse;
    }

    public final List<LightOrderStandard> w() throws ApiException, InternalException, HttpException {
        ExamSiteModel examSiteModel = this.f4491e;
        List<LightOrderStandard> listHttpGetDataList = httpGetDataList(kotlin.jvm.internal.r.m("/api/open/owner/light-exam-program/list-light-configs.htm?examSiteId=", examSiteModel == null ? null : Long.valueOf(examSiteModel.examSiteId)), LightOrderStandard.class);
        kotlin.jvm.internal.r.d(listHttpGetDataList, "httpGetDataList(\n       …ard::class.java\n        )");
        return listHttpGetDataList;
    }

    public final List<LightExamModel> x(Long l) throws Exception {
        long jH = ExamSiteUtil.h(0L);
        ArrayList arrayList = new ArrayList();
        if (l != null) {
            arrayList.add(new MucangNameValuePair("lightCombinationId", l.toString()));
        }
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(jH)));
        List<LightExamModel> listHttpGetDataList = httpGetDataList(cn.mucang.android.core.api.url.c.c("/api/open/owner/light-exam-program/get-light-exam-programs.htm", arrayList), LightExamModel.class);
        kotlin.jvm.internal.r.d(listHttpGetDataList, "httpGetDataList(buildUrl…ghtExamModel::class.java)");
        return listHttpGetDataList;
    }

    public final boolean z(String ids) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(ids, "ids");
        return httpPost("/api/open/owner/light-combination/sort.htm", kotlin.collections.u.m(new MucangNameValuePair("ids", ids), new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.h(0L))))).isSuccess();
    }
}
