package cn.mucang.android.jiakaoyi.teachingk2.form;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DaoKu12' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class UnityShowLine {
    private static final /* synthetic */ UnityShowLine[] $VALUES;
    public static final UnityShowLine CeFang12;
    public static final UnityShowLine CeFang18;
    public static final UnityShowLine CeFang23;
    public static final UnityShowLine CeFang34;
    public static final UnityShowLine CeFang36;
    public static final UnityShowLine CeFang45;
    public static final UnityShowLine CeFang56;
    public static final UnityShowLine CeFang67;
    public static final UnityShowLine CeFang78;
    public static final UnityShowLine DaoKu12;
    public static final UnityShowLine DaoKu18;
    public static final UnityShowLine DaoKu23;
    public static final UnityShowLine DaoKu34;
    public static final UnityShowLine DaoKu36;
    public static final UnityShowLine DaoKu45;
    public static final UnityShowLine DaoKu56;
    public static final UnityShowLine DaoKu67;
    public static final UnityShowLine DaoKu78;
    public static final UnityShowLine LLine;
    public static final UnityShowLine LeftLine;
    public static final UnityShowLine Line110;
    public static final UnityShowLine Line1112;
    public static final UnityShowLine Line112;
    public static final UnityShowLine Line12;
    public static final UnityShowLine Line13;
    public static final UnityShowLine Line14;
    public static final UnityShowLine Line16;
    public static final UnityShowLine Line18;
    public static final UnityShowLine Line19;
    public static final UnityShowLine Line210;
    public static final UnityShowLine Line211;
    public static final UnityShowLine Line23;
    public static final UnityShowLine Line24;
    public static final UnityShowLine Line26;
    public static final UnityShowLine Line29;
    public static final UnityShowLine Line34;
    public static final UnityShowLine Line36;
    public static final UnityShowLine Line37;
    public static final UnityShowLine Line38;
    public static final UnityShowLine Line45;
    public static final UnityShowLine Line48;
    public static final UnityShowLine Line56;
    public static final UnityShowLine Line58;
    public static final UnityShowLine Line67;
    public static final UnityShowLine Line710;
    public static final UnityShowLine Line78;
    public static final UnityShowLine Line79;
    public static final UnityShowLine Line89;
    public static final UnityShowLine Line910;
    public static final UnityShowLine MLine;
    public static final UnityShowLine QuXianLeft;
    public static final UnityShowLine QuXianLeftBack;
    public static final UnityShowLine QuXianLeftFront;
    public static final UnityShowLine QuXianRight;
    public static final UnityShowLine QuXianRightBack;
    public static final UnityShowLine QuXianRightFront;
    public static final UnityShowLine RLine;
    public static final UnityShowLine RightLine;
    public static final UnityShowLine ShangPo12;
    public static final UnityShowLine ShangPo19;
    public static final UnityShowLine ShangPo210;
    public static final UnityShowLine ShangPo34;
    public static final UnityShowLine ShangPo56;
    public static final UnityShowLine ShangPo78;
    public static final UnityShowLine ShangPo910;
    public static final UnityShowLine ZhiJiao12;
    public static final UnityShowLine ZhiJiao16;
    public static final UnityShowLine ZhiJiao23;
    public static final UnityShowLine ZhiJiao34;
    public static final UnityShowLine ZhiJiao45;
    public static final UnityShowLine ZhiJiao56;
    public final int endIndex;
    public final String name;
    public final int startIndex;
    public final int step;
    public final int type;
    public final String unityName;

    static {
        Step step = Step.K2_DaoCheRuKu;
        DaoKu12 = new UnityShowLine("DaoKu12", 0, "1-2线", "DkLine12", 2, step.type, 1, 2);
        DaoKu18 = new UnityShowLine("DaoKu18", 1, "1-8线", "DkLine18", 2, step.type, 1, 8);
        DaoKu23 = new UnityShowLine("DaoKu23", 2, "2-3线", "DkLine23", 2, step.type, 2, 3);
        DaoKu34 = new UnityShowLine("DaoKu34", 3, "3-4线", "DkLine34", 2, step.type, 3, 4);
        DaoKu36 = new UnityShowLine("DaoKu36", 4, "3-6线", "DkLine36", 2, step.type, 3, 6);
        DaoKu45 = new UnityShowLine("DaoKu45", 5, "4-5线", "DkLine45", 2, step.type, 4, 5);
        DaoKu56 = new UnityShowLine("DaoKu56", 6, "5-6线", "DkLine56", 2, step.type, 5, 6);
        DaoKu67 = new UnityShowLine("DaoKu67", 7, "6-7线", "DkLine67", 2, step.type, 6, 7);
        DaoKu78 = new UnityShowLine("DaoKu78", 8, "7-8线", "DkLine78", 2, step.type, 7, 8);
        Step step2 = Step.K2_CeFangTingChe;
        CeFang12 = new UnityShowLine("CeFang12", 9, "1-2线", "CfLine12", 2, step2.type, 1, 2);
        CeFang18 = new UnityShowLine("CeFang18", 10, "1-8线", "CfLine18", 2, step2.type, 1, 8);
        CeFang23 = new UnityShowLine("CeFang23", 11, "2-3线", "CfLine23", 2, step2.type, 2, 3);
        CeFang34 = new UnityShowLine("CeFang34", 12, "3-4线", "CfLine34", 2, step2.type, 3, 4);
        CeFang36 = new UnityShowLine("CeFang36", 13, "3-6线", "CfLine36", 2, step2.type, 3, 6);
        CeFang45 = new UnityShowLine("CeFang45", 14, "4-5线", "CfLine45", 2, step2.type, 4, 5);
        CeFang56 = new UnityShowLine("CeFang56", 15, "5-6线", "CfLine56", 2, step2.type, 5, 6);
        CeFang67 = new UnityShowLine("CeFang67", 16, "6-7线", "CfLine67", 2, step2.type, 6, 7);
        CeFang78 = new UnityShowLine("CeFang78", 17, "7-8线", "CfLine78", 2, step2.type, 7, 8);
        Step step3 = Step.K2_ZhiJiaoZhuanWan;
        ZhiJiao12 = new UnityShowLine("ZhiJiao12", 18, "1-2线", "ZjLine12", 2, step3.type, 1, 2);
        ZhiJiao16 = new UnityShowLine("ZhiJiao16", 19, "1-6线", "ZjLine16", 2, step3.type, 1, 6);
        ZhiJiao23 = new UnityShowLine("ZhiJiao23", 20, "2-3线", "ZjLine23", 2, step3.type, 2, 3);
        ZhiJiao34 = new UnityShowLine("ZhiJiao34", 21, "3-4线", "ZjLine34", 2, step3.type, 3, 4);
        ZhiJiao45 = new UnityShowLine("ZhiJiao45", 22, "4-5线", "ZjLine45", 2, step3.type, 4, 5);
        ZhiJiao56 = new UnityShowLine("ZhiJiao56", 23, "5-6线", "ZjLine56", 2, step3.type, 5, 6);
        Step step4 = Step.K2_SQuXian;
        QuXianLeft = new UnityShowLine("QuXianLeft", 24, "左边线", "QxLeftLine", 2, step4.type, -1, -1);
        QuXianRight = new UnityShowLine("QuXianRight", 25, "右边线", "QxRightLine", 2, step4.type, -1, -1);
        QuXianLeftFront = new UnityShowLine("QuXianLeftFront", 26, "左前线", "QxLeftFront", 2, step4.type, -1, -1);
        QuXianLeftBack = new UnityShowLine("QuXianLeftBack", 27, "左后线", "QxLeftBack", 2, step4.type, -1, -1);
        QuXianRightFront = new UnityShowLine("QuXianRightFront", 28, "右前线", "QxRightFront", 2, step4.type, -1, -1);
        QuXianRightBack = new UnityShowLine("QuXianRightBack", 29, "右后线", "QxRightBack", 2, step4.type, -1, -1);
        Step step5 = Step.K2_ShangPoQiBu;
        ShangPo12 = new UnityShowLine("ShangPo12", 30, "1-2线", "SpLine12", 2, step5.type, 1, 2);
        ShangPo19 = new UnityShowLine("ShangPo19", 31, "1-9线", "SpLine19", 2, step5.type, 1, 9);
        ShangPo34 = new UnityShowLine("ShangPo34", 32, "3-4线", "SpLine34", 2, step5.type, 3, 4);
        ShangPo78 = new UnityShowLine("ShangPo78", 33, "7-8线", "SpLine78", 2, step5.type, 7, 8);
        ShangPo910 = new UnityShowLine("ShangPo910", 34, "9-10线", "SpLine910", 2, step5.type, 9, 10);
        ShangPo210 = new UnityShowLine("ShangPo210", 35, "2-10线", "SpRightLine", 2, step5.type, 2, 10);
        ShangPo56 = new UnityShowLine("ShangPo56", 36, "5-6线", "SpStopLine", 2, step5.type, 5, 6);
        Line12 = new UnityShowLine("Line12", 37, "1-2线", "CommonLine12", 2, 0, 1, 2);
        Line13 = new UnityShowLine("Line13", 38, "1-3线", "CommonLine13", 2, 0, 1, 3);
        Line14 = new UnityShowLine("Line14", 39, "1-4线", "CommonLine14", 2, 0, 1, 4);
        Line16 = new UnityShowLine("Line16", 40, "1-6线", "CommonLine16", 2, 0, 1, 6);
        Line18 = new UnityShowLine("Line18", 41, "1-8线", "CommonLine18", 2, 0, 1, 8);
        Line19 = new UnityShowLine("Line19", 42, "1-9线", "CommonLine19", 2, 0, 1, 9);
        Line110 = new UnityShowLine("Line110", 43, "1-10线", "CommonLine110", 2, 0, 1, 10);
        Line112 = new UnityShowLine("Line112", 44, "1-12线", "CommonLine112", 2, 0, 1, 12);
        Line23 = new UnityShowLine("Line23", 45, "2-3线", "CommonLine23", 2, 0, 2, 3);
        Line24 = new UnityShowLine("Line24", 46, "2-4线", "CommonLine24", 2, 0, 2, 4);
        Line26 = new UnityShowLine("Line26", 47, "2-6线", "CommonLine26", 2, 0, 2, 6);
        Line29 = new UnityShowLine("Line29", 48, "2-9线", "CommonLine29", 2, 0, 2, 9);
        Line210 = new UnityShowLine("Line210", 49, "2-10线", "CommonLine210", 2, 0, 2, 10);
        Line211 = new UnityShowLine("Line211", 50, "2-11线", "CommonLine211", 2, 0, 2, 11);
        Line34 = new UnityShowLine("Line34", 51, "3-4线", "CommonLine34", 2, 0, 3, 4);
        Line36 = new UnityShowLine("Line36", 52, "3-6线", "CommonLine36", 2, 0, 3, 6);
        Line37 = new UnityShowLine("Line37", 53, "3-7线", "CommonLine37", 2, 0, 3, 7);
        Line38 = new UnityShowLine("Line38", 54, "3-8线", "CommonLine38", 2, 0, 3, 8);
        Line45 = new UnityShowLine("Line45", 55, "4-5线", "CommonLine45", 2, 0, 4, 5);
        Line48 = new UnityShowLine("Line48", 56, "4-8线", "CommonLine48", 2, 0, 4, 8);
        Line56 = new UnityShowLine("Line56", 57, "5-6线", "CommonLine56", 2, 0, 5, 6);
        Line58 = new UnityShowLine("Line58", 58, "5-8线", "CommonLine58", 2, 0, 5, 8);
        Line67 = new UnityShowLine("Line67", 59, "6-7线", "CommonLine67", 2, 0, 6, 7);
        Line78 = new UnityShowLine("Line78", 60, "7-8线", "CommonLine78", 2, 0, 7, 8);
        Line79 = new UnityShowLine("Line79", 61, "7-9线", "CommonLine79", 2, 0, 7, 9);
        Line710 = new UnityShowLine("Line710", 62, "7-10线", "CommonLine710", 2, 0, 7, 10);
        Line89 = new UnityShowLine("Line89", 63, "8-9线", "CommonLine89", 2, 0, 8, 9);
        Line910 = new UnityShowLine("Line910", 64, "9-10线", "CommonLine910", 2, 0, 9, 10);
        Line1112 = new UnityShowLine("Line1112", 65, "11-12线", "CommonLine1112", 2, 0, 11, 12);
        LeftLine = new UnityShowLine("LeftLine", 66, "左边线", "CommonLeftLine", 2, 0, 1, 9);
        RightLine = new UnityShowLine("RightLine", 67, "右边线", "CommonRightLine", 2, 0, 2, 10);
        LLine = new UnityShowLine("LLine", 68, "L线", "CommonLLine", 2, 0, 1, 13);
        MLine = new UnityShowLine("MLine", 69, "M线", "CommonMLine", 2, 0, 2, 14);
        RLine = new UnityShowLine("RLine", 70, "R线", "CommonRLine", 2, 0, 3, 15);
        $VALUES = new UnityShowLine[]{DaoKu12, DaoKu18, DaoKu23, DaoKu34, DaoKu36, DaoKu45, DaoKu56, DaoKu67, DaoKu78, CeFang12, CeFang18, CeFang23, CeFang34, CeFang36, CeFang45, CeFang56, CeFang67, CeFang78, ZhiJiao12, ZhiJiao16, ZhiJiao23, ZhiJiao34, ZhiJiao45, ZhiJiao56, QuXianLeft, QuXianRight, QuXianLeftFront, QuXianLeftBack, QuXianRightFront, QuXianRightBack, ShangPo12, ShangPo19, ShangPo34, ShangPo78, ShangPo910, ShangPo210, ShangPo56, Line12, Line13, Line14, Line16, Line18, Line19, Line110, Line112, Line23, Line24, Line26, Line29, Line210, Line211, Line34, Line36, Line37, Line38, Line45, Line48, Line56, Line58, Line67, Line78, Line79, Line710, Line89, Line910, Line1112, LeftLine, RightLine, LLine, MLine, RLine};
    }

    private UnityShowLine(String str, int i, String str2, String str3, int i2, int i3, int i4, int i5) {
        super(str, i);
        this.name = str2;
        this.unityName = str3;
        this.type = i2;
        this.step = i3;
        this.startIndex = i4;
        this.endIndex = i5;
    }

    public static UnityShowLine find(String str) {
        for (UnityShowLine unityShowLine : values()) {
            if (unityShowLine.unityName.equals(str)) {
                return unityShowLine;
            }
        }
        return null;
    }

    public static UnityShowLine valueOf(String str) {
        return (UnityShowLine) Enum.valueOf(UnityShowLine.class, str);
    }

    public static UnityShowLine[] values() {
        return (UnityShowLine[]) $VALUES.clone();
    }

    public List<Integer> createIndexMap() {
        ArrayList arrayList = new ArrayList();
        int i = this.startIndex;
        if (i > 0 && this.endIndex > 0) {
            arrayList.add(Integer.valueOf(i));
            arrayList.add(Integer.valueOf(this.endIndex));
        } else if (this == QuXianLeft) {
            arrayList.add(-1);
        } else if (this == QuXianLeftFront) {
            arrayList.add(-2);
        } else if (this == QuXianLeftBack) {
            arrayList.add(-3);
        } else if (this == QuXianRight) {
            arrayList.add(-11);
        } else if (this == QuXianRightFront) {
            arrayList.add(-12);
        } else if (this == QuXianRightBack) {
            arrayList.add(-13);
        }
        return arrayList;
    }

    public static List<UnityShowLine> find(int i) {
        KeMu keMu = KeMu.B2;
        if (i >= keMu.min && i <= keMu.max) {
            return B2LineUtils.a(i);
        }
        UnityShowLine[] unityShowLineArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (UnityShowLine unityShowLine : unityShowLineArrValues) {
            if (unityShowLine.step == i) {
                arrayList.add(unityShowLine);
            }
        }
        return arrayList;
    }
}
