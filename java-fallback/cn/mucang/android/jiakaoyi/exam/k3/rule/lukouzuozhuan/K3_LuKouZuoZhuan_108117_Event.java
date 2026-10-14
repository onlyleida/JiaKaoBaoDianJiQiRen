package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.RunOverBanMaLineChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_108117_Event extends d<K3LuKouZuoZhuanStepConfig> {
    private final cn.mucang.android.jiakaoyi.exam.a.d leftLightBuDaHelper;
    private float lightOffDistance;
    private long lightOffTime;
    private RunOverBanMaLineChecker runOverBanMaLineChecker;
    private float runOverBanMaLineDistance;
    private long runOverBanMaLineTime;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_LuKouZuoZhuan_108117_Event(K3LuKouZuoZhuanStepConfig r4, Deduct r5) {
        super(r4, r5);
        this.runOverBanMaLineChecker = null;
        this.lightOffTime = 0;
        this.lightOffDistance = BitmapDescriptorFactory.HUE_RED;
        this.runOverBanMaLineTime = 0;
        this.runOverBanMaLineDistance = BitmapDescriptorFactory.HUE_RED;
        this.leftLightBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(Light.TurnLeftLight, ((Integer) r4.p208120.value).intValue() * 1000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e r9, ExamProcessor r10, b r11) {
        if (r11.f3143f.f3086f == true) goto L6;
        setDoNotExecute(true);
        return true;
    L6:
        ZuoZhuanStateData r12 = (ZuoZhuanStateData) r11.f();
        if (((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208107.value).intValue() != 2) goto L47;
        boolean r13 = r9.d().j(Light.TurnLeftLight);
        if (r13 == true) goto L12;
        this.lightOffTime = r9.d().L;
        this.lightOffDistance = r9.d().C;
    L12:
        if (this.runOverBanMaLineTime == 0) goto L14;
    L37:
        if (r13 == false) goto L41;
        setDoNotExecute(true);
        return true;
    L41:
        if (this.lightOffTime > 0) goto L43;
    L51:
        return true;
    L43:
        if ((r9.d().L - this.lightOffTime) <= (((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208107.value).intValue() * 1000)) goto L51;
        setDoNotExecute(true);
        return false;
    L14:
        if (this.runOverBanMaLineDistance != BitmapDescriptorFactory.HUE_RED) goto L37;
        if (this.leftLightBuDaHelper.a(r9) == true) goto L19;
        return false;
    L19:
        if (this.runOverBanMaLineChecker != null) goto L22;
        this.runOverBanMaLineChecker = new RunOverBanMaLineChecker();
    L22:
        if (this.runOverBanMaLineChecker.check(r9, r10) == false) goto L51;
        this.runOverBanMaLineTime = r9.d().L;
        float r14 = r9.d().C;
        this.runOverBanMaLineDistance = r14;
        if (r13 == false) goto L27;
        setDoNotExecute(true);
        return true;
    L27:
        long r15 = this.lightOffTime;
        if (r15 > 0) goto L30;
    L31:
        float r16 = this.lightOffDistance;
        if (r16 <= BitmapDescriptorFactory.HUE_RED) goto L51;
        if ((r14 - r16) >= 0.5d) goto L51;
    L35:
        setDoNotExecute(true);
        return true;
    L30:
        if ((this.runOverBanMaLineTime - r15) < 500) goto L35;
    L47:
        if (r12.state == ZuoZhuanStateData.State.Turning) goto L49;
        this.leftLightBuDaHelper.b();
        goto L51
    L49:
        return this.leftLightBuDaHelper.a(r9);
    }
}
