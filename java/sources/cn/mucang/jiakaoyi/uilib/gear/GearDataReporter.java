package cn.mucang.jiakaoyi.uilib.gear;

import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.s;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.gearsensor.h;
import cn.mucang.jiakaoyi.uilib.gear.entity.GearEntity;
import com.alibaba.fastjson.JSON;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mobile.auth.BuildConfig;
import com.tencent.open.SocialConstants;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000M\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004*\u0001\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0006H\u0002J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0011J\b\u0010\u0017\u001a\u00020\rH\u0002J\u001e\u0010\u0018\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u001a\u0010\u001b\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0011H\u0002J\b\u0010 \u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;", "", "()V", "RESP_FAIL_TRY_MAX_COUNTS", "", "TAG", "", "comStateListener", "Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;", "gearDataListener", "cn/mucang/jiakaoyi/uilib/gear/GearDataReporter$gearDataListener$1", "Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$gearDataListener$1;", "isGetIng", "", "isInited", "respFailTryCounts", "debugToast", "", SocialConstants.PARAM_SEND_MSG, "getGearFromMaster", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/gear/GetGearDataListener;", "init", "isSupportReport", BuildConfig.FLAVOR_type, "throwable", "", "postGearData", "gearData", "", "algType", "retryGetGearFromMaster", "unregisterComListener", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearDataReporter {
    private static int b;
    private static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f9321d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GearDataReporter f9320a = new GearDataReporter();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f9322e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ComStateListener f9323f = new ComStateListener() { // from class: cn.mucang.jiakaoyi.uilib.gear.b
        @Override // cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener
        public final void a(ComStateListener.State state, Throwable th) {
            GearDataReporter.h(state, th);
        }
    };

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/gear/GearDataReporter$gearDataListener$1", "Lcn/mucang/jiakaoyi/uilib/gear/GetGearDataListener;", "onResult", "", "gearResponse", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveGetRemoteGearResponse;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements GetGearDataListener {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.gear.GetGearDataListener
        public void a(s gearResponse) {
            r.e(gearResponse, "gearResponse");
            if (!gearResponse.f5428a) {
                GearDataReporter gearDataReporter = GearDataReporter.f9320a;
                GearDataReporter.b++;
                if (GearDataReporter.b > 3) {
                    gearDataReporter.r();
                    return;
                } else {
                    GearDataReporter.o(gearDataReporter, r.m("主控响应失败重试：", Integer.valueOf(GearDataReporter.b)), null, 2, null);
                    gearDataReporter.q();
                    return;
                }
            }
            byte[] bArrA = gearResponse.b().a();
            GearDataReporter gearDataReporter2 = GearDataReporter.f9320a;
            GearDataReporter.o(gearDataReporter2, "data: algType " + gearResponse.a() + " ; pos=" + gearResponse.b().d() + ' ' + ((Object) Arrays.toString(bArrA)), null, 2, null);
            gearDataReporter2.p(bArrA, gearResponse.a());
            gearDataReporter2.r();
        }
    }

    private GearDataReporter() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ComStateListener.State state, Throwable th) {
        boolean z = m.h().j(ComName.MasterNet) == ComState.Valid;
        GearDataReporter gearDataReporter = f9320a;
        o(gearDataReporter, r.m("主控连接回调：", Boolean.valueOf(z)), null, 2, null);
        if (z) {
            gearDataReporter.j(f9322e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(String str) {
        if (MucangConfig.v()) {
            u.h(str);
        }
    }

    private final boolean l() {
        int i;
        if (cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
            o(this, "自动挡没有档位模块", null, 2, null);
            return false;
        }
        if (AppUtils.h() || AppUtils.d() || (i = DeviceUtils.i()) >= 42) {
            return true;
        }
        o(this, "主控版本:" + i + ", < 42, 不支持远程档位标定", null, 2, null);
        return false;
    }

    private final void n(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("RemoteGearReporter:" + ((Object) str) + ((Object) (th != null ? r.m("\n", q0.d(th)) : "")));
    }

    static /* synthetic */ void o(GearDataReporter gearDataReporter, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        gearDataReporter.n(str, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(byte[] bArr, int i) {
        if (bArr != null) {
            GearDataConverter.a aVar = GearDataConverter.f9334a;
            byte[] bArrF = aVar.f(bArr, true);
            if (bArrF != null) {
                if (true ^ (bArrF.length == 0)) {
                    o(this, r.m("解码后档位数据：", JSON.toJSONString(aVar.b(ByteBuffer.wrap(bArrF)))), null, 2, null);
                    i("档位数据上报成功");
                    o(this, r.m("档位数据上报成功 算法类型：", Integer.valueOf(i)), null, 2, null);
                    cn.mucang.jiakaoyi.uilib.socket.u.j(bArrF, (byte) i);
                    return;
                }
            }
            o(this, "档位数据转换失败", null, 2, null);
            i("档位数据转换失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        j(f9322e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        o(this, "unregisterComListener", null, 2, null);
        m.h().N(f9323f);
    }

    public final void j(final GetGearDataListener listener) {
        r.e(listener, "listener");
        if (m.h().j(ComName.MasterNet) != ComState.Valid) {
            o(this, "主控未连接", null, 2, null);
        } else {
            if (f9321d) {
                return;
            }
            f9321d = true;
            new MessageSender(s.class, 3, 4000L, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.GearDataReporter$getGearFromMaster$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    GearDataReporter.o(GearDataReporter.f9320a, "获取档位数据", null, 2, null);
                    m.h().Q(Cmd.OrderGetRemoteGeaData, new byte[1]);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.GearDataReporter$getGearFromMaster$2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    GearDataReporter gearDataReporter = GearDataReporter.f9320a;
                    GearDataReporter.f9321d = false;
                    GearDataReporter.o(gearDataReporter, "挡位数据获取超时", null, 2, null);
                    gearDataReporter.i("挡位数据获取超时");
                    gearDataReporter.r();
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function1<s, v>() { // from class: cn.mucang.jiakaoyi.uilib.gear.GearDataReporter$getGearFromMaster$3
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(s it) {
                    r.e(it, "it");
                    GearDataReporter gearDataReporter = GearDataReporter.f9320a;
                    GearDataReporter.f9321d = false;
                    GearDataReporter.o(gearDataReporter, r.m("获取主控档位数据：", it.c()), null, 2, null);
                    gearDataReporter.i("获取主控档位数据：" + ((Object) it.c()) + " type " + it.a());
                    listener.a(it);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(s sVar) {
                    invoke2(sVar);
                    return v.f15822a;
                }
            }).i();
        }
    }

    public final void k() {
        if (!c || l()) {
            if (!AppUtils.h() && !AppUtils.d()) {
                j(f9322e);
                m.h().a(f9323f);
                return;
            }
            if (h.u()) {
                List<GearPose> listC = h.C();
                cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("准备上报本地挡位数据： ", JSON.toJSONString(listC)));
                GearEntity gearEntity = new GearEntity();
                ArrayList arrayList = new ArrayList();
                gearEntity.setGearTracks(arrayList);
                for (GearPose gearPose : listC) {
                    r.c(gearPose);
                    arrayList.add(cn.mucang.jiakaoyi.uilib.gear.entity.a.a(gearPose));
                }
                p(GearDataConverter.f9334a.c(gearEntity), 2);
            }
        }
    }
}
