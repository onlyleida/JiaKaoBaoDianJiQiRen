package cn.mucang.android.jiakaoyi.engine.processor.exam.step.e;

import android.location.Location;
import android.text.TextUtils;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.ExamStepStatus;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class b<T extends BaseStepConfig> extends d<T> {
    protected boolean hasPlaying;
    private boolean hasReachCondition;
    private final BooleanValue isFilterRepeat;
    private boolean isPlayDingDong;
    private final BooleanValue isPlayStartVoice;
    protected final IntegerValue judgeDistance;
    protected final OptionsValue judgeTime;
    protected final Location pos;
    private final cn.mucang.android.jiakaoyi.engine.processor.exam.j.a positionHelper;
    private boolean reachDistance;
    private boolean startToWaitDistance;
    private String startVoice;
    protected final StringValue startVoiceTips;
    private float targetDistance;

    class a extends SimpleTtsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.jiakaoyi.signal.c.e f3150a;
        final /* synthetic */ ExamProcessor b;
        final /* synthetic */ cn.mucang.android.jiakaoyi.engine.processor.exam.step.b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f3151d;

        a(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
            this.f3150a = eVar;
            this.b = examProcessor;
            this.c = bVar;
            this.f3151d = z;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            b.this.playingStartVoiceAfter(this.f3150a, this.b, this.c, this.f3151d);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b$b, reason: collision with other inner class name */
    public static class C0104b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3153a;
        public final String b;
        public final String c;

        public C0104b(int i, String str, String str2) {
            this.f3153a = i;
            this.b = str;
            this.c = str2;
        }
    }

    public b(T t, Deduct deduct, Location location, OptionsValue optionsValue, IntegerValue integerValue, StringValue stringValue) {
        this(t, deduct, location, optionsValue, integerValue, stringValue, null, null);
    }

    protected boolean canPlayStartVoice(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return true;
    }

    protected boolean canStart(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0104b getStartVoiceTips(ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        String str;
        int i = this.startVoiceTips.ruleId;
        String strD = l.d(i);
        String strReplace = (String) this.startVoiceTips.value;
        cn.mucang.android.jiakaoyi.engine.i.c.b bVar2 = bVar.f3143f;
        if (bVar2 != null && (str = bVar2.l) != null && !TextUtils.isEmpty(str)) {
            strD = l.d(this.startVoiceTips.ruleId) + "_" + bVar.f3143f.j;
            strReplace = bVar.f3143f.l;
        }
        if (bVar.f3142e == Step.K3_QiBu) {
            String str2 = examProcessor.f3104a.m.routeName;
            if (n0.e(str2)) {
                str2 = "";
            }
            strReplace = strReplace.replace(Marker.ANY_MARKER, str2);
        }
        return new C0104b(i, strD, strReplace);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        String string;
        OptionsValue optionsValue;
        BooleanValue booleanValue;
        cn.mucang.android.jiakaoyi.engine.i.c.b bVar2;
        if (!z && (bVar2 = bVar.f3143f) != null && bVar2.i != -1 && examProcessor.o().i().d(bVar.f3142e)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.engine.i.c.b bVar3 = bVar.f3143f;
        if ((bVar3 != null && !bVar3.p) || !canStart(eVar, examProcessor, bVar, z) || !reachStartPos(eVar, examProcessor, bVar, z)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.engine.processor.exam.d dVar = examProcessor.f3104a;
        if (dVar.f3118a == KeMu.K3 && dVar.p == 2 && dVar.n.isPlayTeachVoice()) {
            this.hasPlaying = true;
        }
        boolean z2 = this.hasPlaying;
        float fIntValue = BitmapDescriptorFactory.HUE_RED;
        if (!z2) {
            this.hasPlaying = true;
            if (bVar.f3143f != null) {
                StringBuilder sb = new StringBuilder();
                if (bVar.f3143f.f3083a != null) {
                    sb.append("loc(");
                    sb.append(bVar.f3143f.f3083a.getLongitude());
                    sb.append(",");
                    sb.append(bVar.f3143f.f3083a.getLatitude());
                    sb.append(")");
                    sb.append(",");
                    sb.append(bVar.f3143f.f3083a.getBearing());
                    sb.append(",");
                }
                if (bVar.f3143f.b != null) {
                    sb.append(",brake(");
                    sb.append(bVar.f3143f.b.getLongitude());
                    sb.append(",");
                    sb.append(bVar.f3143f.b.getLatitude());
                    sb.append("),");
                    sb.append(bVar.f3143f.c);
                }
                sb.append(",");
                sb.append(bVar.f3143f.f3085e);
                sb.append(",");
                sb.append(bVar.f3143f.f3086f);
                sb.append(",");
                sb.append(bVar.f3143f.f3087g);
                sb.append(",");
                sb.append(bVar.f3143f.f3088h);
                sb.append(",");
                sb.append(bVar.f3143f.i);
                sb.append(",");
                sb.append(bVar.f3143f.j);
                string = sb.toString();
            } else {
                string = "";
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("step " + bVar.f3142e.zhStepName + " ; forceTrigger " + z + " ; route " + string + "; estimateTotalDistance " + eVar.d().C);
            if (canPlayStartVoice(bVar) && ((booleanValue = this.isPlayStartVoice) == null || ((Boolean) booleanValue.value).booleanValue())) {
                C0104b startVoiceTips = getStartVoiceTips(examProcessor, bVar, z);
                String str = startVoiceTips.c;
                this.startVoice = str;
                TtsManager.w(str, TtsGrade.ExamTip, new a(eVar, examProcessor, bVar, z), startVoiceTips.f3153a, startVoiceTips.b);
            }
            IntegerValue integerValue = this.judgeDistance;
            float fIntValue2 = integerValue == null ? BitmapDescriptorFactory.HUE_RED : ((Integer) integerValue.value).intValue();
            if (bVar.i == ExamStepStatus.None && ((optionsValue = this.judgeTime) == null || ((Integer) optionsValue.value).intValue() == 0 || fIntValue2 > BitmapDescriptorFactory.HUE_RED)) {
                bVar.i = ExamStepStatus.Ready;
                examProcessor.i(bVar, null);
            }
        }
        if (!this.startToWaitDistance) {
            OptionsValue optionsValue2 = this.judgeTime;
            if (optionsValue2 == null) {
                if (!TtsManager.m(this.startVoice)) {
                    this.startToWaitDistance = true;
                }
            } else if (((Integer) optionsValue2.value).intValue() == 1 || !TtsManager.m(this.startVoice)) {
                this.startToWaitDistance = true;
            }
        }
        if (this.startToWaitDistance && z && (eVar.getCurrentPosition().f5281g.getLongitude() <= 1.0d || n.a())) {
            return true;
        }
        if (this.startToWaitDistance && !this.reachDistance) {
            if (this.targetDistance <= BitmapDescriptorFactory.HUE_RED) {
                IntegerValue integerValue2 = this.judgeDistance;
                if (integerValue2 != null) {
                    fIntValue = ((Integer) integerValue2.value).intValue();
                }
                this.targetDistance = eVar.d().C + fIntValue;
            }
            this.reachDistance = eVar.d().C >= this.targetDistance;
        }
        return this.reachDistance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean needRepeatHandle() {
        BooleanValue booleanValue = this.isFilterRepeat;
        if (booleanValue == null) {
            return true;
        }
        return !((Boolean) booleanValue.value).booleanValue();
    }

    public boolean needToCheck() {
        return this.pos != null;
    }

    protected void playingStartVoiceAfter(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    protected boolean reachStartPos(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        boolean zOnlyUseDistance;
        if (z || this.hasReachCondition) {
            return true;
        }
        if (b0.a().b()) {
            Object obj = examProcessor.f3104a.n;
            if (obj instanceof cn.mucang.android.jiakaoyi.engine.config.param.a) {
                zOnlyUseDistance = ((cn.mucang.android.jiakaoyi.engine.config.param.a) obj).onlyUseDistance();
            } else {
                zOnlyUseDistance = false;
            }
        } else {
            zOnlyUseDistance = false;
        }
        if (!this.positionHelper.b(eVar, zOnlyUseDistance)) {
            return false;
        }
        this.hasReachCondition = true;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(T t, Deduct deduct, Location location, OptionsValue optionsValue, IntegerValue integerValue, StringValue stringValue, BooleanValue booleanValue, BooleanValue booleanValue2) {
        super(t, deduct);
        this.hasReachCondition = false;
        this.targetDistance = -1.0f;
        this.startToWaitDistance = false;
        this.reachDistance = false;
        this.isPlayDingDong = false;
        this.pos = location;
        this.judgeTime = optionsValue;
        this.judgeDistance = integerValue;
        this.startVoiceTips = stringValue;
        this.hasPlaying = false;
        this.isPlayStartVoice = booleanValue;
        this.isFilterRepeat = booleanValue2;
        this.positionHelper = new cn.mucang.android.jiakaoyi.engine.processor.exam.j.a(cn.mucang.android.jiakaoyi.engine.d.b(), cn.mucang.android.jiakaoyi.engine.d.a(), location);
        this.startVoice = (String) stringValue.value;
    }
}
