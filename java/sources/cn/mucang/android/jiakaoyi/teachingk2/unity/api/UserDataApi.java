package cn.mucang.android.jiakaoyi.teachingk2.unity.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseUserDataApi;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.SummaryRecordList;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.SummaryStat;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TrainStepLevel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserAIModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainOverviewModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.UserTrainModel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.b1.d.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0007\u001a\u00020\bJ\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0014¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/api/UserDataApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseUserDataApi;", "()V", "getAIData", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserAIModel;", "getErrorData", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserErrorModel;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getOverviewData", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainOverviewModel;", "getSummaryStat", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryStat;", "getTrainData", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel;", "getTrainStepLevel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel;", "stepType", "", "getTrainStepList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList$PassCount;", "getUserLevelData", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserDataApi extends BaseUserDataApi {
    public final UserAIModel m() throws InternalException {
        Object data = httpGet(r.m("/api/open/behavior-stat/get-top.htm?latestDay=1&range=1&top=5&product=", MucangConfig.getContext().getResources().getString(R.string.product))).getData((Class<Object>) UserAIModel.class);
        r.d(data, "httpGet(\"/api/open/behav…(UserAIModel::class.java)");
        return (UserAIModel) data;
    }

    public final UserErrorModel n(KeMu keMu) throws InternalException {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        Object data = httpGet(r.m("/api/open/deduct-stat/get-top.htm?latestDay=1&range=0&top=5&product=", MucangConfig.getContext().getResources().getString(R.string.product))).getData((Class<Object>) UserErrorModel.class);
        r.d(data, "httpGet(\"/api/open/deduc…erErrorModel::class.java)");
        return (UserErrorModel) data;
    }

    public final TrainOverviewModel o(KeMu keMu) throws InternalException {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        Object data = httpGet(r.m("/api/open/summary-stat/get.htm?latestDay=1&product=", MucangConfig.getContext().getResources().getString(R.string.product))).getData((Class<Object>) TrainOverviewModel.class);
        r.d(data, "httpGet(\"/api/open/summa…verviewModel::class.java)");
        return (TrainOverviewModel) data;
    }

    public final SummaryStat p(KeMu keMu) throws Exception {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        Object objHttpGetData = httpGetData("/api/open/summary-stat/get-all.htm?latestDay=1", SummaryStat.class);
        r.d(objHttpGetData, "httpGetData(\"/api/open/s… SummaryStat::class.java)");
        return (SummaryStat) objHttpGetData;
    }

    public final UserTrainModel q(KeMu keMu) throws InternalException {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        Object data = httpGet(r.m("/api/open/step-stat/get2.htm?latestDay=1&product=", MucangConfig.getContext().getResources().getString(R.string.product))).getData((Class<Object>) UserTrainModel.class);
        r.d(data, "httpGet(\"/api/open/step-…erTrainModel::class.java)");
        return (UserTrainModel) data;
    }

    public final TrainStepLevel r(int i) throws InternalException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("step", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("product", MucangConfig.getContext().getResources().getString(R.string.product)));
        Object data = httpPost("/api/open/step-level/get.htm", arrayList).getData((Class<Object>) TrainStepLevel.class);
        r.d(data, "httpPost(\"/api/open/step…ainStepLevel::class.java)");
        return (TrainStepLevel) data;
    }

    public final List<SummaryRecordList.PassCount> s(KeMu keMu) throws Exception {
        r.e(keMu, "keMu");
        k(keMu.serverKeMu);
        List<SummaryRecordList.PassCount> listHttpGetDataList = httpGetDataList("/api/open/step-stat/count-list.htm", SummaryRecordList.PassCount.class);
        r.d(listHttpGetDataList, "httpGetDataList(\n       …unt::class.java\n        )");
        return listHttpGetDataList;
    }

    public final List<UserLevelData> t() throws ApiException, IOException, InternalException, HttpException {
        k(KeMu.K2.serverKeMu);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("product", MucangConfig.getContext().getResources().getString(R.string.product)));
        List<UserLevelData> dataArray = httpPost("/api/open/user-train-guide/list.htm", arrayList).getDataArray(UserLevelData.class);
        r.d(dataArray, "httpPost(\"/api/open/user…serLevelData::class.java)");
        return dataArray;
    }
}
