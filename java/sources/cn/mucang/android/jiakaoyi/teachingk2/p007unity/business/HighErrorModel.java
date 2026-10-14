package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import android.text.Html;
import android.text.Spanned;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.tencent.open.SocialConstants;
import defpackage.b;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002./B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u001eR(\u0010\u0003\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0007\"\u0004\b\u0010\u0010\tR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001a\"\u0004\b%\u0010\u001cR\u001c\u0010&\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010 \"\u0004\b(\u0010\"¨\u00060"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;", "Ljava/io/Serializable;", "()V", "areaPosList", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "getAreaPosList", "()Ljava/util/List;", "setAreaPosList", "(Ljava/util/List;)V", "deductList", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;", "getDeductList", "setDeductList", "posList", "getPosList", "setPosList", "reverse", "", "getReverse", "()Z", "setReverse", "(Z)V", "step", "", "getStep", "()I", "setStep", "(I)V", "stepName", "", "getStepName", "()Ljava/lang/String;", "setStepName", "(Ljava/lang/String;)V", "stepPhase", "getStepPhase", "setStepPhase", "stepPhaseName", "getStepPhaseName", "setStepPhaseName", "getErrorDesc", "", "getMenu", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$HighErrorMenu;", "getStepNameDesc", "DeductAnalysisItem", "HighErrorMenu", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HighErrorModel implements Serializable {
    private List<List<Pos>> areaPosList;
    private List<DeductAnalysisItem> deductList;
    private List<Pos> posList;
    private boolean reverse;
    private int step;
    private String stepName;
    private int stepPhase;
    private String stepPhaseName;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;", "Ljava/io/Serializable;", "()V", "analysis", "", "getAnalysis", "()Ljava/lang/String;", "setAnalysis", "(Ljava/lang/String;)V", "code", "", "getCode", "()I", "setCode", "(I)V", SocialConstants.PARAM_APP_DESC, "getDesc", "setDesc", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class DeductAnalysisItem implements Serializable {
        private String analysis;
        private int code;
        private String desc;

        public final String getAnalysis() {
            return this.analysis;
        }

        public final int getCode() {
            return this.code;
        }

        public final String getDesc() {
            return this.desc;
        }

        public final void setAnalysis(String str) {
            this.analysis = str;
        }

        public final void setCode(int i) {
            this.code = i;
        }

        public final void setDesc(String str) {
            this.desc = str;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0018\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001a\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$HighErrorMenu;", "", "()V", "reverse", "", "getReverse", "()Z", "setReverse", "(Z)V", "step", "", "getStep", "()I", "setStep", "(I)V", "stepDirection", "getStepDirection", "setStepDirection", "stepName", "", "getStepName", "()Ljava/lang/String;", "setStepName", "(Ljava/lang/String;)V", "equals", "other", "hashCode", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f8395a;
        private boolean b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f8396d;

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int getF8395a() {
            return this.f8395a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final int getF8396d() {
            return this.f8396d;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getC() {
            return this.c;
        }

        public final void d(boolean z) {
            this.b = z;
        }

        public final void e(int i) {
            this.f8395a = i;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!r.a(a.class, other == null ? null : other.getClass())) {
                return false;
            }
            Objects.requireNonNull(other, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.teachingk2.unity.business.HighErrorModel.HighErrorMenu");
            a aVar = (a) other;
            return this.f8395a == aVar.f8395a && this.b == aVar.b;
        }

        public final void f(int i) {
            this.f8396d = i;
        }

        public final void g(String str) {
            this.c = str;
        }

        public int hashCode() {
            return (this.f8395a * 31) + b.a(this.b);
        }
    }

    public final List<List<Pos>> getAreaPosList() {
        return this.areaPosList;
    }

    public final List<DeductAnalysisItem> getDeductList() {
        return this.deductList;
    }

    public final CharSequence getErrorDesc() {
        List<DeductAnalysisItem> list = this.deductList;
        String strM = "";
        if (list != null) {
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    s.t();
                    throw null;
                }
                DeductAnalysisItem deductAnalysisItem = (DeductAnalysisItem) obj;
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA = k0.a(R.string.teachbase_html);
                r.d(strA, "getString(R.string.teachbase_html)");
                Object[] objArr = new Object[4];
                objArr[0] = Integer.valueOf(i2);
                String stepPhaseName = getStepPhaseName();
                if (stepPhaseName == null) {
                    stepPhaseName = getStepName();
                }
                objArr[1] = stepPhaseName;
                objArr[2] = deductAnalysisItem.getDesc();
                objArr[3] = deductAnalysisItem.getAnalysis();
                String str = String.format(strA, Arrays.copyOf(objArr, 4));
                r.d(str, "java.lang.String.format(format, *args)");
                strM = r.m(strM, str);
                i = i2;
            }
        }
        if (strM.length() == 0) {
            String strA2 = k0.a(R.string.teachbase_no_error_area);
            r.d(strA2, "getString(R.string.teachbase_no_error_area)");
            return strA2;
        }
        Spanned spannedFromHtml = Html.fromHtml(StringsKt__StringsKt.k0(strM, "<br><br>"));
        r.d(spannedFromHtml, "fromHtml(html.removeSuffix(\"<br><br>\"))");
        return spannedFromHtml;
    }

    public final a getMenu() {
        a aVar = new a();
        aVar.e(this.step);
        aVar.d(this.reverse);
        aVar.g(getStepNameDesc());
        aVar.f(0);
        if (this.reverse) {
            int i = this.step;
            if (i == Step.K2_DaoCheRuKu.type) {
                aVar.f(1);
            } else if (i == Step.K2_ZhiJiaoZhuanWan.type) {
                aVar.f(2);
            } else if (i == Step.K2_SQuXian.type) {
                aVar.f(1);
            }
        }
        return aVar;
    }

    public final List<Pos> getPosList() {
        return this.posList;
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

    public final void setAreaPosList(List<List<Pos>> list) {
        this.areaPosList = list;
    }

    public final void setDeductList(List<DeductAnalysisItem> list) {
        this.deductList = list;
    }

    public final void setPosList(List<Pos> list) {
        this.posList = list;
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
