package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.FlameOutReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.consts.LockCarType;
import cn.mucang.sundial.library.activity.BaseActivity;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 %2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001%B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0014\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u0018H\u0002J\u0006\u0010\u001f\u001a\u00020\u0018J\b\u0010 \u001a\u00020\u0018H\u0002J\b\u0010!\u001a\u00020\u0018H\u0002J\u0006\u0010\"\u001a\u00020\u0018J\u0006\u0010#\u001a\u00020\u0018J\b\u0010$\u001a\u00020\u0018H\u0002R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "()V", "currentBrakeState", "delayTask", "Ljava/lang/Runnable;", "lastBrakeCarPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "lastDirection", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;", "lastGear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "onHouLiuing", "", "onWaitDelayTask", "seriesSignalCounts", "", "triggeredFenRadarBrakeCounts", "isPoDaoLocking", "isRealDirection", "direction", "onChanged", "", "brakeReason", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "printOnSignalChange", "removeDelayTask", "reset", "resetHouLiu", "resetLastState", TtmlNode.START, "stop", "tryLockCar", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PoDaoLockCarChecker implements cn.mucang.android.jiakaoyi.signal.c.f.a, a0<BrakeReason> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7724a;
    private int b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f7725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7726e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BrakeReason f7727f = BrakeReason.None;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CarModel.Direction f7728g = CarModel.Direction.None;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Gear f7729h = Gear.Invalid;
    private final Runnable i = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.f
        @Override // java.lang.Runnable
        public final void run() {
            PoDaoLockCarChecker.a(this.f7743a);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(PoDaoLockCarChecker this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: 触发延迟任务，将后溜状态设为false");
        this$0.i();
    }

    private final boolean b() {
        return LockCarManager.f7721a.c() == LockCarType.APP_PODAO;
    }

    private final boolean c(CarModel.Direction direction) {
        if (direction != this.f7728g) {
            this.f7726e = 1;
        } else {
            int i = this.f7726e;
            if (i < 2) {
                this.f7726e = i + 1;
            }
        }
        return this.f7726e >= 2;
    }

    private final void f(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        CarModel.Direction direction = eVar.d().F;
        Gear gear = eVar.d().m;
        if (this.f7728g == direction && this.f7729h == gear) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: 挡位：" + ((Object) gear.zhName) + ", 运动方向：" + ((Object) direction.directionName));
    }

    private final void g() {
        this.c = false;
        cn.mucang.android.core.utils.u.e(this.i);
    }

    private final void i() {
        this.f7724a = false;
        g();
    }

    private final void j() {
        this.f7729h = Gear.Invalid;
        this.f7728g = CarModel.Direction.None;
        this.f7726e = 0;
    }

    private final void m() {
        if (this.b < 2 || b()) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: 触发电子围栏或障碍物(车在后溜)的刹车次数：" + this.b + ", 认为车辆危险，直接锁车");
        SafeCommandAdapter.a(FlameOutReason.APP, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.PoDaoLockCarChecker$tryLockCar$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                LiveBus.d(LockCarType.class).l(LockCarType.APP_PODAO);
            }
        });
    }

    @Override // androidx.lifecycle.a0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onChanged(BrakeReason brakeReason) {
        if (this.f7727f != brakeReason) {
            g();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("PoDaoLockCarChecker: ", brakeReason == null ? null : brakeReason.getZhTitle()));
            if (brakeReason == BrakeReason.Fence || brakeReason == BrakeReason.Radar) {
                if (this.f7724a) {
                    this.b++;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: 触发刹车前是否有后溜:" + this.f7724a + ", counts:" + this.b);
                m();
            }
            this.f7724a = false;
            this.f7725d = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
            kotlin.jvm.internal.r.c(brakeReason);
            this.f7727f = brakeReason;
        }
    }

    public final void h() {
        this.b = 0;
        i();
    }

    public final void k() {
        l();
        cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: start");
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        LiveBus.d(BrakeReason.class).i(this);
    }

    public final void l() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: stop");
        i();
        this.f7725d = null;
        this.b = 0;
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        LiveBus.d(BrakeReason.class).m(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (signalGetter.d().M != 3) {
            return;
        }
        if (!cn.mucang.android.jiakaoyi.signal.h.a.f5675a.get()) {
            h();
            j();
            return;
        }
        f(signalGetter);
        ReceiveSenorInfo receiveSenorInfo = signalGetter.d().G;
        if ((receiveSenorInfo == null ? null : receiveSenorInfo.safeBoardBrakeState) == CarBrakeState.STATE_NONE) {
            BrakeReason brakeReason = this.f7727f;
            BrakeReason brakeReason2 = BrakeReason.None;
            if (brakeReason != brakeReason2) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: 已解刹");
                this.f7727f = brakeReason2;
            }
        }
        Gear gear = signalGetter.d().m;
        kotlin.jvm.internal.r.d(gear, "signalGetter.car.gear");
        this.f7729h = gear;
        if (!signalGetter.getCurrentPosition().c()) {
            i();
            this.f7728g = CarModel.Direction.None;
            return;
        }
        CarModel.Direction direction = signalGetter.d().F;
        CarModel.Direction direction2 = CarModel.Direction.Forward;
        if (direction == direction2 && c(direction2)) {
            i();
            Pos pos = this.f7725d;
            if (pos != null && this.b > 0) {
                kotlin.jvm.internal.r.c(pos);
                if (pos.distanceSquare(signalGetter.c().center) >= 10000.0d) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: 前进了1米，将次数清零");
                    this.b = 0;
                    this.f7725d = null;
                }
            }
        } else {
            CarModel.Direction direction3 = signalGetter.d().F;
            CarModel.Direction direction4 = CarModel.Direction.Stop;
            if (direction3 != direction4 || !c(direction4)) {
                CarModel.Direction direction5 = signalGetter.d().F;
                CarModel.Direction direction6 = CarModel.Direction.Back;
                if (direction5 == direction6 && c(direction6)) {
                    g();
                    if (!this.f7724a) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: 车辆正在后溜...");
                        this.f7724a = true;
                    }
                }
            } else if (this.f7724a && !this.c) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("PoDaoLockCarChecker: 后溜停止，有可能是刹车导致，延迟1.5s将后溜标志位设为false");
                this.c = true;
                cn.mucang.android.core.utils.u.e(this.i);
                cn.mucang.android.core.utils.u.d(this.i, BaseActivity.INTERVAL);
            }
        }
        CarModel.Direction direction7 = signalGetter.d().F;
        kotlin.jvm.internal.r.d(direction7, "signalGetter.car.direction");
        this.f7728g = direction7;
    }
}
