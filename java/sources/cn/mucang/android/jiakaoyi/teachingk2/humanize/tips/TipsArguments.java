package cn.mucang.android.jiakaoyi.teachingk2.humanize.tips;

import android.content.SharedPreferences;
import android.text.TextUtils;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.VoiceTipsRule;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.w0.api.VoiceTipsApi;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\fJ\u000e\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\fJ\u0016\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\fJ\u0016\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\rJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001fJ\u0016\u0010 \u001a\u00020!2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020!J\u0010\u0010\"\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0019\u001a\u00020\fJ\u000e\u0010#\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%J\u000e\u0010&\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\fJ\u001a\u0010'\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\f2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\fJ\u000e\u0010)\u001a\u00020*2\u0006\u0010\u0019\u001a\u00020\fJ\u000e\u0010+\u001a\u00020*2\u0006\u0010\u0019\u001a\u00020\fJ\u001a\u0010,\u001a\u00020*2\u0006\u0010\u0019\u001a\u00020\f2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\fR\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR:\u0010\n\u001a\"\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bj\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u0001`\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R*\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r`\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012¨\u0006-"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "Ljava/io/Serializable;", "()V", "originRule", "", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;", "getOriginRule", "()Ljava/util/List;", "setOriginRule", "(Ljava/util/List;)V", "originUserTimes", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "getOriginUserTimes", "()Ljava/util/HashMap;", "setOriginUserTimes", "(Ljava/util/HashMap;)V", "speakCount", "todayTimes", "getTodayTimes", "setTodayTimes", "containNoticeMessage", "", "ruleCode", "part", "getNoticeMessage", "defaultValue", "getParamCount", "getParamRate", "", "getParamTimeMs", "", "getVoiceUrl", "needSpeak", "rule", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;", "triggerBefore", "triggerToday", "todayKey", "updateBeforeTimes", "", "updateRuleTimes", "updateTodayTimes", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TipsArguments implements Serializable {
    private List<? extends VoiceTipsRule> originRule;
    private HashMap<String, Integer> originUserTimes;
    private HashMap<String, Integer> todayTimes = new HashMap<>();
    private final HashMap<String, Integer> speakCount = new HashMap<>();

    public static /* synthetic */ boolean triggerToday$default(TipsArguments tipsArguments, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return tipsArguments.triggerToday(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateBeforeTimes$lambda-14, reason: not valid java name */
    public static final void m42updateBeforeTimes$lambda14(String ruleCode) {
        kotlin.jvm.internal.r.e(ruleCode, "$ruleCode");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m139constructorimpl(Boolean.valueOf(new VoiceTipsApi().p(ruleCode)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateRuleTimes$lambda-18$lambda-17, reason: not valid java name */
    public static final void m43updateRuleTimes$lambda18$lambda17(VoiceTipsRule it) {
        kotlin.jvm.internal.r.e(it, "$it");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m139constructorimpl(Boolean.valueOf(new VoiceTipsApi().o(it.getId())));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    public static /* synthetic */ void updateTodayTimes$default(TipsArguments tipsArguments, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        tipsArguments.updateTodayTimes(str, str2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    public final boolean containNoticeMessage(String ruleCode, String part) {
        Object next;
        String noticeMessage;
        String name;
        String strX;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        if (TextUtils.isEmpty(part)) {
            return false;
        }
        List<? extends VoiceTipsRule> list = this.originRule;
        if (list == null) {
            strX = null;
        } else {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
            VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
            if (voiceTipsRule == null || (noticeMessage = voiceTipsRule.getNoticeMessage()) == null) {
                strX = null;
            } else {
                XyUserModel xyUserModelE = RobotAccount.i().e();
                strX = kotlin.text.t.x(noticeMessage, "【\\name\\】", (xyUserModelE == null || (name = xyUserModelE.getName()) == null) ? "" : name, false, 4, null);
            }
        }
        if (strX == null) {
            return false;
        }
        kotlin.jvm.internal.r.c(part);
        return StringsKt__StringsKt.G(strX, part, false, 2, null);
    }

    public final String getNoticeMessage(String ruleCode) {
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        return getNoticeMessage(ruleCode, "");
    }

    public final List<VoiceTipsRule> getOriginRule() {
        return this.originRule;
    }

    public final HashMap<String, Integer> getOriginUserTimes() {
        return this.originUserTimes;
    }

    public final int getParamCount(String ruleCode, int defaultValue) {
        Object next;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        List<? extends VoiceTipsRule> list = this.originRule;
        if (list == null) {
            return defaultValue;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
        VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
        return voiceTipsRule == null ? defaultValue : voiceTipsRule.getParamCount(defaultValue);
    }

    public final float getParamRate(String ruleCode, float defaultValue) {
        Object next;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        List<? extends VoiceTipsRule> list = this.originRule;
        if (list == null) {
            return defaultValue;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
        VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
        return voiceTipsRule == null ? defaultValue : voiceTipsRule.getParamRate(defaultValue);
    }

    public final long getParamTimeMs(String ruleCode, long defaultValue) {
        Object next;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        List<? extends VoiceTipsRule> list = this.originRule;
        if (list == null) {
            return defaultValue;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
        VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
        return voiceTipsRule == null ? defaultValue : voiceTipsRule.getParamTimeMs(defaultValue);
    }

    public final HashMap<String, Integer> getTodayTimes() {
        return this.todayTimes;
    }

    public final String getVoiceUrl(String ruleCode) {
        Object next;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        List<? extends VoiceTipsRule> list = this.originRule;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
        VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
        if (voiceTipsRule == null) {
            return null;
        }
        return voiceTipsRule.getVoiceUrl();
    }

    public final boolean needSpeak(TipsRule rule) {
        kotlin.jvm.internal.r.e(rule, "rule");
        if (rule.getCueCount() < 0) {
            return true;
        }
        Integer num = this.speakCount.get(rule.getRuleCode());
        if (num == null) {
            num = 0;
        }
        int iIntValue = num.intValue();
        if (iIntValue >= rule.getCueCount()) {
            return false;
        }
        this.speakCount.put(rule.getRuleCode(), Integer.valueOf(iIntValue + 1));
        return true;
    }

    public final void setOriginRule(List<? extends VoiceTipsRule> list) {
        this.originRule = list;
    }

    public final void setOriginUserTimes(HashMap<String, Integer> map) {
        this.originUserTimes = map;
    }

    public final void setTodayTimes(HashMap<String, Integer> map) {
        kotlin.jvm.internal.r.e(map, "<set-?>");
        this.todayTimes = map;
    }

    public final boolean triggerBefore(String ruleCode) {
        Object next;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        HashMap<String, Integer> map = this.originUserTimes;
        if (map == null) {
            return true;
        }
        List<? extends VoiceTipsRule> list = this.originRule;
        String noticeMessage = null;
        if (list != null) {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
            VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
            if (voiceTipsRule != null) {
                noticeMessage = voiceTipsRule.getNoticeMessage();
            }
        }
        if (TextUtils.isEmpty(noticeMessage)) {
            return true;
        }
        Integer num = map.get(ruleCode);
        if (num == null) {
            num = 0;
            map.put(ruleCode, num);
        }
        return num.intValue() > 0;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a  */
    public final boolean triggerToday(String ruleCode, String todayKey) {
        Object next;
        String noticeMessage;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        List<? extends VoiceTipsRule> list = this.originRule;
        if (list == null) {
            noticeMessage = null;
        } else {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
            VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
            if (voiceTipsRule == null) {
                noticeMessage = null;
            } else {
                noticeMessage = voiceTipsRule.getNoticeMessage();
            }
        }
        if (TextUtils.isEmpty(noticeMessage)) {
            return true;
        }
        String strD = FormatUtils.d("yyyy-MM-dd", System.currentTimeMillis());
        StringBuilder sb = new StringBuilder();
        sb.append(ruleCode);
        sb.append('-');
        XyUserModel xyUserModelE = RobotAccount.i().e();
        sb.append(xyUserModelE != null ? Long.valueOf(xyUserModelE.getStudentId()) : null);
        sb.append('-');
        sb.append(strD);
        sb.append('-');
        sb.append((Object) todayKey);
        String string = sb.toString();
        HashMap<String, Integer> map = this.todayTimes;
        Integer numValueOf = map.get(string);
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(j0.d("RobotTips", string, 0));
            map.put(string, numValueOf);
        }
        return numValueOf.intValue() > 0;
    }

    public final void updateBeforeTimes(final String ruleCode) {
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        HashMap<String, Integer> map = this.originUserTimes;
        if (map == null) {
            return;
        }
        Integer num = map.get(ruleCode);
        boolean z = false;
        if (num == null) {
            num = 0;
        }
        map.put(ruleCode, Integer.valueOf(num.intValue() + 1));
        XyUserModel xyUserModelE = RobotAccount.i().e();
        if (xyUserModelE != null && xyUserModelE.isDebugUser()) {
            z = true;
        }
        if (z) {
            return;
        }
        ThreadPool.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.l
            @Override // java.lang.Runnable
            public final void run() {
                TipsArguments.m42updateBeforeTimes$lambda14(ruleCode);
            }
        });
    }

    public final void updateRuleTimes(String ruleCode) {
        Object next;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        List<? extends VoiceTipsRule> list = this.originRule;
        if (list == null) {
            return;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
        final VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
        if (voiceTipsRule == null) {
            return;
        }
        ThreadPool.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.k
            @Override // java.lang.Runnable
            public final void run() {
                TipsArguments.m43updateRuleTimes$lambda18$lambda17(voiceTipsRule);
            }
        });
    }

    public final void updateTodayTimes(String ruleCode, String todayKey) {
        Object objM139constructorimpl;
        Set<Map.Entry> setEntrySet;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        String strD = FormatUtils.d("yyyy-MM-dd", System.currentTimeMillis());
        SharedPreferences sharedPreferencesB = j0.b("RobotTips");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(sharedPreferencesB.getAll());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        Map map = (Map) objM139constructorimpl;
        SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
        if (map != null && (setEntrySet = map.entrySet()) != null) {
            for (Map.Entry entry : setEntrySet) {
                Object key = entry.getKey();
                kotlin.jvm.internal.r.d(key, "it.key");
                String str = (String) kotlin.collections.s.f0(StringsKt__StringsKt.p0((CharSequence) key, new String[]{"-"}, false, 0, 6, null), 2);
                if (str != null && !kotlin.jvm.internal.r.a(str, strD)) {
                    editorEdit.remove((String) entry.getKey());
                }
            }
        }
        editorEdit.apply();
        StringBuilder sb = new StringBuilder();
        sb.append(ruleCode);
        sb.append('-');
        XyUserModel xyUserModelE = RobotAccount.i().e();
        sb.append(xyUserModelE != null ? Long.valueOf(xyUserModelE.getStudentId()) : null);
        sb.append('-');
        sb.append(strD);
        sb.append('-');
        sb.append((Object) todayKey);
        String string = sb.toString();
        Integer num = this.todayTimes.get(string);
        if (num == null) {
            num = 0;
        }
        int iIntValue = num.intValue() + 1;
        this.todayTimes.put(string, Integer.valueOf(iIntValue));
        j0.i("RobotTips", string, iIntValue);
    }

    public final String getNoticeMessage(String ruleCode, String defaultValue) {
        Object next;
        String noticeMessage;
        List listP0;
        String str;
        String name;
        kotlin.jvm.internal.r.e(ruleCode, "ruleCode");
        kotlin.jvm.internal.r.e(defaultValue, "defaultValue");
        List<? extends VoiceTipsRule> list = this.originRule;
        String strX = null;
        if (list != null) {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!kotlin.jvm.internal.r.a(((VoiceTipsRule) next).getRuleCode(), ruleCode));
            VoiceTipsRule voiceTipsRule = (VoiceTipsRule) next;
            if (voiceTipsRule != null && (noticeMessage = voiceTipsRule.getNoticeMessage()) != null && (listP0 = StringsKt__StringsKt.p0(noticeMessage, new String[]{"||"}, false, 0, 6, null)) != null && (str = (String) kotlin.collections.s.f0(listP0, (int) (Math.random() * ((double) listP0.size())))) != null) {
                XyUserModel xyUserModelE = RobotAccount.i().e();
                strX = kotlin.text.t.x(str, "【\\name\\】", (xyUserModelE == null || (name = xyUserModelE.getName()) == null) ? "" : name, false, 4, null);
            }
        }
        if (TextUtils.isEmpty(strX)) {
            return defaultValue;
        }
        kotlin.jvm.internal.r.c(strX);
        return strX;
    }
}
