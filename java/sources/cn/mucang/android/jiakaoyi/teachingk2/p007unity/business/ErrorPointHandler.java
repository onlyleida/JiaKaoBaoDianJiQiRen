package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.ErrorPointDialog;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\f\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0014\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\b\u0010\u0014\u001a\u00020\u0011H\u0007R6\u0010\u0003\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006`\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler;", "", "()V", "errorList", "Ljava/util/LinkedHashMap;", "", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;", "Lkotlin/collections/LinkedHashMap;", "keyLoginTime", "userModel", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "getKey", "judgeSameDay", "Lkotlin/Pair;", "", "onUserLogin", "", "showDialog", "date", "showPointDialog", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorPointHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ErrorPointHandler f8388a = new ErrorPointHandler();
    private static final LinkedHashMap<String, List<ErrorPointModel>> b = new LinkedHashMap<>();
    private static XyUserModel c;

    private ErrorPointHandler() {
    }

    private final String b(XyUserModel xyUserModel) {
        return r.m("key.loginTime-", Long.valueOf(xyUserModel == null ? -1L : xyUserModel.getStudentId()));
    }

    private final Pair<Boolean, String> c() {
        String strG = i0.g(b(c), "");
        String strD = FormatUtils.d("yyyy-MM-dd", System.currentTimeMillis());
        return r.a(strD, strG) ? new Pair<>(Boolean.TRUE, strD) : new Pair<>(Boolean.FALSE, strD);
    }

    public static final void d(XyUserModel userModel) {
        r.e(userModel, "userModel");
        ErrorPointHandler errorPointHandler = f8388a;
        c = userModel;
        if (errorPointHandler.c().getFirst().booleanValue()) {
            return;
        }
        b.clear();
        g.b(j0.b(), null, null, new ErrorPointHandler$onUserLogin$1(null), 3, null);
    }

    private final void e(String str) {
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        new ErrorPointDialog(activityI, b).show();
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_today_fault_tip);
        r.d(strA, "getString(R.string.teachbase_today_fault_tip)");
        Object[] objArr = new Object[1];
        XyUserModel xyUserModel = c;
        objArr[0] = xyUserModel == null ? null : xyUserModel.getName();
        String str2 = String.format(strA, Arrays.copyOf(objArr, 1));
        r.d(str2, "java.lang.String.format(format, *args)");
        RobotTips.Y(str2, null, TtsGrade.VoiceRobot, 0, null, 16, null);
        i0.m(b(c), str);
    }

    public static final void f() {
        ErrorPointHandler errorPointHandler = f8388a;
        Pair<Boolean, String> pairC = errorPointHandler.c();
        if (pairC.getFirst().booleanValue() || b.isEmpty()) {
            return;
        }
        errorPointHandler.e(pairC.getSecond());
    }
}
