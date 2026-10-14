package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.RuleGroupModel;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.siterule.h0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bJ\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000f\u001a\u00020\u0010J\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\u0012J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0018"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/SiteApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "backupSite", "", "examSiteId", "", "types", "", "k2AddSiteRuleList", Constant.PROTOCOL_WEBVIEW_NAME, "myK2SiteList", "", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "myRobotSiteList", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "mySiteList", "", "resetSite", "robotAddSiteRuleList", "robotBackupSite", "shareExamSite", "phone", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SiteApi extends BaseDeviceManagerApi {
    public final boolean m(long j, String types) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(types, "types");
        return httpPost("/api/open/owner/exam-site/report.htm", kotlin.collections.u.p(new MucangNameValuePair("examSiteId", String.valueOf(j)), new MucangNameValuePair("types", types))).isSuccess();
    }

    public final boolean n(String name) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(name, "name");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, name));
        return httpPost("/api/open/owner/rule-group/create.htm", arrayList).isSuccess();
    }

    public final List<ExamSiteModel> o() throws Exception {
        List ruleGroupModels = httpGetDataList("/api/open/owner/rule-group/list.htm", RuleGroupModel.class);
        kotlin.jvm.internal.r.d(ruleGroupModels, "ruleGroupModels");
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(ruleGroupModels, 10));
        Iterator it = ruleGroupModels.iterator();
        while (it.hasNext()) {
            arrayList.add(((RuleGroupModel) it.next()).map());
        }
        return arrayList;
    }

    public final List<ExamSiteModel> p(KeMu keMu) throws Exception {
        kotlin.jvm.internal.r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        List ruleGroupModels = httpGetDataList("/api/open/owner/rule-group/list.htm", RuleGroupModel.class);
        kotlin.jvm.internal.r.d(ruleGroupModels, "ruleGroupModels");
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(ruleGroupModels, 10));
        Iterator it = ruleGroupModels.iterator();
        while (it.hasNext()) {
            arrayList.add(((RuleGroupModel) it.next()).map());
        }
        return arrayList;
    }

    public final List<ExamSiteModel> q() throws Exception {
        List<ExamSiteModel> listHttpGetDataList = httpGetDataList("/api/open/owner/exam-site/list.htm?pageSize=100", ExamSiteModel.class);
        kotlin.jvm.internal.r.d(listHttpGetDataList, "httpGetDataList(\n       …del::class.java\n        )");
        return listHttpGetDataList;
    }

    public final boolean r(String name, KeMu keMu) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, name));
        arrayList.add(new MucangNameValuePair("kemu", keMu.serverKeMu));
        return httpPost("/api/open/owner/rule-group/create.htm", arrayList).isSuccess();
    }

    public final boolean s(long j, KeMu keMu) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        return httpPost("/api/open/owner/exam-site/report.htm", kotlin.collections.u.p(new MucangNameValuePair("examSiteId", String.valueOf(j)), new MucangNameValuePair("types", "0"))).isSuccess();
    }
}
