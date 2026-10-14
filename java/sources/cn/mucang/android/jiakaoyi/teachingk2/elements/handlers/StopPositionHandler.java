package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.StopPositionAreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.SerializableRect;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.StopPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class StopPositionHandler implements g0<StopPositionVariable> {
    public static List<StopVoiceConfig> c = Arrays.asList(StopVoiceConfig.values());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.utils.b f7024a;
    private cn.mucang.android.jiakaoyi.signal.utils.b b;

    public enum StopArea {
        Left,
        Right,
        Front,
        Back,
        Good
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DaoKu1' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class StopVoiceConfig {
        private static final /* synthetic */ StopVoiceConfig[] $VALUES;
        public static final StopVoiceConfig CeFang1;
        public static final StopVoiceConfig CeFang2;
        public static final StopVoiceConfig CeFang3;
        public static final StopVoiceConfig CeFang4;
        public static final StopVoiceConfig CeFang5;
        public static final StopVoiceConfig CeFang6;
        public static final StopVoiceConfig CeFang7;
        public static final StopVoiceConfig CeFang8;
        public static final StopVoiceConfig CeFangGood1;
        public static final StopVoiceConfig CeFangGood2;
        public static final StopVoiceConfig DaoKu1;
        public static final StopVoiceConfig DaoKu10;
        public static final StopVoiceConfig DaoKu11;
        public static final StopVoiceConfig DaoKu12;
        public static final StopVoiceConfig DaoKu13;
        public static final StopVoiceConfig DaoKu14;
        public static final StopVoiceConfig DaoKu15;
        public static final StopVoiceConfig DaoKu16;
        public static final StopVoiceConfig DaoKu2;
        public static final StopVoiceConfig DaoKu3;
        public static final StopVoiceConfig DaoKu4;
        public static final StopVoiceConfig DaoKu5;
        public static final StopVoiceConfig DaoKu6;
        public static final StopVoiceConfig DaoKu7;
        public static final StopVoiceConfig DaoKu8;
        public static final StopVoiceConfig DaoKu9;
        public static final StopVoiceConfig DaoKuGood1;
        public static final StopVoiceConfig DaoKuGood2;
        public static final StopVoiceConfig DaoKuGood3;
        public static final StopVoiceConfig DaoKuGood4;
        public static final StopVoiceConfig ShangPoGood1;
        public final StopArea area;
        public final int step;
        public final int subStep;
        public final String voice;

        static {
            StopArea stopArea = StopArea.Left;
            DaoKu1 = new StopVoiceConfig("DaoKu1", 0, 102, 2, stopArea, k0.a(R.string.teachingk2_stop_location_left));
            StopArea stopArea2 = StopArea.Right;
            StopVoiceConfig stopVoiceConfig = new StopVoiceConfig("DaoKu2", 1, 102, 2, stopArea2, k0.a(R.string.teachingk2_stop_location_right));
            DaoKu2 = stopVoiceConfig;
            StopArea stopArea3 = StopArea.Front;
            int i = R.string.teachingk2_stop_location_front;
            StopVoiceConfig stopVoiceConfig2 = new StopVoiceConfig("DaoKu3", 2, 102, 2, stopArea3, k0.a(i));
            DaoKu3 = stopVoiceConfig2;
            StopArea stopArea4 = StopArea.Back;
            int i2 = R.string.teachingk2_stop_location_back;
            StopVoiceConfig stopVoiceConfig3 = new StopVoiceConfig("DaoKu4", 3, 102, 2, stopArea4, k0.a(i2));
            DaoKu4 = stopVoiceConfig3;
            StopArea stopArea5 = StopArea.Good;
            StopVoiceConfig stopVoiceConfig4 = new StopVoiceConfig("DaoKuGood1", 4, 102, 2, stopArea5, k0.a(R.string.teachingk2_good_continue));
            DaoKuGood1 = stopVoiceConfig4;
            int i3 = R.string.teachingk2_stop_close_left_out;
            StopVoiceConfig stopVoiceConfig5 = new StopVoiceConfig("DaoKu5", 5, 102, 3, stopArea, k0.a(i3));
            DaoKu5 = stopVoiceConfig5;
            int i4 = R.string.teachingk2_stop_close_right_out;
            StopVoiceConfig stopVoiceConfig6 = new StopVoiceConfig("DaoKu6", 6, 102, 3, stopArea2, k0.a(i4));
            DaoKu6 = stopVoiceConfig6;
            StopVoiceConfig stopVoiceConfig7 = new StopVoiceConfig("DaoKu7", 7, 102, 3, stopArea3, k0.a(i));
            DaoKu7 = stopVoiceConfig7;
            StopVoiceConfig stopVoiceConfig8 = new StopVoiceConfig("DaoKu8", 8, 102, 3, stopArea4, k0.a(i2));
            DaoKu8 = stopVoiceConfig8;
            StopVoiceConfig stopVoiceConfig9 = new StopVoiceConfig("DaoKuGood2", 9, 102, 3, stopArea5, k0.a(R.string.teachingk2_stop_good_continue));
            DaoKuGood2 = stopVoiceConfig9;
            int i5 = R.string.teachingk2_stop_close_left_back_steering;
            StopVoiceConfig stopVoiceConfig10 = new StopVoiceConfig("DaoKu9", 10, 102, 4, stopArea, k0.a(i5));
            DaoKu9 = stopVoiceConfig10;
            int i6 = R.string.teachingk2_stop_close_right_back_touch;
            StopVoiceConfig stopVoiceConfig11 = new StopVoiceConfig("DaoKu10", 11, 102, 4, stopArea2, k0.a(i6));
            DaoKu10 = stopVoiceConfig11;
            StopVoiceConfig stopVoiceConfig12 = new StopVoiceConfig("DaoKu11", 12, 102, 4, stopArea3, k0.a(i));
            DaoKu11 = stopVoiceConfig12;
            StopVoiceConfig stopVoiceConfig13 = new StopVoiceConfig("DaoKu12", 13, 102, 4, stopArea4, k0.a(i2));
            DaoKu12 = stopVoiceConfig13;
            StopVoiceConfig stopVoiceConfig14 = new StopVoiceConfig("DaoKuGood3", 14, 102, 4, stopArea5, k0.a(R.string.teachingk2_stop_good_nice));
            DaoKuGood3 = stopVoiceConfig14;
            StopVoiceConfig stopVoiceConfig15 = new StopVoiceConfig("DaoKu13", 15, 102, 5, stopArea, k0.a(i3));
            DaoKu13 = stopVoiceConfig15;
            StopVoiceConfig stopVoiceConfig16 = new StopVoiceConfig("DaoKu14", 16, 102, 5, stopArea2, k0.a(i4));
            DaoKu14 = stopVoiceConfig16;
            StopVoiceConfig stopVoiceConfig17 = new StopVoiceConfig("DaoKu15", 17, 102, 5, stopArea3, k0.a(i));
            DaoKu15 = stopVoiceConfig17;
            StopVoiceConfig stopVoiceConfig18 = new StopVoiceConfig("DaoKu16", 18, 102, 5, stopArea4, k0.a(i2));
            DaoKu16 = stopVoiceConfig18;
            StopVoiceConfig stopVoiceConfig19 = new StopVoiceConfig("DaoKuGood4", 19, 102, 5, stopArea5, k0.a(R.string.teachingk2_stop_good_out_rect));
            DaoKuGood4 = stopVoiceConfig19;
            StopVoiceConfig stopVoiceConfig20 = new StopVoiceConfig("CeFang1", 20, 105, 2, stopArea, k0.a(i5));
            CeFang1 = stopVoiceConfig20;
            StopVoiceConfig stopVoiceConfig21 = new StopVoiceConfig("CeFang2", 21, 105, 2, stopArea2, k0.a(i6));
            CeFang2 = stopVoiceConfig21;
            StopVoiceConfig stopVoiceConfig22 = new StopVoiceConfig("CeFang3", 22, 105, 2, stopArea3, k0.a(i));
            CeFang3 = stopVoiceConfig22;
            StopVoiceConfig stopVoiceConfig23 = new StopVoiceConfig("CeFang4", 23, 105, 2, stopArea4, k0.a(i2));
            CeFang4 = stopVoiceConfig23;
            StopVoiceConfig stopVoiceConfig24 = new StopVoiceConfig("CeFangGood1", 24, 105, 2, stopArea5, k0.a(R.string.teachingk2_stop_good_start_cefang));
            CeFangGood1 = stopVoiceConfig24;
            StopVoiceConfig stopVoiceConfig25 = new StopVoiceConfig("CeFang5", 25, 105, 3, stopArea, k0.a(R.string.teachingk2_stop_close_left_steering));
            CeFang5 = stopVoiceConfig25;
            StopVoiceConfig stopVoiceConfig26 = new StopVoiceConfig("CeFang6", 26, 105, 3, stopArea2, k0.a(R.string.teachingk2_stop_close_right_steering));
            CeFang6 = stopVoiceConfig26;
            StopVoiceConfig stopVoiceConfig27 = new StopVoiceConfig("CeFang7", 27, 105, 3, stopArea3, k0.a(R.string.teachingk2_stop_close_front_touch));
            CeFang7 = stopVoiceConfig27;
            StopVoiceConfig stopVoiceConfig28 = new StopVoiceConfig("CeFang8", 28, 105, 3, stopArea4, k0.a(i2));
            CeFang8 = stopVoiceConfig28;
            StopVoiceConfig stopVoiceConfig29 = new StopVoiceConfig("CeFangGood2", 29, 105, 3, stopArea5, k0.a(R.string.teachingk2_good_come_on));
            CeFangGood2 = stopVoiceConfig29;
            StopVoiceConfig stopVoiceConfig30 = new StopVoiceConfig("ShangPoGood1", 30, 103, 1, stopArea5, k0.a(R.string.teachingk2_stop_right_start));
            ShangPoGood1 = stopVoiceConfig30;
            $VALUES = new StopVoiceConfig[]{DaoKu1, stopVoiceConfig, stopVoiceConfig2, stopVoiceConfig3, stopVoiceConfig4, stopVoiceConfig5, stopVoiceConfig6, stopVoiceConfig7, stopVoiceConfig8, stopVoiceConfig9, stopVoiceConfig10, stopVoiceConfig11, stopVoiceConfig12, stopVoiceConfig13, stopVoiceConfig14, stopVoiceConfig15, stopVoiceConfig16, stopVoiceConfig17, stopVoiceConfig18, stopVoiceConfig19, stopVoiceConfig20, stopVoiceConfig21, stopVoiceConfig22, stopVoiceConfig23, stopVoiceConfig24, stopVoiceConfig25, stopVoiceConfig26, stopVoiceConfig27, stopVoiceConfig28, stopVoiceConfig29, stopVoiceConfig30};
        }

        private StopVoiceConfig(String str, int i, int i2, int i3, StopArea stopArea, String str2) {
            super(str, i);
            this.step = i2;
            this.subStep = i3;
            this.area = stopArea;
            this.voice = str2;
        }

        public static StopVoiceConfig valueOf(String str) {
            return (StopVoiceConfig) Enum.valueOf(StopVoiceConfig.class, str);
        }

        public static StopVoiceConfig[] values() {
            return (StopVoiceConfig[]) $VALUES.clone();
        }
    }

    private boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar, TeachModel teachModel) {
        Line line = kVar.m;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = kVar.n;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, line2.start, line2.end);
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, eVar.c().carRect.b)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("右车头不在桩杆线上");
            return false;
        }
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, eVar.c().carRect.c)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("左车头不在桩杆线上");
            return false;
        }
        Pos pos3 = eVar.c().wheelRightFront;
        Line line3 = kVar.s;
        int iK = (int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos3, line3.start, line3.end);
        if (iK < 10 || iK > 30) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("右前轮距离不准确:" + iK);
            return false;
        }
        Pos pos4 = eVar.c().wheelRightBack;
        Line line4 = kVar.s;
        int iK2 = (int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos4, line4.start, line4.end);
        if (iK2 >= 10 && iK2 <= 30) {
            d(teachModel, StopArea.Good);
            return true;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("右后轮距离不准确:" + iK2);
        return false;
    }

    private void d(TeachModel teachModel, StopArea stopArea) {
        String str;
        Iterator<StopVoiceConfig> it = c.iterator();
        while (true) {
            if (!it.hasNext()) {
                str = "";
                break;
            }
            StopVoiceConfig next = it.next();
            if (next.step == teachModel.step && next.subStep == teachModel.subStep && next.area == stopArea) {
                str = next.voice;
                break;
            }
        }
        if (!cn.mucang.android.core.utils.g.d(teachModel.errors) || str.isEmpty()) {
            return;
        }
        for (ErrorModel errorModel : teachModel.errors) {
            FormModel formModel = errorModel.errorForm;
            if (formModel instanceof VoiceModel) {
                ((VoiceModel) formModel).voice = str;
                errorModel.stopArea = stopArea;
                return;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(StopPositionVariable stopPositionVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (TeachConfig.d()) {
            return false;
        }
        if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) {
            return b(eVar, (cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) bVar, teachModel);
        }
        if (!(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) && !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c)) {
            return false;
        }
        if (bVar2 instanceof cn.mucang.android.jiakaoyi.teachingk2.s0.c) {
            int i = ((cn.mucang.android.jiakaoyi.teachingk2.s0.c) bVar2).s;
            if (i == 1 && teachModel.subStep == 2) {
                return false;
            }
            if (i == 2 && teachModel.subStep == 4) {
                return false;
            }
            if (i == 3 && teachModel.subStep == 5) {
                return false;
            }
        }
        if (this.f7024a == null) {
            this.f7024a = bVar.g();
        }
        if (this.b == null) {
            Pos posC = this.f7024a.c(stopPositionVariable.center);
            Pos posC2 = this.f7024a.c(stopPositionVariable.last);
            int i2 = teachModel.subStep;
            if (i2 == 2 || i2 == 4) {
                this.b = new cn.mucang.android.jiakaoyi.signal.utils.b(posC2, posC, posC, 1.0d, true);
            } else {
                this.b = new cn.mucang.android.jiakaoyi.signal.utils.b(posC, posC2, posC, 1.0d, true);
            }
            SerializableRect serializableRect = stopPositionVariable.stopRange;
            Pos pos = new Pos(((double) serializableRect.top) * 1.0d, serializableRect.left * (-1));
            SerializableRect serializableRect2 = stopPositionVariable.stopRange;
            Pos pos2 = new Pos(((double) serializableRect2.top) * 1.0d, ((double) serializableRect2.right) * 1.0d);
            SerializableRect serializableRect3 = stopPositionVariable.stopRange;
            Pos pos3 = new Pos(serializableRect3.bottom * (-1), ((double) serializableRect3.right) * 1.0d);
            SerializableRect serializableRect4 = stopPositionVariable.stopRange;
            Pos pos4 = new Pos(serializableRect4.bottom * (-1), serializableRect4.left * (-1));
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.b.c(pos));
            arrayList.add(this.b.c(pos2));
            arrayList.add(this.b.c(pos3));
            arrayList.add(this.b.c(pos4));
            arrayList.add(this.b.c(pos));
            LiveBus.d(StopPositionAreaModel.class).l(new StopPositionAreaModel(arrayList));
        }
        Pos posA = this.b.a(eVar.c().rearAxlePoint);
        StopArea stopArea = StopArea.Good;
        double d2 = posA.y;
        SerializableRect serializableRect5 = stopPositionVariable.stopRange;
        if (d2 < serializableRect5.left * (-1)) {
            stopArea = StopArea.Left;
        } else if (d2 > serializableRect5.right) {
            stopArea = StopArea.Right;
        } else {
            double d3 = posA.x;
            if (d3 > serializableRect5.top) {
                stopArea = StopArea.Front;
            } else if (d3 < serializableRect5.bottom * (-1)) {
                stopArea = StopArea.Back;
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("停车位置检测结果:" + stopArea);
        d(teachModel, stopArea);
        return true;
    }
}
