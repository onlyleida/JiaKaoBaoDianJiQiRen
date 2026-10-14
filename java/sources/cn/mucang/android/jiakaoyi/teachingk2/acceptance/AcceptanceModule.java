package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import com.tencent.open.SocialConstants;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0001\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0015B'\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0002\u0010\tR\u0011\u0010\b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u000b\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "", "Ljava/io/Serializable;", "title", "", "type", "", "tip", SocialConstants.PARAM_APP_DESC, "(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getTip", "setTip", "(Ljava/lang/String;)V", "getTitle", "getType", "()I", "K2Teach", "Precision", "Circle", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum AcceptanceModule implements Serializable {
    K2Teach("科目二教学验收", 1, "提示：请依次选择所有教学方案，完成科目二教学验收", "教学方案选择："),
    Precision("精度验收", 2, "提示：上坡起步项目，上坡停车后，测量右前轮与边线距离。\n倒车入库项目，入库停车后，测量右前轮与边线距离。", "精度验收选择："),
    Circle("跑圈验收", 3, "提示：请依次选择所有圈次，完成跑圈验收", "圈次选择：");


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String desc;
    private String tip;
    private final String title;
    private final int type;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceModule$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$Companion;", "", "()V", "getModule", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "type", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final AcceptanceModule a(int i) {
            if (i != 2) {
                return i != 3 ? AcceptanceModule.K2Teach : AcceptanceModule.Circle;
            }
            return AcceptanceModule.Precision;
        }
    }

    AcceptanceModule(String str, int i, String str2, String str3) {
        this.title = str;
        this.type = i;
        this.tip = str2;
        this.desc = str3;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getTip() {
        return this.tip;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final void setTip(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.tip = str;
    }
}
