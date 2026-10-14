package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.tencent.open.SocialConstants;
import java.io.Serializable;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0016J\u0006\u0010&\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\b¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;", "Ljava/io/Serializable;", "()V", "analysis", "", "getAnalysis", "()Ljava/lang/String;", "setAnalysis", "(Ljava/lang/String;)V", SocialConstants.PARAM_APP_DESC, "getDesc", "setDesc", "imgUrl", "getImgUrl", "setImgUrl", "reverse", "", "getReverse", "()Z", "setReverse", "(Z)V", "step", "", "getStep", "()I", "setStep", "(I)V", "stepName", "getStepName", "setStepName", "stepPhase", "getStepPhase", "setStepPhase", "stepPhaseName", "getStepPhaseName", "setStepPhaseName", "getErrorDesc", "index", "getStepNameDesc", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorPointModel implements Serializable {
    private String analysis;
    private String desc;
    private String imgUrl;
    private boolean reverse;
    private int step;
    private String stepName;
    private int stepPhase;
    private String stepPhaseName;

    public final String getAnalysis() {
        return this.analysis;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getErrorDesc(int index) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_error_analysis);
        r.d(strA, "getString(R.string.teachbase_error_analysis)");
        Object[] objArr = new Object[4];
        objArr[0] = Integer.valueOf(index + 1);
        String str = this.stepPhaseName;
        if (str == null) {
            str = this.stepName;
        }
        objArr[1] = str;
        objArr[2] = this.desc;
        objArr[3] = this.analysis;
        String str2 = String.format(strA, Arrays.copyOf(objArr, 4));
        r.d(str2, "java.lang.String.format(format, *args)");
        return str2;
    }

    public final String getImgUrl() {
        return this.imgUrl;
    }

    public final boolean getReverse() {
        return this.reverse;
    }

    public final int getStep() {
        return this.step;
    }

    public final String getStepName() {
        return this.stepName;
    }

    public final String getStepNameDesc() {
        String strA;
        int i = this.step;
        if (i == Step.K2_DaoCheRuKu.type) {
            strA = k0.a(R.string.teachbase_zuoku);
        } else if (i == Step.K2_ZhiJiaoZhuanWan.type) {
            strA = k0.a(R.string.teachbase_youku);
        } else {
            strA = i == Step.K2_SQuXian.type ? k0.a(R.string.teachbase_fanqv) : "";
        }
        return r.m(this.stepName, this.reverse ? strA : "");
    }

    public final int getStepPhase() {
        return this.stepPhase;
    }

    public final String getStepPhaseName() {
        return this.stepPhaseName;
    }

    public final void setAnalysis(String str) {
        this.analysis = str;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public final void setReverse(boolean z) {
        this.reverse = z;
    }

    public final void setStep(int i) {
        this.step = i;
    }

    public final void setStepName(String str) {
        this.stepName = str;
    }

    public final void setStepPhase(int i) {
        this.stepPhase = i;
    }

    public final void setStepPhaseName(String str) {
        this.stepPhaseName = str;
    }
}
