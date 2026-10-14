package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import androidx.lifecycle.a0;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.FlameOutReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.Safer;
import cn.mucang.android.jiakaoyi.teachingk2.safe.consts.LockCarType;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.FlameOutMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import cn.mucang.jiakaoyi.uilib.socket.MCSocketManager;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import cn.mucang.jiakaoyi.uilib.socket.model.CollisionBrakeModel;
import cn.mucang.jiakaoyi.uilib.socket.model.RemoteBrakeModel;
import cn.mucang.jiakaoyi.uilib.socket.model.SafeModeModel;
import cn.mucang.jiakaoyi.uilib.socket.model.SafeModel;
import cn.mucang.jiakaoyi.uilib.socket.model.SwitchSafeModel;
import com.alibaba.fastjson.JSON;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\bH\u0007J\b\u0010\u0010\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016J\u0012\u0010\u0012\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u000eH\u0016J\b\u0010\u0017\u001a\u00020\bH\u0002J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0019H\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;", "Lcn/mucang/jiakaoyi/uilib/socket/MCConnectListener;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "stepObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;", "brake", "", "reason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "getCarInfoFromSignal", "Ljava/nio/ByteBuffer;", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "init", "onConnect", "onConnectException", "onMessage", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;", "onSignalChanged", "signalGetter", "removeBrake", "switchSafe", "Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RemoteSocketManager implements cn.mucang.jiakaoyi.uilib.socket.o, cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RemoteSocketManager f7730a = new RemoteSocketManager();
    private static final a0<cn.mucang.android.jiakaoyi.engine.i.f.a> b = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.g
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            RemoteSocketManager.h((cn.mucang.android.jiakaoyi.engine.i.f.a) obj);
        }
    };

    private RemoteSocketManager() {
    }

    private final void b(BrakeModel brakeModel) {
        SafeCommandAdapter.b(brakeModel, (byte) 2);
    }

    private final ByteBuffer d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.c() == null || eVar.c().center == null) {
            return null;
        }
        Gear gear = eVar.d().v;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(48);
        Pos pos = eVar.c().center;
        kotlin.jvm.internal.r.d(pos, "signal.carPos.center");
        byteBufferAllocate.putInt((int) pos.x);
        byteBufferAllocate.putInt((int) pos.y);
        byteBufferAllocate.putInt((int) pos.z);
        double d2 = 100;
        byteBufferAllocate.putShort((short) ((((int) (eVar.c().degree * d2)) / 10) * 10));
        byteBufferAllocate.putShort((short) ((((int) (eVar.c().pitch * d2)) / 50) * 50));
        CarModel carModelD = eVar.d();
        kotlin.jvm.internal.r.d(carModelD, "signal.car");
        byteBufferAllocate.put((byte) carModelD.b);
        byteBufferAllocate.putShort((short) ((carModelD.f5265a / 3) * 3));
        byteBufferAllocate.putShort((short) ((carModelD.r / 3) * 3));
        byteBufferAllocate.putShort((short) carModelD.m.gear);
        byteBufferAllocate.put(carModelD.f5268f ? (byte) 1 : (byte) 0);
        byteBufferAllocate.put(carModelD.f5269g ? (byte) 1 : (byte) 0);
        byteBufferAllocate.put(carModelD.f5266d ? (byte) 1 : (byte) 0);
        byteBufferAllocate.put(carModelD.j ? (byte) 1 : (byte) 0);
        byteBufferAllocate.put(carModelD.g() ? (byte) 1 : (byte) 0);
        ReceiveSenorInfo receiveSenorInfo = carModelD.G;
        byteBufferAllocate.put((byte) ((receiveSenorInfo == null || receiveSenorInfo.safeBoardBrakeState != CarBrakeState.STATE_BRAKE) ? 0 : 1));
        byteBufferAllocate.putInt(BrakeGlobalMonitor.a().getReason().getCode());
        byteBufferAllocate.put((byte) eVar.getCurrentPosition().f5282h);
        byteBufferAllocate.putInt(carModelD.x);
        byteBufferAllocate.put((byte) carModelD.F.direction);
        if (gear != null) {
            byteBufferAllocate.put((byte) gear.gear);
        } else {
            byteBufferAllocate.put((byte) -1);
        }
        byteBufferAllocate.put((byte) carModelD.P);
        byteBufferAllocate.putShort((short) carModelD.Q);
        byteBufferAllocate.putInt(carModelD.R);
        byteBufferAllocate.put((byte) LockCarManager.f7721a.c().value);
        return byteBufferAllocate;
    }

    public static final void e() {
        MCSocketManager mCSocketManagerA = cn.mucang.jiakaoyi.uilib.socket.t.a();
        RemoteSocketManager remoteSocketManager = f7730a;
        mCSocketManagerA.F(remoteSocketManager);
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).i(b);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(remoteSocketManager);
    }

    private final void g() {
        SafeCommandAdapter.f((byte) 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(cn.mucang.android.jiakaoyi.engine.i.f.a aVar) {
        if (aVar.f3095a) {
            cn.mucang.jiakaoyi.uilib.socket.u.v(0);
        } else if (aVar.b) {
            cn.mucang.jiakaoyi.uilib.socket.u.v(aVar.c);
        }
    }

    private final void i(SwitchSafeModel switchSafeModel) {
        if (switchSafeModel.open == SafeLocalParamManager.a()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("安全已经是" + switchSafeModel.open + (char) 20102);
            return;
        }
        if (switchSafeModel.open) {
            Safer.d(true, null);
            return;
        }
        int i = switchSafeModel.seconds;
        if (i == 0) {
            Safer.d(false, null);
        } else if (i > 0) {
            Safer.c();
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void a() {
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void c(SocketModel socketModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("收到监控中心消息：", JSON.toJSONString(socketModel)));
        if (socketModel instanceof RemoteBrakeModel) {
            byte b2 = ((RemoteBrakeModel) socketModel).cmd;
            if (b2 == 1) {
                b(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.RemoteBrake, null, false, 6, null));
                return;
            } else {
                if (b2 == 0) {
                    g();
                    return;
                }
                return;
            }
        }
        if (!(socketModel instanceof SafeModel)) {
            if (socketModel instanceof SafeModeModel) {
                SafeModeManager.k(((SafeModeModel) socketModel).mode);
                return;
            }
            if (socketModel instanceof CollisionBrakeModel) {
                b(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.RemoteCollision, null, false, 6, null));
                return;
            }
            if (socketModel instanceof SwitchSafeModel) {
                StringBuilder sb = new StringBuilder();
                sb.append("监控中心下发：");
                SwitchSafeModel switchSafeModel = (SwitchSafeModel) socketModel;
                sb.append(switchSafeModel.open ? "打开" : "关闭");
                sb.append("安全, seconds: ");
                sb.append(switchSafeModel.seconds);
                cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
                i(switchSafeModel);
                return;
            }
            return;
        }
        SafeModel safeModel = (SafeModel) socketModel;
        byte b3 = safeModel.cmd;
        if (b3 == 1) {
            if (safeModel.operation == 1) {
                SafeCommandAdapter.e(FlameOutReason.CONTROL);
            } else {
                SafeCommandAdapter.h(FlameOutReason.CONTROL, null, 2, null);
            }
            if (safeModel.operation == 1) {
                if (!cn.mucang.android.jiakaoyi.signal.com.p.b()) {
                    FlameOutMonitor.c(BrakeReason.RemoteFlame);
                    return;
                }
                int i = R.string.teachbase_remote_open_engine_hint;
                TtsManager.r(k0.a(i), TtsGrade.GlobalTip);
                cn.mucang.android.core.utils.u.h(k0.a(i));
                return;
            }
            return;
        }
        if (b3 == 3) {
            byte b4 = safeModel.operation;
            if (b4 == 1) {
                b(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.RemoteBrake, null, false, 6, null));
                return;
            } else {
                if (b4 == 0) {
                    g();
                    return;
                }
                return;
            }
        }
        if (b3 == 2) {
            byte b5 = safeModel.operation;
            if (b5 == 1) {
                b(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.RemoteLock, null, false, 6, null));
                SafeCommandAdapter.a(FlameOutReason.APP, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.RemoteSocketManager$onMessage$1
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心下发锁车");
                        LiveBus.d(LockCarType.class).l(LockCarType.CONTROL);
                    }
                });
            } else if (b5 == 0) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心下发解锁");
                SafeCommandAdapter.h(FlameOutReason.APP, null, 2, null);
            }
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void onConnect() {
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (signalGetter.d().h() || signalGetter.d().k()) {
            cn.mucang.jiakaoyi.uilib.socket.u.r(d(signalGetter));
        }
    }
}
