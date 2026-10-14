package cn.mucang.android.jiakaoyi.teachingk2.k3;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Teach' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;", "", "mode", "", SocialConstants.PARAM_APP_DESC, "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getMode", "Teach", "Train", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3TeachMode {
    private static final /* synthetic */ K3TeachMode[] $VALUES;
    public static final K3TeachMode Teach;
    public static final K3TeachMode Train;
    private final String desc;
    private final String mode;

    private static final /* synthetic */ K3TeachMode[] $values() {
        return new K3TeachMode[]{Teach, Train};
    }

    static {
        String strA = k0.a(R.string.teachbase_basic_teaching);
        r.d(strA, "getString(R.string.teachbase_basic_teaching)");
        Teach = new K3TeachMode("Teach", 0, "0", strA);
        String strA2 = k0.a(R.string.teachbase_independent_practice);
        r.d(strA2, "getString(R.string.teachbase_independent_practice)");
        Train = new K3TeachMode("Train", 1, "1", strA2);
        $VALUES = $values();
    }

    private K3TeachMode(String str, int i, String str2, String str3) {
        super(str, i);
        this.mode = str2;
        this.desc = str3;
    }

    public static K3TeachMode valueOf(String str) {
        return (K3TeachMode) Enum.valueOf(K3TeachMode.class, str);
    }

    public static K3TeachMode[] values() {
        return (K3TeachMode[]) $VALUES.clone();
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getMode() {
        return this.mode;
    }
}
