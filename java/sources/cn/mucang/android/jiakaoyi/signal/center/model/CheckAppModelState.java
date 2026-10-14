package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.R;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'M_80001' uses external variables
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
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001BG\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;", "", "code", "", "module", "title", "", "zhTitle", SocialConstants.PARAM_APP_DESC, "zhDesc", DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, "checkIndex", "(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "getCheckIndex", "()I", "getCode", "getDesc", "()Ljava/lang/String;", "getLevel", "getModule", "getTitle", "getZhDesc", "getZhTitle", "M_80001", "M_80002", "M_80003", "M_80004", "M_80005", "M_80006", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CheckAppModelState {
    private static final /* synthetic */ CheckAppModelState[] $VALUES;
    public static final CheckAppModelState M_80001;
    public static final CheckAppModelState M_80002;
    public static final CheckAppModelState M_80003;
    public static final CheckAppModelState M_80004;
    public static final CheckAppModelState M_80005;
    public static final CheckAppModelState M_80006;
    private final int checkIndex;
    private final int code;
    private final String desc;
    private final int level;
    private final int module;
    private final String title;
    private final String zhDesc;
    private final String zhTitle;

    private static final /* synthetic */ CheckAppModelState[] $values() {
        return new CheckAppModelState[]{M_80001, M_80002, M_80003, M_80004, M_80005, M_80006};
    }

    static {
        String strA = k0.a(R.string.signal_m_80001_title);
        r.d(strA, "getString(R.string.signal_m_80001_title)");
        String strA2 = k0.a(R.string.signal_m_8001_desc);
        r.d(strA2, "getString(R.string.signal_m_8001_desc)");
        M_80001 = new CheckAppModelState("M_80001", 0, 80001, 8, strA, "APP检测倒车灯损坏", strA2, "解决方案：请检查倒车灯是否损坏或未接线，如仍有问题，请联系维护人员。", 3, 0);
        String strA3 = k0.a(R.string.signal_m_80002_title);
        r.d(strA3, "getString(R.string.signal_m_80002_title)");
        String strA4 = k0.a(R.string.signal_m_80002_desc);
        r.d(strA4, "getString(R.string.signal_m_80002_desc)");
        M_80002 = new CheckAppModelState("M_80002", 1, 80002, 8, strA3, "AI网口连接失败", strA4, "解决方案：请检查AI网口接线，如仍有问题，请联系维护人员。", 3, 1);
        String strA5 = k0.a(R.string.signal_m_80003_title);
        r.d(strA5, "getString(R.string.signal_m_80003_title)");
        String strA6 = k0.a(R.string.signal_m_80003_desc);
        r.d(strA6, "getString(R.string.signal_m_80003_desc)");
        M_80003 = new CheckAppModelState("M_80003", 2, 80003, 8, strA5, "主控网口连接失败", strA6, "解决方案：请检查主控网口接线，如仍有问题，请联系维护人员。", 0, 2);
        String strA7 = k0.a(R.string.signal_m_80004_title);
        r.d(strA7, "getString(R.string.signal_m_80004_title)");
        String strA8 = k0.a(R.string.signal_m_80004_desc);
        r.d(strA8, "getString(R.string.signal_m_80004_desc)");
        M_80004 = new CheckAppModelState("M_80004", 3, 80004, 8, strA7, "GPS网口连接失败", strA8, "解决方案：请检查GPS网口接线，如仍有问题，请联系维护人员。", 0, 3);
        String strA9 = k0.a(R.string.signal_m_80005_title);
        r.d(strA9, "getString(R.string.signal_m_80005_title)");
        String strA10 = k0.a(R.string.signal_m_80005_desc);
        r.d(strA10, "getString(R.string.signal_m_80005_desc)");
        M_80005 = new CheckAppModelState("M_80005", 4, 80005, 8, strA9, "方向盘角度异常(有传感器)", strA10, "解决方案：请检查方向盘传感器是否松动，如仍有问题，请联系维护人员。", 1, 4);
        String strA11 = k0.a(R.string.signal_m_80006_title);
        r.d(strA11, "getString(R.string.signal_m_80006_title)");
        String strA12 = k0.a(R.string.signal_m_80006_desc);
        r.d(strA12, "getString(R.string.signal_m_80006_desc)");
        M_80006 = new CheckAppModelState("M_80006", 5, 80006, 8, strA11, "方向盘角度异常(无传感器)", strA12, "解决方案：请保持车辆直线行驶10米以上距离，如仍有问题，请联系维护人员。", 1, 5);
        $VALUES = $values();
    }

    private CheckAppModelState(String str, int i, int i2, int i3, String str2, String str3, String str4, String str5, int i4, int i5) {
        super(str, i);
        this.code = i2;
        this.module = i3;
        this.title = str2;
        this.zhTitle = str3;
        this.desc = str4;
        this.zhDesc = str5;
        this.level = i4;
        this.checkIndex = i5;
    }

    public static CheckAppModelState valueOf(String str) {
        return (CheckAppModelState) Enum.valueOf(CheckAppModelState.class, str);
    }

    public static CheckAppModelState[] values() {
        return (CheckAppModelState[]) $VALUES.clone();
    }

    public final int getCheckIndex() {
        return this.checkIndex;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getLevel() {
        return this.level;
    }

    public final int getModule() {
        return this.module;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getZhDesc() {
        return this.zhDesc;
    }

    public final String getZhTitle() {
        return this.zhTitle;
    }
}
