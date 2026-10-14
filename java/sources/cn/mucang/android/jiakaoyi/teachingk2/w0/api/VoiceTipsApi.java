package cn.mucang.android.jiakaoyi.teachingk2.w0.api;

import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.UserTipsTimes;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.VoiceTipsRule;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.w0.a.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/api/VoiceTipsApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getTimes", "", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;", "getVoiceRule", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;", "schoolId", "", "updateTimes", "", "ruleId", "updateUserTimes", "ruleCode", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VoiceTipsApi extends n {
    public final List<UserTipsTimes> m() throws Exception {
        XyUserModel xyUserModelE = RobotAccount.i().e();
        List<UserTipsTimes> listHttpGetDataList = httpGetDataList(r.m("/api/open/voice-rule-record/list.htm?studentId=", xyUserModelE == null ? null : Long.valueOf(xyUserModelE.getStudentId())), UserTipsTimes.class);
        r.d(listHttpGetDataList, "httpGetDataList(\"/api/op…serTipsTimes::class.java)");
        return listHttpGetDataList;
    }

    public final List<VoiceTipsRule> n(long j) throws Exception {
        List<VoiceTipsRule> listHttpGetDataList = httpGetDataList(r.m("/api/open/voice-rule/list.htm?schoolId=", Long.valueOf(j)), VoiceTipsRule.class);
        r.d(listHttpGetDataList, "httpGetDataList(\"/api/op…oiceTipsRule::class.java)");
        return listHttpGetDataList;
    }

    public final boolean o(long j) {
        return httpGet(r.m("/api/open/voice-rule/update-times.htm?ruleId=", Long.valueOf(j))).getData(false);
    }

    public final boolean p(String ruleCode) {
        r.e(ruleCode, "ruleCode");
        return httpGet(r.m("/api/open/voice-rule-record/update-times.htm?ruleCode=", ruleCode)).getData(false);
    }
}
