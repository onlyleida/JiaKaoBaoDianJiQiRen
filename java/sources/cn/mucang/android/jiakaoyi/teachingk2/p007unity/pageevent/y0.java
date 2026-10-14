package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.level.LevelStepCalculator;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper.CarStateAndPositionStarter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SpeedBrakeManager;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;

/* JADX INFO: loaded from: classes4.dex */
public class y0 implements a0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeMu f8674a;

    public y0(KeMu keMu) {
        this.f8674a = keMu;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        CarStateAndPositionStarter.a();
        GlobalChecker.g(true);
        KeMu keMu = this.f8674a;
        a0.f6363a = keMu;
        SpeedBrakeManager.a(keMu);
        LevelStepCalculator.i(null);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void n() {
        CarStateAndPositionStarter.b();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        GlobalChecker.g(false);
    }
}
