package cn.mucang.android.jiakaoyi.teachingk2.record;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseUserCollectionApi;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.ExamStep;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.TrainStep;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.ErrorPointModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.HighErrorModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import com.mobile.auth.gatewayauth.Constant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.record.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fJ\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u001dJ\u0014\u0010\u001e\u001a\u00020\f2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\t¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseUserCollectionApi;", "()V", "getErrorPointData", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getExamRecordList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;", "recent", "", "getHighErrorArea", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;", "getHighErrorData", "getRecordList", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;", "getTrainStepList", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;", "reportTime", "", Constant.START_TIME, "", "endTime", "uploadFpData", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "uploadPassData", "", "uploadRecord", "list", "Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserRecordApi extends BaseUserCollectionApi {
    public final List<ErrorPointModel> m(KeMu keMu) throws ApiException, IOException, InternalException, HttpException {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("product", MucangConfig.getContext().getResources().getString(R.string.product)));
        List<ErrorPointModel> dataArray = httpPost("/api/open/train-deduct/get-error-point-list.htm", arrayList).getDataArray(ErrorPointModel.class);
        r.d(dataArray, "response.getDataArray(ErrorPointModel::class.java)");
        return dataArray;
    }

    public final List<ExamStep> n(KeMu keMu, boolean z) throws Exception {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        List<ExamStep> listHttpGetDataList = httpGetDataList(r.m("/api/open/train-record/get-user-train-list.htm?type=12&", z ? "latestDay=1" : "limit=1000"), ExamStep.class);
        r.d(listHttpGetDataList, "httpGetDataList(\n       …tep::class.java\n        )");
        return listHttpGetDataList;
    }

    public final List<HighErrorModel> o(KeMu keMu) throws ApiException, IOException, InternalException, HttpException {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("product", MucangConfig.getContext().getResources().getString(R.string.product)));
        List<HighErrorModel> dataArray = httpPost("/api/open/train-deduct/get-error-area-list.htm", arrayList).getDataArray(HighErrorModel.class);
        r.d(dataArray, "response.getDataArray(HighErrorModel::class.java)");
        return dataArray;
    }

    public final List<HighErrorModel> p(KeMu keMu) throws ApiException, IOException, InternalException, HttpException {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("product", MucangConfig.getContext().getResources().getString(R.string.product)));
        List<HighErrorModel> dataArray = httpPost("/api/open/train-deduct/get-error-stat-list.htm", arrayList).getDataArray(HighErrorModel.class);
        r.d(dataArray, "response.getDataArray(HighErrorModel::class.java)");
        return dataArray;
    }

    public final List<TrainStep> q(KeMu keMu, boolean z) throws Exception {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        List<TrainStep> listHttpGetDataList = httpGetDataList(r.m("/api/open/train-step/get-user-train-list.htm?", z ? "latestDay=1" : "limit=1000"), TrainStep.class);
        r.d(listHttpGetDataList, "httpGetDataList(\n       …tep::class.java\n        )");
        return listHttpGetDataList;
    }

    public final void r(long j, long j2) throws Exception {
        httpGet("/api/open/login-time/report.htm?startTime=" + j + "&endTime=" + j2 + "&product=" + MucangConfig.getContext().getResources().getString(cn.mucang.android.jiakaoyi.engine.R.string.product));
    }

    public final boolean s(UserLevelData data) throws ApiException, IOException, InternalException, HttpException {
        r.e(data, "data");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("product", MucangConfig.getContext().getResources().getString(R.string.product)));
        arrayList.add(new MucangNameValuePair("code", String.valueOf(data.getCode())));
        arrayList.add(new MucangNameValuePair("subCode", String.valueOf(data.getSubCode())));
        arrayList.add(new MucangNameValuePair("pass", String.valueOf(data.getPass())));
        arrayList.add(new MucangNameValuePair("data", JSON.toJSONString(data.getData())));
        return httpPost("/api/open/user-train-course/saveData.htm", arrayList).isSuccess();
    }

    public final boolean t(String data) throws ApiException, IOException, InternalException, HttpException {
        r.e(data, "data");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("product", MucangConfig.getContext().getResources().getString(R.string.product)));
        arrayList.add(new MucangNameValuePair("data", data));
        return httpPost("/api/open/user-mission/upload-robot-data.htm", arrayList).isSuccess();
    }

    public final boolean u(List<UserRecordModel> list) throws ApiException, IOException, InternalException, HttpException {
        r.e(list, "list");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("data", JSON.toJSONString(list)));
        arrayList.add(new MucangNameValuePair("product", MucangConfig.getContext().getResources().getString(R.string.product)));
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.e(0L))));
        return httpPost("/api/open/behavior/uploadData", arrayList).isSuccess();
    }
}
