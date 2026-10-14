package cn.mucang.jiakaoyi.uilib.gear;

import android.text.TextUtils;
import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.d0;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.gearsensor.h;
import cn.mucang.jiakaoyi.uilib.gear.entity.GearEntity;
import cn.mucang.jiakaoyi.uilib.socket.model.GearSetModel;
import cn.mucang.jiakaoyi.uilib.socket.u;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.o0;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.BuildConfig;
import com.tencent.open.SocialConstants;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0017\u001a\u00020\u0018J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u0012H\u0002J\u001e\u0010\u001b\u001a\u00020\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0012H\u0002J\u0012\u0010!\u001a\u00020\u00182\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0016\u0010\"\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u0004J\b\u0010$\u001a\u00020\u0018H\u0002J\b\u0010%\u001a\u00020\u0018H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;", "", "()V", "HardwareAreaAlgType", "", "RESP_FAIL_TRY_MAX_COUNTS", "SET_GEAR_ALG", "SoftwareAreaAlgType", "TAG", "", "algType", "comStateListener", "Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;", "gearData", "", TtmlNode.ATTR_ID, "Ljava/lang/Integer;", "isInited", "", "messageSender", "Lcn/mucang/android/jiakaoyi/signal/communicate/MessageSender;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSetRemoteGearResponse;", "respFailTryCounts", "init", "", "initBeforeSend", "isMasterSupported", BuildConfig.FLAVOR_type, SocialConstants.PARAM_SEND_MSG, "throwable", "", "reportResult", "success", "sendGear2Master", "sendGearALGData", "type", "sendGearALGType", "unregisterComListener", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RemoteGearSetter {
    private static byte[] b;
    private static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f9325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Integer f9326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f9327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static MessageSender<d0> f9328g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RemoteGearSetter f9324a = new RemoteGearSetter();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ComStateListener f9329h = new ComStateListener() { // from class: cn.mucang.jiakaoyi.uilib.gear.c
        @Override // cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener
        public final void a(ComStateListener.State state, Throwable th) {
            RemoteGearSetter.i(state, th);
        }
    };

    private RemoteGearSetter() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ComStateListener.State state, Throwable th) {
        byte[] bArr;
        boolean z = m.h().j(ComName.MasterNet) == ComState.Valid;
        RemoteGearSetter remoteGearSetter = f9324a;
        q(remoteGearSetter, r.m("主控连接回调：", Boolean.valueOf(z)), null, 2, null);
        if (!z || (bArr = b) == null) {
            return;
        }
        r.c(bArr);
        remoteGearSetter.t(bArr, f9327f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(GearSetModel gearSetModel) {
        RemoteGearSetter remoteGearSetter = f9324a;
        q(remoteGearSetter, "收到”档位标定“请求, id=" + gearSetModel.id + ",type " + gearSetModel.algType + ",data=" + ((Object) Arrays.toString(gearSetModel.gearData)), null, 2, null);
        GearDataConverter.a aVar = GearDataConverter.f9334a;
        byte[] bArrF = aVar.f(gearSetModel.gearData, false);
        GearEntity gearEntityA = aVar.a(new cn.mucang.android.jiakaoyi.signal.communicate.r(bArrF, true));
        q(remoteGearSetter, r.m("解码后档位数据：", JSON.toJSONString(gearEntityA)), null, 2, null);
        if (bArrF != null) {
            if (!(bArrF.length == 0)) {
                remoteGearSetter.l();
                f9326e = Integer.valueOf(gearSetModel.id);
                int i = gearSetModel.algType;
                if (i != 2) {
                    remoteGearSetter.t(bArrF, i);
                    return;
                }
                List<GearPose> listB = gearEntityA != null ? cn.mucang.jiakaoyi.uilib.gear.entity.a.b(gearEntityA) : null;
                if (listB != null) {
                    h.I(true);
                    h.H(listB);
                }
                remoteGearSetter.r(listB != null);
            }
        }
    }

    private final void l() {
        v();
        m.h().a(f9329h);
    }

    private final boolean m() {
        int i;
        if (cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
            q(this, "自动挡不支持档位标定", null, 2, null);
            return false;
        }
        if (AppUtils.h() || AppUtils.d() || (i = DeviceUtils.i()) >= 42) {
            return true;
        }
        q(this, "主控版本:" + i + ", < 42, 不支持远程档位标定", null, 2, null);
        return false;
    }

    private final void p(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("RemoteGearSetter:" + ((Object) str) + ((Object) (th != null ? r.m("\n", q0.d(th)) : "")));
    }

    static /* synthetic */ void q(RemoteGearSetter remoteGearSetter, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        remoteGearSetter.p(str, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(boolean z) {
        if (f9326e != null) {
            q(this, "上报服务器档位标定结果: id=" + f9326e + " , " + z, null, 2, null);
            Integer num = f9326e;
            r.c(num);
            u.k(num.intValue(), z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(final byte[] bArr) {
        if (bArr != null) {
            if (!(bArr.length == 0)) {
                if (m.h().j(ComName.MasterNet) != ComState.Valid) {
                    q(this, "主控未连接", null, 2, null);
                    return;
                }
                MessageSender<d0> messageSender = f9328g;
                if (messageSender != null) {
                    messageSender.a();
                }
                MessageSender<d0> messageSender2 = new MessageSender<>(d0.class, 3, 4000L, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.RemoteGearSetter$sendGear2Master$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        RemoteGearSetter.q(RemoteGearSetter.f9324a, "下发远程档位数据", null, 2, null);
                        m.h().Q(Cmd.OrderRemoteGearCalibration, bArr);
                    }
                }, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.RemoteGearSetter$sendGear2Master$2
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        RemoteGearSetter remoteGearSetter = RemoteGearSetter.f9324a;
                        RemoteGearSetter.q(remoteGearSetter, "挡位数据下发超时", null, 2, null);
                        cn.mucang.android.core.utils.u.h("挡位数据下发超时");
                        remoteGearSetter.r(false);
                        remoteGearSetter.v();
                    }
                }, new Function1<d0, v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.RemoteGearSetter$sendGear2Master$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(d0 d0Var) {
                        invoke2(d0Var);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(d0 it) {
                        GearEntity gearEntityA;
                        List<GearPose> listB;
                        r.e(it, "it");
                        RemoteGearSetter remoteGearSetter = RemoteGearSetter.f9324a;
                        RemoteGearSetter.q(remoteGearSetter, "远程档位数据下发：" + ((Object) it.b()) + " ,code=" + it.a(), null, 2, null);
                        cn.mucang.android.core.utils.u.h(r.m("档位数据设置：", it.b()));
                        if (!it.f5428a) {
                            RemoteGearSetter.c++;
                            if (RemoteGearSetter.c <= 3) {
                                RemoteGearSetter.q(remoteGearSetter, r.m("远程档位数据下发,主控响应失败重试：", Integer.valueOf(RemoteGearSetter.c)), null, 2, null);
                                remoteGearSetter.s(bArr);
                                return;
                            } else {
                                remoteGearSetter.r(false);
                                remoteGearSetter.v();
                                return;
                            }
                        }
                        if (RemoteGearSetter.f9327f == 1 && (gearEntityA = GearDataConverter.f9334a.a(new cn.mucang.android.jiakaoyi.signal.communicate.r(bArr, true))) != null && (listB = cn.mucang.jiakaoyi.uilib.gear.entity.a.b(gearEntityA)) != null) {
                            if (AppUtils.k()) {
                                new o0().e(listB);
                            } else {
                                h.I(true);
                                h.H(listB);
                            }
                        }
                        remoteGearSetter.r(true);
                        remoteGearSetter.v();
                    }
                });
                f9328g = messageSender2;
                if (messageSender2 == null) {
                    return;
                }
                messageSender2.i();
                return;
            }
        }
        q(this, "档位数据为空", null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u() {
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.c.class, 0, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.RemoteGearSetter$sendGearALGType$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RemoteGearSetter.q(RemoteGearSetter.f9324a, r.m("下发挡位算法类型指令 类型：", Integer.valueOf(RemoteGearSetter.f9327f)), null, 2, null);
                cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
                vVar.c((byte) 4);
                vVar.c((byte) RemoteGearSetter.f9327f);
                m.h().Q(Cmd.AutoAssist, vVar.b());
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }
        }, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.RemoteGearSetter$sendGearALGType$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RemoteGearSetter remoteGearSetter = RemoteGearSetter.f9324a;
                RemoteGearSetter.q(remoteGearSetter, "下发挡位算法类型指令超时", null, 2, null);
                cn.mucang.android.core.utils.u.h("下发挡位算法类型指令超时");
                remoteGearSetter.r(false);
                remoteGearSetter.v();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.c, v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.RemoteGearSetter$sendGearALGType$3
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.c it) {
                r.e(it, "it");
                RemoteGearSetter remoteGearSetter = RemoteGearSetter.f9324a;
                RemoteGearSetter.q(remoteGearSetter, "下发挡位算法类型指令：" + it.f5428a + ' ', null, 2, null);
                if (it.f5428a) {
                    RemoteGearSetter.c = 0;
                    remoteGearSetter.s(RemoteGearSetter.b);
                    return;
                }
                cn.mucang.android.core.utils.u.h("下发挡位算法类型指令失败");
                RemoteGearSetter.c++;
                if (RemoteGearSetter.c <= 3) {
                    RemoteGearSetter.q(remoteGearSetter, r.m("下发挡位算法类型指令,主控响应失败重试：", Integer.valueOf(RemoteGearSetter.c)), null, 2, null);
                    remoteGearSetter.u();
                } else {
                    remoteGearSetter.r(false);
                    remoteGearSetter.v();
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.c cVar) {
                invoke2(cVar);
                return v.f15822a;
            }
        }).i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        MessageSender<d0> messageSender = f9328g;
        if (messageSender != null) {
            messageSender.a();
        }
        c = 0;
        f9326e = null;
        b = null;
        m.h().N(f9329h);
    }

    public final void j() {
        if (!f9325d || m()) {
            LiveBus.d(GearSetModel.class).i(new a0() { // from class: cn.mucang.jiakaoyi.uilib.gear.d
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    RemoteGearSetter.k((GearSetModel) obj);
                }
            });
            GearDataReporter.f9320a.k();
            f9325d = true;
        }
    }

    public final void t(byte[] gearData, int i) {
        r.e(gearData, "gearData");
        b = gearData;
        f9327f = i;
        c = 0;
        u();
    }
}
