package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.R;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'M_10006' uses external variables
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b]\b\u0086\u0001\u0018\u0000 w2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001wBG\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000ej\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bv¨\u0006x"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "", "code", "", "module", "", "zhTitle", "title", "zhDesc", SocialConstants.PARAM_APP_DESC, DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, "checkIndex", "(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "getCode", "()Ljava/lang/String;", "getDesc", "getLevel", "()I", "getModule", "getTitle", "getZhDesc", "getZhTitle", "checkPass", "", "value", "getCheckInt", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "M_10006", "M_10007", "M_10008", "M_10009", "M_10010", "M_10011", "M_10012", "M_10013", "M_10014", "M_20001", "M_20002", "M_20003", "M_20004", "M_20005", "M_20006", "M_20007", "M_30001", "M_30002", "M_30003", "M_30004", "M_30005", "M_30006", "M_30007", "M_30008", "M_30009", "M_30010", "M_30011", "M_30012", "M_30013", "M_30014", "M_30015", "M_30016", "M_30017", "M_30018", "M_30019", "M_30020", "M_30021", "M_30022", "M_30023", "M_30024", "M_40001", "M_40002", "M_40003", "M_40004", "M_40005", "M_40006", "M_40007", "M_40008", "M_40009", "M_40010", "M_40011", "M_40012", "M_40013", "M_40014", "M_40015", "M_40016", "M_40017", "M_40018", "M_40019", "M_40020", "M_40021", "M_40022", "M_50001", "M_50002", "M_50003", "M_50004", "M_50006", "M_50007", "M_50008", "M_50009", "M_50011", "M_50012", "M_50013", "M_50014", "M_50015", "M_50016", "M_50017", "M_70001", "M_70002", "M_70003", "M_70004", "M_70005", "M_70006", "M_90001", "M_90002", "M_90003", "M_90004", "M_90005", "M_10101", "M_10102", "M_10103", "Companion", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CheckModuleStatus {
    private static final /* synthetic */ CheckModuleStatus[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final CheckModuleStatus M_10006;
    public static final CheckModuleStatus M_10007;
    public static final CheckModuleStatus M_10008;
    public static final CheckModuleStatus M_10009;
    public static final CheckModuleStatus M_10010;
    public static final CheckModuleStatus M_10011;
    public static final CheckModuleStatus M_10012;
    public static final CheckModuleStatus M_10013;
    public static final CheckModuleStatus M_10014;
    public static final CheckModuleStatus M_10101;
    public static final CheckModuleStatus M_10102;
    public static final CheckModuleStatus M_10103;
    public static final CheckModuleStatus M_20001;
    public static final CheckModuleStatus M_20002;
    public static final CheckModuleStatus M_20003;
    public static final CheckModuleStatus M_20004;
    public static final CheckModuleStatus M_20005;
    public static final CheckModuleStatus M_20006;
    public static final CheckModuleStatus M_20007;
    public static final CheckModuleStatus M_30001;
    public static final CheckModuleStatus M_30002;
    public static final CheckModuleStatus M_30003;
    public static final CheckModuleStatus M_30004;
    public static final CheckModuleStatus M_30005;
    public static final CheckModuleStatus M_30006;
    public static final CheckModuleStatus M_30007;
    public static final CheckModuleStatus M_30008;
    public static final CheckModuleStatus M_30009;
    public static final CheckModuleStatus M_30010;
    public static final CheckModuleStatus M_30011;
    public static final CheckModuleStatus M_30012;
    public static final CheckModuleStatus M_30013;
    public static final CheckModuleStatus M_30014;
    public static final CheckModuleStatus M_30015;
    public static final CheckModuleStatus M_30016;
    public static final CheckModuleStatus M_30017;
    public static final CheckModuleStatus M_30018;
    public static final CheckModuleStatus M_30019;
    public static final CheckModuleStatus M_30020;
    public static final CheckModuleStatus M_30021;
    public static final CheckModuleStatus M_30022;
    public static final CheckModuleStatus M_30023;
    public static final CheckModuleStatus M_30024;
    public static final CheckModuleStatus M_40001;
    public static final CheckModuleStatus M_40002;
    public static final CheckModuleStatus M_40003;
    public static final CheckModuleStatus M_40004;
    public static final CheckModuleStatus M_40005;
    public static final CheckModuleStatus M_40006;
    public static final CheckModuleStatus M_40007;
    public static final CheckModuleStatus M_40008;
    public static final CheckModuleStatus M_40009;
    public static final CheckModuleStatus M_40010;
    public static final CheckModuleStatus M_40011;
    public static final CheckModuleStatus M_40012;
    public static final CheckModuleStatus M_40013;
    public static final CheckModuleStatus M_40014;
    public static final CheckModuleStatus M_40015;
    public static final CheckModuleStatus M_40016;
    public static final CheckModuleStatus M_40017;
    public static final CheckModuleStatus M_40018;
    public static final CheckModuleStatus M_40019;
    public static final CheckModuleStatus M_40020;
    public static final CheckModuleStatus M_40021;
    public static final CheckModuleStatus M_40022;
    public static final CheckModuleStatus M_50001;
    public static final CheckModuleStatus M_50002;
    public static final CheckModuleStatus M_50003;
    public static final CheckModuleStatus M_50004;
    public static final CheckModuleStatus M_50006;
    public static final CheckModuleStatus M_50007;
    public static final CheckModuleStatus M_50008;
    public static final CheckModuleStatus M_50009;
    public static final CheckModuleStatus M_50011;
    public static final CheckModuleStatus M_50012;
    public static final CheckModuleStatus M_50013;
    public static final CheckModuleStatus M_50014;
    public static final CheckModuleStatus M_50015;
    public static final CheckModuleStatus M_50016;
    public static final CheckModuleStatus M_50017;
    public static final CheckModuleStatus M_70001;
    public static final CheckModuleStatus M_70002;
    public static final CheckModuleStatus M_70003;
    public static final CheckModuleStatus M_70004;
    public static final CheckModuleStatus M_70005;
    public static final CheckModuleStatus M_70006;
    public static final CheckModuleStatus M_90001;
    public static final CheckModuleStatus M_90002;
    public static final CheckModuleStatus M_90003;
    public static final CheckModuleStatus M_90004;
    public static final CheckModuleStatus M_90005;
    private final int checkIndex;
    private final String code;
    private final String desc;
    private final int level;
    private final int module;
    private final String title;
    private final String zhDesc;
    private final String zhTitle;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus$Companion;", "", "()V", "getB2RobotCheckList", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "getRobotCheckList", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final List<CheckModuleStatus> a() {
            CheckModuleStatus[] checkModuleStatusArrValues = CheckModuleStatus.values();
            ArrayList arrayList = new ArrayList();
            int length = checkModuleStatusArrValues.length;
            for (int i = 0; i < length; i++) {
                CheckModuleStatus checkModuleStatus = checkModuleStatusArrValues[i];
                if ((checkModuleStatus == CheckModuleStatus.M_10101 || checkModuleStatus == CheckModuleStatus.M_10102 || checkModuleStatus == CheckModuleStatus.M_10103) ? false : true) {
                    arrayList.add(checkModuleStatus);
                }
            }
            return arrayList;
        }
    }

    private static final /* synthetic */ CheckModuleStatus[] $values() {
        return new CheckModuleStatus[]{M_10006, M_10007, M_10008, M_10009, M_10010, M_10011, M_10012, M_10013, M_10014, M_20001, M_20002, M_20003, M_20004, M_20005, M_20006, M_20007, M_30001, M_30002, M_30003, M_30004, M_30005, M_30006, M_30007, M_30008, M_30009, M_30010, M_30011, M_30012, M_30013, M_30014, M_30015, M_30016, M_30017, M_30018, M_30019, M_30020, M_30021, M_30022, M_30023, M_30024, M_40001, M_40002, M_40003, M_40004, M_40005, M_40006, M_40007, M_40008, M_40009, M_40010, M_40011, M_40012, M_40013, M_40014, M_40015, M_40016, M_40017, M_40018, M_40019, M_40020, M_40021, M_40022, M_50001, M_50002, M_50003, M_50004, M_50006, M_50007, M_50008, M_50009, M_50011, M_50012, M_50013, M_50014, M_50015, M_50016, M_50017, M_70001, M_70002, M_70003, M_70004, M_70005, M_70006, M_90001, M_90002, M_90003, M_90004, M_90005, M_10101, M_10102, M_10103};
    }

    static {
        String strA = k0.a(R.string.signal_m_10006_title);
        r.d(strA, "getString(R.string.signal_m_10006_title)");
        String strA2 = k0.a(R.string.signal_m_10006_desc);
        r.d(strA2, "getString(R.string.signal_m_10006_desc)");
        M_10006 = new CheckModuleStatus("M_10006", 0, "10006", 1, "安全模块离线", strA, "解决方案：请检查安全模块电源和接线，保证采安全模块接线良好、供电正常、运行指示灯闪烁正常；如仍有问题，请联系维护人员", strA2, 0, 5);
        String strA3 = k0.a(R.string.signal_m_10007_title);
        r.d(strA3, "getString(R.string.signal_m_10007_title)");
        String strA4 = k0.a(R.string.signal_m_10007_desc);
        r.d(strA4, "getString(R.string.signal_m_10007_desc)");
        M_10007 = new CheckModuleStatus("M_10007", 1, "10007", 1, "信号采集模块离线", strA3, "解决方案：请检查信号采集板电源和接线，保证采集板接线良好、供电正常、运行指示灯闪烁正常；如仍有问题，请联系维护人员", strA4, 0, 6);
        String strA5 = k0.a(R.string.signal_m_10008_title);
        r.d(strA5, "getString(R.string.signal_m_10008_title)");
        String strA6 = k0.a(R.string.signal_m_10008_desc);
        r.d(strA6, "getString(R.string.signal_m_10008_desc)");
        M_10008 = new CheckModuleStatus("M_10008", 2, "10008", 1, "前超声波离线", strA5, "解决方案：请检查前超声电源和接线，保证前超声接线良好、供电正常、运行指示灯闪烁正常；如仍有问题，请联系维护人员", strA6, 0, 7);
        String strA7 = k0.a(R.string.signal_m_10009_title);
        r.d(strA7, "getString(R.string.signal_m_10009_title)");
        String strA8 = k0.a(R.string.signal_m_10009_desc);
        r.d(strA8, "getString(R.string.signal_m_10009_desc)");
        M_10009 = new CheckModuleStatus("M_10009", 3, "10009", 1, "后超声波离线", strA7, "解决方案：请检查后超声电源和接线，保证后超声接线良好、供电正常、运行指示灯闪烁正常；如仍有问题，请联系维护人员", strA8, 0, 8);
        String strA9 = k0.a(R.string.signal_m_10010_title);
        r.d(strA9, "getString(R.string.signal_m_10010_title)");
        String strA10 = k0.a(R.string.signal_m_10010_desc);
        r.d(strA10, "getString(R.string.signal_m_10010_desc)");
        M_10010 = new CheckModuleStatus("M_10010", 4, "10010", 1, "前左微波离线", strA9, "解决方案：请检查前左微波模块电源和接线，保证前左微波接线良好、供电正常；如仍有问题，请联系维护人员", strA10, 1, 9);
        String strA11 = k0.a(R.string.signal_m_10011_title);
        r.d(strA11, "getString(R.string.signal_m_10011_title)");
        String strA12 = k0.a(R.string.signal_m_10011_desc);
        r.d(strA12, "getString(R.string.signal_m_10011_desc)");
        M_10011 = new CheckModuleStatus("M_10011", 5, "10011", 1, "前右微波离线", strA11, "解决方案：请检查前右微波模块电源和接线，保证前右微波接线良好、供电正常；如仍有问题，请联系维护人员", strA12, 1, 10);
        String strA13 = k0.a(R.string.signal_m_10012_title);
        r.d(strA13, "getString(R.string.signal_m_10012_title)");
        String strA14 = k0.a(R.string.signal_m_10012_desc);
        r.d(strA14, "getString(R.string.signal_m_10012_desc)");
        M_10012 = new CheckModuleStatus("M_10012", 6, "10012", 1, "后微波离线", strA13, "解决方案：请检查后方微波模块电源和接线，保证后微波接线良好、供电正常；如仍有问题，请联系维护人员", strA14, 1, 11);
        String strA15 = k0.a(R.string.signal_m_10013_title);
        r.d(strA15, "getString(R.string.signal_m_10013_title)");
        String strA16 = k0.a(R.string.signal_m_10013_desc);
        r.d(strA16, "getString(R.string.signal_m_10013_desc)");
        M_10013 = new CheckModuleStatus("M_10013", 7, "10013", 1, "油门模块离线", strA15, "解决方案：请检查油门模块电源和接线，保证油门模块接线良好、供电正常、运行指示灯闪烁正常；如仍有问题，请联系维护人员", strA16, 2, 12);
        String strA17 = k0.a(R.string.signal_m_10014_title);
        r.d(strA17, "getString(R.string.signal_m_10014_title)");
        String strA18 = k0.a(R.string.signal_m_10014_desc);
        r.d(strA18, "getString(R.string.signal_m_10014_desc)");
        M_10014 = new CheckModuleStatus("M_10014", 8, "10014", 1, "挡位模块离线", strA17, "解决方案：请检查档位模块电源和接线，保证档位模块接线良好、供电正常、运行指示灯闪烁正常；如仍有问题，请联系维护人员", strA18, 0, 13);
        String strA19 = k0.a(R.string.signal_m_20001_title);
        r.d(strA19, "getString(R.string.signal_m_20001_title)");
        int i = R.string.signal_m_20001_desc;
        String strA20 = k0.a(i);
        r.d(strA20, "getString(R.string.signal_m_20001_desc)");
        M_20001 = new CheckModuleStatus("M_20001", 9, "20001", 2, "与车身CAN1通信故障", strA19, "解决方案：请检查OBD接线，如仍有问题，请联系维护人员", strA20, 0, 0);
        String strA21 = k0.a(R.string.signal_m_20002_title);
        r.d(strA21, "getString(R.string.signal_m_20002_title)");
        String strA22 = k0.a(i);
        r.d(strA22, "getString(R.string.signal_m_20001_desc)");
        M_20002 = new CheckModuleStatus("M_20002", 10, "20002", 2, "与车身CAN2通信故障", strA21, "解决方案：请检查OBD接线，如仍有问题，请联系维护人员", strA22, 0, 1);
        String strA23 = k0.a(R.string.signal_m_20003_title);
        r.d(strA23, "getString(R.string.signal_m_20003_title)");
        String strA24 = k0.a(R.string.signal_m_20003_desc);
        r.d(strA24, "getString(R.string.signal_m_20003_desc)");
        M_20003 = new CheckModuleStatus("M_20003", 11, "20003", 2, "离合行程传感器故障", strA23, "解决方案：请检查离合踏板传感器，如仍有问题，请联系维护人员", strA24, 1, 2);
        String strA25 = k0.a(R.string.signal_m_20004_title);
        r.d(strA25, "getString(R.string.signal_m_20004_title)");
        String strA26 = k0.a(R.string.signal_m_20004_desc);
        r.d(strA26, "getString(R.string.signal_m_20004_desc)");
        M_20004 = new CheckModuleStatus("M_20004", 12, "20004", 2, "刹车行程传感器故障", strA25, "解决方案：请检查刹车踏板传感器，如仍有问题，请联系维护人员", strA26, 1, 3);
        String strA27 = k0.a(R.string.signal_m_20005_title);
        r.d(strA27, "getString(R.string.signal_m_20005_title)");
        String strA28 = k0.a(R.string.signal_m_20005_desc);
        r.d(strA28, "getString(R.string.signal_m_20005_desc)");
        M_20005 = new CheckModuleStatus("M_20005", 13, "20005", 2, "方向盘行程传感器故障", strA27, "解决方案：请检查方向盘传感器，如仍有问题，请联系维护人员", strA28, 1, 4);
        String strA29 = k0.a(R.string.signal_m_20006_title);
        r.d(strA29, "getString(R.string.signal_m_20006_title)");
        String strA30 = k0.a(R.string.signal_m_20006_desc);
        r.d(strA30, "getString(R.string.signal_m_20006_desc)");
        M_20006 = new CheckModuleStatus("M_20006", 14, "20006", 2, "油门行程传感器故障", strA29, "解决方案：请检查油门传感器，如仍有问题，请联系维护人员", strA30, 2, 5);
        String strA31 = k0.a(R.string.signal_m_20007_title);
        r.d(strA31, "getString(R.string.signal_m_20007_title)");
        String strA32 = k0.a(R.string.signal_m_20007_desc);
        r.d(strA32, "getString(R.string.signal_m_20007_desc)");
        M_20007 = new CheckModuleStatus("M_20007", 15, "20007", 2, "熄火异常", strA31, "解决方案：请检查熄火线接线，如仍有问题，请联系维护人员", strA32, 3, 6);
        String strA33 = k0.a(R.string.signal_m_30001_title);
        r.d(strA33, "getString(R.string.signal_m_30001_title)");
        int i2 = R.string.signal_m_3000x_desc;
        String strA34 = k0.a(i2);
        r.d(strA34, "getString(R.string.signal_m_3000x_desc)");
        M_30001 = new CheckModuleStatus("M_30001", 16, "30001", 3, "前超声探头1未插入", strA33, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA34, 2, 0);
        String strA35 = k0.a(R.string.signal_m_30002_title);
        r.d(strA35, "getString(R.string.signal_m_30002_title)");
        String strA36 = k0.a(i2);
        r.d(strA36, "getString(R.string.signal_m_3000x_desc)");
        M_30002 = new CheckModuleStatus("M_30002", 17, "30002", 3, "前超声探头2未插入", strA35, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA36, 2, 1);
        String strA37 = k0.a(R.string.signal_m_30003_title);
        r.d(strA37, "getString(R.string.signal_m_30003_title)");
        String strA38 = k0.a(i2);
        r.d(strA38, "getString(R.string.signal_m_3000x_desc)");
        M_30003 = new CheckModuleStatus("M_30003", 18, "30003", 3, "前超声探头3未插入", strA37, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA38, 2, 2);
        String strA39 = k0.a(R.string.signal_m_30004_title);
        r.d(strA39, "getString(R.string.signal_m_30004_title)");
        String strA40 = k0.a(i2);
        r.d(strA40, "getString(R.string.signal_m_3000x_desc)");
        M_30004 = new CheckModuleStatus("M_30004", 19, "30004", 3, "前超声探头4未插入", strA39, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA40, 2, 3);
        String strA41 = k0.a(R.string.signal_m_30005_title);
        r.d(strA41, "getString(R.string.signal_m_30005_title)");
        String strA42 = k0.a(i2);
        r.d(strA42, "getString(R.string.signal_m_3000x_desc)");
        M_30005 = new CheckModuleStatus("M_30005", 20, "30005", 3, "前超声探头5未插入", strA41, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA42, 2, 4);
        String strA43 = k0.a(R.string.signal_m_30006_title);
        r.d(strA43, "getString(R.string.signal_m_30006_title)");
        String strA44 = k0.a(i2);
        r.d(strA44, "getString(R.string.signal_m_3000x_desc)");
        M_30006 = new CheckModuleStatus("M_30006", 21, "30006", 3, "前超声探头6未插入", strA43, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA44, 2, 5);
        String strA45 = k0.a(R.string.signal_m_30007_title);
        r.d(strA45, "getString(R.string.signal_m_30007_title)");
        String strA46 = k0.a(i2);
        r.d(strA46, "getString(R.string.signal_m_3000x_desc)");
        M_30007 = new CheckModuleStatus("M_30007", 22, "30007", 3, "前超声探头7未插入", strA45, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA46, 2, 6);
        String strA47 = k0.a(R.string.signal_m_30008_title);
        r.d(strA47, "getString(R.string.signal_m_30008_title)");
        String strA48 = k0.a(i2);
        r.d(strA48, "getString(R.string.signal_m_3000x_desc)");
        M_30008 = new CheckModuleStatus("M_30008", 23, "30008", 3, "前超声探头8未插入", strA47, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA48, 2, 7);
        String strA49 = k0.a(R.string.signal_m_30009_title);
        r.d(strA49, "getString(R.string.signal_m_30009_title)");
        String strA50 = k0.a(i2);
        r.d(strA50, "getString(R.string.signal_m_3000x_desc)");
        M_30009 = new CheckModuleStatus("M_30009", 24, "30009", 3, "前超声探头9未插入", strA49, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA50, 2, 8);
        String strA51 = k0.a(R.string.signal_m_30010_title);
        r.d(strA51, "getString(R.string.signal_m_30010_title)");
        String strA52 = k0.a(i2);
        r.d(strA52, "getString(R.string.signal_m_3000x_desc)");
        M_30010 = new CheckModuleStatus("M_30010", 25, "30010", 3, "前超声探头10未插入", strA51, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA52, 2, 9);
        String strA53 = k0.a(R.string.signal_m_30011_title);
        r.d(strA53, "getString(R.string.signal_m_30011_title)");
        String strA54 = k0.a(i2);
        r.d(strA54, "getString(R.string.signal_m_3000x_desc)");
        M_30011 = new CheckModuleStatus("M_30011", 26, "30011", 3, "前超声探头11未插入", strA53, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA54, 2, 10);
        String strA55 = k0.a(R.string.signal_m_30012_title);
        r.d(strA55, "getString(R.string.signal_m_30012_title)");
        String strA56 = k0.a(i2);
        r.d(strA56, "getString(R.string.signal_m_3000x_desc)");
        M_30012 = new CheckModuleStatus("M_30012", 27, "30012", 3, "前超声探头12未插入", strA55, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA56, 2, 11);
        String strA57 = k0.a(R.string.signal_m_30013_title);
        r.d(strA57, "getString(R.string.signal_m_30013_title)");
        String strA58 = k0.a(i2);
        r.d(strA58, "getString(R.string.signal_m_3000x_desc)");
        M_30013 = new CheckModuleStatus("M_30013", 28, "30013", 3, "前超声探头1无回波", strA57, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA58, 2, 12);
        String strA59 = k0.a(R.string.signal_m_30014_title);
        r.d(strA59, "getString(R.string.signal_m_30014_title)");
        String strA60 = k0.a(i2);
        r.d(strA60, "getString(R.string.signal_m_3000x_desc)");
        M_30014 = new CheckModuleStatus("M_30014", 29, "30014", 3, "前超声探头2无回波", strA59, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA60, 2, 13);
        String strA61 = k0.a(R.string.signal_m_30015_title);
        r.d(strA61, "getString(R.string.signal_m_30015_title)");
        String strA62 = k0.a(i2);
        r.d(strA62, "getString(R.string.signal_m_3000x_desc)");
        M_30015 = new CheckModuleStatus("M_30015", 30, "30015", 3, "前超声探头3无回波", strA61, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA62, 2, 14);
        String strA63 = k0.a(R.string.signal_m_30016_title);
        r.d(strA63, "getString(R.string.signal_m_30016_title)");
        String strA64 = k0.a(i2);
        r.d(strA64, "getString(R.string.signal_m_3000x_desc)");
        M_30016 = new CheckModuleStatus("M_30016", 31, "30016", 3, "前超声探头4无回波", strA63, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA64, 2, 15);
        String strA65 = k0.a(R.string.signal_m_30017_title);
        r.d(strA65, "getString(R.string.signal_m_30017_title)");
        String strA66 = k0.a(i2);
        r.d(strA66, "getString(R.string.signal_m_3000x_desc)");
        M_30017 = new CheckModuleStatus("M_30017", 32, "30017", 3, "前超声探头5无回波", strA65, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA66, 2, 16);
        String strA67 = k0.a(R.string.signal_m_30018_title);
        r.d(strA67, "getString(R.string.signal_m_30018_title)");
        String strA68 = k0.a(i2);
        r.d(strA68, "getString(R.string.signal_m_3000x_desc)");
        M_30018 = new CheckModuleStatus("M_30018", 33, "30018", 3, "前超声探头6无回波", strA67, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA68, 2, 17);
        String strA69 = k0.a(R.string.signal_m_30019_title);
        r.d(strA69, "getString(R.string.signal_m_30019_title)");
        String strA70 = k0.a(i2);
        r.d(strA70, "getString(R.string.signal_m_3000x_desc)");
        M_30019 = new CheckModuleStatus("M_30019", 34, "30019", 3, "前超声探头7无回波", strA69, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA70, 2, 18);
        String strA71 = k0.a(R.string.signal_m_30020_title);
        r.d(strA71, "getString(R.string.signal_m_30020_title)");
        String strA72 = k0.a(i2);
        r.d(strA72, "getString(R.string.signal_m_3000x_desc)");
        M_30020 = new CheckModuleStatus("M_30020", 35, "30020", 3, "前超声探头8无回波", strA71, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA72, 2, 19);
        String strA73 = k0.a(R.string.signal_m_30021_title);
        r.d(strA73, "getString(R.string.signal_m_30021_title)");
        String strA74 = k0.a(i2);
        r.d(strA74, "getString(R.string.signal_m_3000x_desc)");
        M_30021 = new CheckModuleStatus("M_30021", 36, "30021", 3, "前超声探头9无回波", strA73, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA74, 2, 20);
        String strA75 = k0.a(R.string.signal_m_30022_title);
        r.d(strA75, "getString(R.string.signal_m_30022_title)");
        String strA76 = k0.a(i2);
        r.d(strA76, "getString(R.string.signal_m_3000x_desc)");
        M_30022 = new CheckModuleStatus("M_30022", 37, "30022", 3, "前超声探头10无回波", strA75, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA76, 2, 21);
        String strA77 = k0.a(R.string.signal_m_30023_title);
        r.d(strA77, "getString(R.string.signal_m_30023_title)");
        String strA78 = k0.a(i2);
        r.d(strA78, "getString(R.string.signal_m_3000x_desc)");
        M_30023 = new CheckModuleStatus("M_30023", 38, "30023", 3, "前超声探头11无回波", strA77, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA78, 2, 22);
        String strA79 = k0.a(R.string.signal_m_30024_title);
        r.d(strA79, "getString(R.string.signal_m_30024_title)");
        String strA80 = k0.a(i2);
        r.d(strA80, "getString(R.string.signal_m_3000x_desc)");
        M_30024 = new CheckModuleStatus("M_30024", 39, "30024", 3, "前超声探头12无回波", strA79, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA80, 2, 23);
        String strA81 = k0.a(R.string.signal_m_40001_title);
        r.d(strA81, "getString(R.string.signal_m_40001_title)");
        String strA82 = k0.a(i2);
        r.d(strA82, "getString(R.string.signal_m_3000x_desc)");
        M_40001 = new CheckModuleStatus("M_40001", 40, "40001", 4, "后超声探头1未插入", strA81, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA82, 2, 0);
        String strA83 = k0.a(R.string.signal_m_40002_title);
        r.d(strA83, "getString(R.string.signal_m_40002_title)");
        int i3 = R.string.signal_m_3000x_desc;
        String strA84 = k0.a(i3);
        r.d(strA84, "getString(R.string.signal_m_3000x_desc)");
        M_40002 = new CheckModuleStatus("M_40002", 41, "40002", 4, "后超声探头2未插入", strA83, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA84, 2, 1);
        String strA85 = k0.a(R.string.signal_m_40003_title);
        r.d(strA85, "getString(R.string.signal_m_40003_title)");
        String strA86 = k0.a(i3);
        r.d(strA86, "getString(R.string.signal_m_3000x_desc)");
        M_40003 = new CheckModuleStatus("M_40003", 42, "40003", 4, "后超声探头3未插入", strA85, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA86, 2, 2);
        String strA87 = k0.a(R.string.signal_m_40004_title);
        r.d(strA87, "getString(R.string.signal_m_40004_title)");
        String strA88 = k0.a(i3);
        r.d(strA88, "getString(R.string.signal_m_3000x_desc)");
        M_40004 = new CheckModuleStatus("M_40004", 43, "40004", 4, "后超声探头4未插入", strA87, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA88, 2, 3);
        String strA89 = k0.a(R.string.signal_m_40005_title);
        r.d(strA89, "getString(R.string.signal_m_40005_title)");
        String strA90 = k0.a(i3);
        r.d(strA90, "getString(R.string.signal_m_3000x_desc)");
        M_40005 = new CheckModuleStatus("M_40005", 44, "40005", 4, "后超声探头5未插入", strA89, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA90, 2, 4);
        String strA91 = k0.a(R.string.signal_m_40006_title);
        r.d(strA91, "getString(R.string.signal_m_40006_title)");
        String strA92 = k0.a(i3);
        r.d(strA92, "getString(R.string.signal_m_3000x_desc)");
        M_40006 = new CheckModuleStatus("M_40006", 45, "40006", 4, "后超声探头6未插入", strA91, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA92, 2, 5);
        String strA93 = k0.a(R.string.signal_m_40007_title);
        r.d(strA93, "getString(R.string.signal_m_40007_title)");
        String strA94 = k0.a(i3);
        r.d(strA94, "getString(R.string.signal_m_3000x_desc)");
        M_40007 = new CheckModuleStatus("M_40007", 46, "40007", 4, "后超声探头7未插入", strA93, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA94, 2, 6);
        String strA95 = k0.a(R.string.signal_m_40008_title);
        r.d(strA95, "getString(R.string.signal_m_40008_title)");
        String strA96 = k0.a(i3);
        r.d(strA96, "getString(R.string.signal_m_3000x_desc)");
        M_40008 = new CheckModuleStatus("M_40008", 47, "40008", 4, "后超声探头8未插入", strA95, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA96, 2, 7);
        String strA97 = k0.a(R.string.signal_m_40009_title);
        r.d(strA97, "getString(R.string.signal_m_40009_title)");
        String strA98 = k0.a(i3);
        r.d(strA98, "getString(R.string.signal_m_3000x_desc)");
        M_40009 = new CheckModuleStatus("M_40009", 48, "40009", 4, "后超声探头9未插入", strA97, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA98, 2, 8);
        String strA99 = k0.a(R.string.signal_m_40010_title);
        r.d(strA99, "getString(R.string.signal_m_40010_title)");
        String strA100 = k0.a(i3);
        r.d(strA100, "getString(R.string.signal_m_3000x_desc)");
        M_40010 = new CheckModuleStatus("M_40010", 49, "40010", 4, "后超声探头10未插入", strA99, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA100, 2, 9);
        String strA101 = k0.a(R.string.signal_m_40011_title);
        r.d(strA101, "getString(R.string.signal_m_40011_title)");
        String strA102 = k0.a(i3);
        r.d(strA102, "getString(R.string.signal_m_3000x_desc)");
        M_40011 = new CheckModuleStatus("M_40011", 50, "40011", 4, "后超声探头11未插入", strA101, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA102, 2, 10);
        String strA103 = k0.a(R.string.signal_m_40012_title);
        r.d(strA103, "getString(R.string.signal_m_40012_title)");
        String strA104 = k0.a(i3);
        r.d(strA104, "getString(R.string.signal_m_3000x_desc)");
        M_40012 = new CheckModuleStatus("M_40012", 51, "40012", 4, "后超声探头12未插入", strA103, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA104, 2, 11);
        String strA105 = k0.a(R.string.signal_m_40013_title);
        r.d(strA105, "getString(R.string.signal_m_40013_title)");
        String strA106 = k0.a(i3);
        r.d(strA106, "getString(R.string.signal_m_3000x_desc)");
        M_40013 = new CheckModuleStatus("M_40013", 52, "40013", 4, "后超声探头1无回波", strA105, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA106, 2, 12);
        String strA107 = k0.a(R.string.signal_m_40014_title);
        r.d(strA107, "getString(R.string.signal_m_40014_title)");
        String strA108 = k0.a(i3);
        r.d(strA108, "getString(R.string.signal_m_3000x_desc)");
        M_40014 = new CheckModuleStatus("M_40014", 53, "40014", 4, "后超声探头2无回波", strA107, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA108, 2, 13);
        String strA109 = k0.a(R.string.signal_m_40015_title);
        r.d(strA109, "getString(R.string.signal_m_40015_title)");
        String strA110 = k0.a(i3);
        r.d(strA110, "getString(R.string.signal_m_3000x_desc)");
        M_40015 = new CheckModuleStatus("M_40015", 54, "40015", 4, "后超声探头3无回波", strA109, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA110, 2, 14);
        String strA111 = k0.a(R.string.signal_m_40016_title);
        r.d(strA111, "getString(R.string.signal_m_40016_title)");
        String strA112 = k0.a(i3);
        r.d(strA112, "getString(R.string.signal_m_3000x_desc)");
        M_40016 = new CheckModuleStatus("M_40016", 55, "40016", 4, "后超声探头4无回波", strA111, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA112, 2, 15);
        String strA113 = k0.a(R.string.signal_m_40017_title);
        r.d(strA113, "getString(R.string.signal_m_40017_title)");
        String strA114 = k0.a(i3);
        r.d(strA114, "getString(R.string.signal_m_3000x_desc)");
        M_40017 = new CheckModuleStatus("M_40017", 56, "40017", 4, "后超声探头5无回波", strA113, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA114, 2, 16);
        String strA115 = k0.a(R.string.signal_m_40018_title);
        r.d(strA115, "getString(R.string.signal_m_40018_title)");
        String strA116 = k0.a(i3);
        r.d(strA116, "getString(R.string.signal_m_3000x_desc)");
        M_40018 = new CheckModuleStatus("M_40018", 57, "40018", 4, "后超声探头6无回波", strA115, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA116, 2, 17);
        String strA117 = k0.a(R.string.signal_m_40019_title);
        r.d(strA117, "getString(R.string.signal_m_40019_title)");
        String strA118 = k0.a(i3);
        r.d(strA118, "getString(R.string.signal_m_3000x_desc)");
        M_40019 = new CheckModuleStatus("M_40019", 58, "40019", 4, "后超声探头7无回波", strA117, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA118, 2, 18);
        String strA119 = k0.a(R.string.signal_m_40020_title);
        r.d(strA119, "getString(R.string.signal_m_40020_title)");
        String strA120 = k0.a(i3);
        r.d(strA120, "getString(R.string.signal_m_3000x_desc)");
        M_40020 = new CheckModuleStatus("M_40020", 59, "40020", 4, "后超声探头8无回波", strA119, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA120, 2, 19);
        String strA121 = k0.a(R.string.signal_m_40021_title);
        r.d(strA121, "getString(R.string.signal_m_40021_title)");
        String strA122 = k0.a(i3);
        r.d(strA122, "getString(R.string.signal_m_3000x_desc)");
        M_40021 = new CheckModuleStatus("M_40021", 60, "40021", 4, "后超声探头9无回波", strA121, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA122, 2, 20);
        String strA123 = k0.a(R.string.signal_m_40022_title);
        r.d(strA123, "getString(R.string.signal_m_40022_title)");
        String strA124 = k0.a(i3);
        r.d(strA124, "getString(R.string.signal_m_3000x_desc)");
        M_40022 = new CheckModuleStatus("M_40022", 61, "40022", 4, "后超声探头10无回波", strA123, "解决方案：请检查探头和连接线是否松脱，如仍有问题，请联系维护人员", strA124, 2, 21);
        String strA125 = k0.a(R.string.signal_m_50001_title);
        r.d(strA125, "getString(R.string.signal_m_50001_title)");
        int i4 = R.string.signal_m_5000x_battery_desc;
        String strA126 = k0.a(i4);
        r.d(strA126, "getString(R.string.signal_m_5000x_battery_desc)");
        M_50001 = new CheckModuleStatus("M_50001", 62, "50001", 5, "离合欠压", strA125, "解决方案：请检查蓄电池电压，如仍有问题，请联系维护人员", strA126, 0, 0);
        String strA127 = k0.a(R.string.signal_m_50002_title);
        r.d(strA127, "getString(R.string.signal_m_50002_title)");
        String strA128 = k0.a(i4);
        r.d(strA128, "getString(R.string.signal_m_5000x_battery_desc)");
        M_50002 = new CheckModuleStatus("M_50002", 63, "50002", 5, "离合过压", strA127, "解决方案：请检查蓄电池电压，如仍有问题，请联系维护人员", strA128, 0, 1);
        String strA129 = k0.a(R.string.signal_m_50003_title);
        r.d(strA129, "getString(R.string.signal_m_50003_title)");
        int i5 = R.string.signal_m_5000x_clutch_desc;
        String strA130 = k0.a(i5);
        r.d(strA130, "getString(R.string.signal_m_5000x_clutch_desc)");
        M_50003 = new CheckModuleStatus("M_50003", 64, "50003", 5, "离合堵转", strA129, "解决方案：请检查离合机械结构是否有异物，如仍有问题，请联系维护人员", strA130, 0, 2);
        String strA131 = k0.a(R.string.signal_m_50004_title);
        r.d(strA131, "getString(R.string.signal_m_50004_title)");
        String strA132 = k0.a(i5);
        r.d(strA132, "getString(R.string.signal_m_5000x_clutch_desc)");
        M_50004 = new CheckModuleStatus("M_50004", 65, "50004", 5, "离合过流", strA131, "解决方案：请检查离合机械结构是否有异物，如仍有问题，请联系维护人员", strA132, 0, 3);
        String strA133 = k0.a(R.string.signal_m_50006_title);
        r.d(strA133, "getString(R.string.signal_m_50006_title)");
        String strA134 = k0.a(i4);
        r.d(strA134, "getString(R.string.signal_m_5000x_battery_desc)");
        M_50006 = new CheckModuleStatus("M_50006", 66, "50006", 5, "刹车欠压", strA133, "解决方案：请检查蓄电池电压，如仍有问题，请联系维护人员", strA134, 0, 5);
        String strA135 = k0.a(R.string.signal_m_50007_title);
        r.d(strA135, "getString(R.string.signal_m_50007_title)");
        String strA136 = k0.a(i4);
        r.d(strA136, "getString(R.string.signal_m_5000x_battery_desc)");
        M_50007 = new CheckModuleStatus("M_50007", 67, "50007", 5, "刹车过压", strA135, "解决方案：请检查蓄电池电压，如仍有问题，请联系维护人员", strA136, 0, 6);
        String strA137 = k0.a(R.string.signal_m_50008_title);
        r.d(strA137, "getString(R.string.signal_m_50008_title)");
        String strA138 = k0.a(R.string.signal_m_50008_desc);
        r.d(strA138, "getString(R.string.signal_m_50008_desc)");
        M_50008 = new CheckModuleStatus("M_50008", 68, "50008", 5, "刹车堵转", strA137, "解决方案：请检查刹车机械结构是否有异物，如仍有问题，请联系维护人员", strA138, 0, 7);
        String strA139 = k0.a(R.string.signal_m_50009_title);
        r.d(strA139, "getString(R.string.signal_m_50009_title)");
        String strA140 = k0.a(i5);
        r.d(strA140, "getString(R.string.signal_m_5000x_clutch_desc)");
        M_50009 = new CheckModuleStatus("M_50009", 69, "50009", 5, "刹车过流", strA139, "解决方案：请检查离合机械结构是否有异物，如仍有问题，请联系维护人员", strA140, 0, 8);
        String strA141 = k0.a(R.string.signal_m_50011_title);
        r.d(strA141, "getString(R.string.signal_m_50011_title)");
        String strA142 = k0.a(R.string.signal_m_50011_desc);
        r.d(strA142, "getString(R.string.signal_m_50011_desc)");
        M_50011 = new CheckModuleStatus("M_50011", 70, "50011", 5, "模块过热", strA141, "解决方案：请检查安全模块散热，确保通风散热良好，如仍有问题，请联系维护人员", strA142, 3, 10);
        String strA143 = k0.a(R.string.signal_m_50012_title);
        r.d(strA143, "getString(R.string.signal_m_50012_title)");
        String strA144 = k0.a(R.string.signal_m_50012_desc);
        r.d(strA144, "getString(R.string.signal_m_50012_desc)");
        M_50012 = new CheckModuleStatus("M_50012", 71, "50012", 5, "离合编码器故障", strA143, "解决方案：请检查离合编码器线是否松脱，如仍有问题，请联系维护人员", strA144, 0, 11);
        String strA145 = k0.a(R.string.signal_m_50013_title);
        r.d(strA145, "getString(R.string.signal_m_50013_title)");
        String strA146 = k0.a(R.string.signal_m_50013_desc);
        r.d(strA146, "getString(R.string.signal_m_50013_desc)");
        M_50013 = new CheckModuleStatus("M_50013", 72, "50013", 5, "刹车编码器故障", strA145, "解决方案：请检查刹车编码器线是否松脱，如仍有问题，请联系维护人员", strA146, 0, 12);
        String strA147 = k0.a(R.string.signal_m_50014_title);
        r.d(strA147, "getString(R.string.signal_m_50014_title)");
        String strA148 = k0.a(R.string.signal_m_50014_desc);
        r.d(strA148, "getString(R.string.signal_m_50014_desc)");
        M_50014 = new CheckModuleStatus("M_50014", 73, "50014", 5, "CAN通信异常", strA147, "解决方案：请检查CAN线是否松脱，如还有问题，请联系维护人员", strA148, 1, 13);
        String strA149 = k0.a(R.string.signal_m_50015_title);
        r.d(strA149, "getString(R.string.signal_m_50015_title)");
        String strA150 = k0.a(R.string.signal_m_50015_desc);
        r.d(strA150, "getString(R.string.signal_m_50015_desc)");
        M_50015 = new CheckModuleStatus("M_50015", 74, "50015", 5, "刹车超时", strA149, "解决方案：请检查副刹车结构安装，如仍有问题，请联系维护人员", strA150, 0, 14);
        String strA151 = k0.a(R.string.signal_m_50016_title);
        r.d(strA151, "getString(R.string.signal_m_50016_title)");
        String strA152 = k0.a(R.string.signal_m_50016_desc);
        r.d(strA152, "getString(R.string.signal_m_50016_desc)");
        M_50016 = new CheckModuleStatus("M_50016", 75, "50016", 5, "离合超时", strA151, "解决方案：请检查离合执行结构安装，如仍有问题，请联系维护人员", strA152, 0, 15);
        String strA153 = k0.a(R.string.signal_m_50017_title);
        r.d(strA153, "getString(R.string.signal_m_50017_title)");
        String strA154 = k0.a(R.string.signal_m_50017_desc);
        r.d(strA154, "getString(R.string.signal_m_50017_desc)");
        M_50017 = new CheckModuleStatus("M_50017", 76, "50017", 5, "刹车力度自检异常", strA153, "解决方案：需要校正刹车结构，如仍有问题，请联系维护人员", strA154, 0, 16);
        String strA155 = k0.a(R.string.signal_m_70001_title);
        r.d(strA155, "getString(R.string.signal_m_70001_title)");
        String strA156 = k0.a(R.string.signal_m_70001_desc);
        r.d(strA156, "getString(R.string.signal_m_70001_desc)");
        M_70001 = new CheckModuleStatus("M_70001", 77, "70001", 7, "前置摄像头异常", strA155, "解决方案：请检查前置摄像头与AI模块连接，如仍有问题，请联系维护人员", strA156, 3, 0);
        String strA157 = k0.a(R.string.signal_m_70002_title);
        r.d(strA157, "getString(R.string.signal_m_70002_title)");
        String strA158 = k0.a(R.string.signal_m_70002_desc);
        r.d(strA158, "getString(R.string.signal_m_70002_desc)");
        M_70002 = new CheckModuleStatus("M_70002", 78, "70002", 7, "后置摄像头异常", strA157, "解决方案：请检查后置摄像头与AI模块连接，如仍有问题，请联系维护人员", strA158, 3, 1);
        String strA159 = k0.a(R.string.signal_m_70003_title);
        r.d(strA159, "getString(R.string.signal_m_70003_title)");
        String strA160 = k0.a(R.string.signal_m_70003_desc);
        r.d(strA160, "getString(R.string.signal_m_70003_desc)");
        M_70003 = new CheckModuleStatus("M_70003", 79, "70003", 7, "CPU温度过高", strA159, "解决方案：请检查AI模块散热，如仍有问题，请联系维护人员", strA160, 3, 2);
        String strA161 = k0.a(R.string.signal_m_70004_title);
        r.d(strA161, "getString(R.string.signal_m_70004_title)");
        String strA162 = k0.a(R.string.signal_m_70004_desc);
        r.d(strA162, "getString(R.string.signal_m_70004_desc)");
        M_70004 = new CheckModuleStatus("M_70004", 80, "70004", 7, "流媒体服务异常", strA161, "解决方案：监控到流媒体服务异常，正在重启所有服务，请稍后", strA162, 3, 3);
        String strA163 = k0.a(R.string.signal_m_70005_title);
        r.d(strA163, "getString(R.string.signal_m_70005_title)");
        String strA164 = k0.a(R.string.signal_m_70005_desc);
        r.d(strA164, "getString(R.string.signal_m_70005_desc)");
        M_70005 = new CheckModuleStatus("M_70005", 81, "70005", 7, "前置人脸摄像头角度偏离", strA163, "解决方案：请调整前置摄像头角度，如仍有问题，请联系维护人员", strA164, 3, 4);
        String strA165 = k0.a(R.string.signal_m_70006_title);
        r.d(strA165, "getString(R.string.signal_m_70006_title)");
        String strA166 = k0.a(R.string.signal_m_70006_desc);
        r.d(strA166, "getString(R.string.signal_m_70006_desc)");
        M_70006 = new CheckModuleStatus("M_70006", 82, "70006", 7, "后置手势检测摄像头角度偏离", strA165, "解决方案：请调整后置摄像头角度，如仍有问题，请联系维护人员", strA166, 3, 5);
        String strA167 = k0.a(R.string.signal_m_90001_title);
        r.d(strA167, "getString(R.string.signal_m_90001_title)");
        String strA168 = k0.a(R.string.signal_m_90001_desc);
        r.d(strA168, "getString(R.string.signal_m_90001_desc)");
        M_90001 = new CheckModuleStatus("M_90001", 83, "90001", 9, "挡位数据不稳定", strA167, "解决方案：保持档杆静止不动，重新上电，如仍有问题，请联系维护人员。", strA168, 3, 0);
        String strA169 = k0.a(R.string.signal_m_90002_title);
        r.d(strA169, "getString(R.string.signal_m_90002_title)");
        String strA170 = k0.a(R.string.signal_m_90002_desc);
        r.d(strA170, "getString(R.string.signal_m_90002_desc)");
        M_90002 = new CheckModuleStatus("M_90002", 84, "90002", 9, "固件等级太低", strA169, "解决方案：对挡位进行固件升级，如仍有问题，请联系维护人员。", strA170, 3, 1);
        String strA171 = k0.a(R.string.signal_m_90003_title);
        r.d(strA171, "getString(R.string.signal_m_90003_title)");
        String strA172 = k0.a(R.string.signal_m_90003_desc);
        r.d(strA172, "getString(R.string.signal_m_90003_desc)");
        M_90003 = new CheckModuleStatus("M_90003", 85, "90003", 9, "挡杆陀螺无数据", strA171, "解决方案：请检查档杆到挡位盒的接线，如仍有问题，请联系维护人员。", strA172, 3, 2);
        String strA173 = k0.a(R.string.signal_m_90004_title);
        r.d(strA173, "getString(R.string.signal_m_90004_title)");
        String strA174 = k0.a(R.string.signal_m_90004_desc);
        r.d(strA174, "getString(R.string.signal_m_90004_desc)");
        M_90004 = new CheckModuleStatus("M_90004", 86, "90004", 9, "水平陀螺无数据", strA173, "解决方案：重新上电，如仍有问题，请联系维护人员。", strA174, 3, 3);
        String strA175 = k0.a(R.string.signal_m_90005_title);
        r.d(strA175, "getString(R.string.signal_m_90005_title)");
        String strA176 = k0.a(R.string.signal_m_90005_desc);
        r.d(strA176, "getString(R.string.signal_m_90005_desc)");
        M_90005 = new CheckModuleStatus("M_90005", 87, "90005", 9, "水平和挡杆陀螺无数据", strA175, "解决方案：请检查档杆到挡位盒的接线，重新上电，如仍有问题，请联系维护人员。", strA176, 3, 4);
        String strA177 = k0.a(R.string.signal_m_10101_title);
        r.d(strA177, "getString(R.string.signal_m_10101_title)");
        String strA178 = k0.a(R.string.signal_m_10101_dec);
        r.d(strA178, "getString(R.string.signal_m_10101_dec)");
        M_10101 = new CheckModuleStatus("M_10101", 88, "10101", 10, "前微波离线", strA177, "解决方案：请检查前方微波模块电源和接线，保证前微波接线良好、供电正常；如仍有问题，请联系维护人员", strA178, 0, 0);
        String strA179 = k0.a(R.string.signal_m_10012_title);
        r.d(strA179, "getString(R.string.signal_m_10012_title)");
        String strA180 = k0.a(R.string.signal_m_10012_desc);
        r.d(strA180, "getString(R.string.signal_m_10012_desc)");
        M_10102 = new CheckModuleStatus("M_10102", 89, "10102", 10, "后微波离线", strA179, "解决方案：请检查后方微波模块电源和接线，保证后微波接线良好、供电正常；如仍有问题，请联系维护人员", strA180, 0, 1);
        String strA181 = k0.a(R.string.signal_m_20005_title);
        r.d(strA181, "getString(R.string.signal_m_20005_title)");
        String strA182 = k0.a(R.string.signal_m_20005_desc);
        r.d(strA182, "getString(R.string.signal_m_20005_desc)");
        M_10103 = new CheckModuleStatus("M_10103", 90, "10103", 10, "方向盘行程传感器故障", strA181, "解决方案：请检查方向盘传感器，如仍有问题，请联系维护人员", strA182, 1, 2);
        $VALUES = $values();
        INSTANCE = new Companion(null);
    }

    private CheckModuleStatus(String str, int i, String str2, int i2, String str3, String str4, String str5, String str6, int i3, int i4) {
        super(str, i);
        this.code = str2;
        this.module = i2;
        this.zhTitle = str3;
        this.title = str4;
        this.zhDesc = str5;
        this.desc = str6;
        this.level = i3;
        this.checkIndex = i4;
    }

    public static CheckModuleStatus valueOf(String str) {
        return (CheckModuleStatus) Enum.valueOf(CheckModuleStatus.class, str);
    }

    public static CheckModuleStatus[] values() {
        return (CheckModuleStatus[]) $VALUES.clone();
    }

    public final boolean checkPass(int value) {
        return cn.mucang.android.jiakaoyi.signal.d.j.a.c(value, this.checkIndex);
    }

    public final int getCheckInt(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        int i = this.module;
        if (i == 7) {
            return signalGetter.a().f5210e;
        }
        if (i == 10) {
            return signalGetter.d().O;
        }
        if (signalGetter.d().G == null) {
            return 0;
        }
        ReceiveSenorInfo receiveSenorInfo = signalGetter.d().G;
        int i2 = this.module;
        if (i2 == 2) {
            return receiveSenorInfo.collectBoardState;
        }
        if (i2 == 3) {
            return receiveSenorInfo.ultrasonic1State;
        }
        if (i2 == 4) {
            return receiveSenorInfo.ultrasonic2State;
        }
        if (i2 == 5) {
            return receiveSenorInfo.safeBoardState;
        }
        if (i2 != 6) {
            return i2 != 9 ? receiveSenorInfo.mainBoardState : receiveSenorInfo.gearBoardState;
        }
        return receiveSenorInfo.throttleBoardState;
    }

    public final String getCode() {
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
