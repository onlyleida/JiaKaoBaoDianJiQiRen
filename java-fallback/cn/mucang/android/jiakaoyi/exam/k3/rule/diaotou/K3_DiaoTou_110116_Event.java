package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.RunOverBanMaLineChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110116_Event extends d<K3DiaoTouStepConfig> {
    private cn.mucang.android.jiakaoyi.exam.a.d lightBuDaHelper;
    private float lightOffDistance;
    private long lightOffTime;
    private RunOverBanMaLineChecker runOverBanMaLineChecker;
    private float runOverBanMaLineDistance;
    private long runOverBanMaLineTime;

    public K3_DiaoTou_110116_Event(K3DiaoTouStepConfig r2, Deduct r3) {
        super(r2, r3);
        this.runOverBanMaLineChecker = null;
        this.lightOffTime = 0;
        this.lightOffDistance = BitmapDescriptorFactory.HUE_RED;
        this.runOverBanMaLineTime = 0;
        this.runOverBanMaLineDistance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e r9, ExamProcessor r10, b r11) {
        if (r11.f3143f.f3086f == true) goto L6;
        setDoNotExecute(true);
        return true;
    L6:
        DiaoTouStateData r12 = (DiaoTouStateData) r11.f();
        Light r0 = Light.TurnLeftLight;
        if (r12.isLeftDiaoTou == true) goto L10;
        r0 = Light.TurnRightLight;
    L10:
        if (this.lightBuDaHelper != null) goto L13;
        this.lightBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(r0, ((Integer) ((K3DiaoTouStepConfig) this.config).p210120.value).intValue() * 1000);
    L13:
        if (((Integer) ((K3DiaoTouStepConfig) this.config).p210107.value).intValue() != 2) goto L51;
        boolean r13 = r9.d().j(r0);
        if (r13 == true) goto L18;
        this.lightOffTime = r9.d().L;
        this.lightOffDistance = r9.d().C;
    L18:
        if (this.runOverBanMaLineTime == 0) goto L29;
        if (this.runOverBanMaLineDistance == BitmapDescriptorFactory.HUE_RED) goto L29;
        if (this.lightOffTime > 0) goto L25;
    L55:
        return true;
    L25:
        if ((r9.d().L - this.lightOffTime) <= (((Integer) ((K3DiaoTouStepConfig) this.config).p210120.value).intValue() * 1000)) goto L55;
        setDoNotExecute(true);
        return false;
    L29:
        if (this.lightBuDaHelper.a(r9) == true) goto L32;
        return false;
    L32:
        if (this.runOverBanMaLineChecker != null) goto L35;
        this.runOverBanMaLineChecker = new RunOverBanMaLineChecker();
    L35:
        if (this.runOverBanMaLineChecker.check(r9, r10) == false) goto L55;
        this.runOverBanMaLineTime = r9.d().L;
        float r14 = r9.d().C;
        this.runOverBanMaLineDistance = r14;
        if (r13 == false) goto L40;
        setDoNotExecute(true);
        return true;
    L40:
        long r15 = this.lightOffTime;
        if (r15 > 0) goto L43;
    L44:
        float r16 = this.lightOffDistance;
        if (r16 <= BitmapDescriptorFactory.HUE_RED) goto L55;
        if ((r14 - r16) >= 0.5d) goto L55;
    L48:
        setDoNotExecute(true);
        return true;
    L43:
        if ((this.runOverBanMaLineTime - r15) < 500) goto L48;
    L51:
        if (r12.state == DiaoTouStateData.State.diaotou) goto L53;
        this.lightBuDaHelper.b();
        goto L55
    L53:
        return this.lightBuDaHelper.a(r9);
    }
}
