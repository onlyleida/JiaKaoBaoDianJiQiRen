package cn.mucang.jiakaoyi.sundial.client;

import android.app.Activity;
import android.app.Application;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.permission.model.PermissionsResult;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoFactory;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.jiakaoyi.sundial.client.model.ClientCarModel;
import cn.mucang.jiakaoyi.sundial.client.model.LeaningTime;
import cn.mucang.jiakaoyi.sundial.service.JkySundialDevice;
import cn.mucang.jiakaoyi.sundial.service.JkySundialService;
import cn.mucang.jiakaoyi.sundial.service.strategy.JkyDataStrategy;
import cn.mucang.jiakaoyi.sundial.service.strategy.JkyLocationStrategy;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.library.Sundial;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.flow.b2;
import kotlinx.coroutines.flow.l2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001;B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0002J\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010 \u001a\u00020\u001eJ\u0006\u0010!\u001a\u00020\u001eJ\u0006\u0010\"\u001a\u00020\u0006J\u0006\u0010#\u001a\u00020\u001eJ\u000e\u0010$\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010%\u001a\u00020\u001eH\u0002J\u001c\u0010&\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0*J:\u0010+\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\t2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0*2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001e0*J*\u00100\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0*2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001e0*J\u0006\u00101\u001a\u00020\tJ\b\u0010\r\u001a\u00020\tH\u0002J\u0010\u00102\u001a\u00020\u001e2\u0006\u00103\u001a\u000204H\u0016J\u0006\u00105\u001a\u00020\u001eJ\u000e\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\u0014J\u0010\u00108\u001a\u00020\u001e2\u0006\u00109\u001a\u00020\u0004H\u0002J\u0006\u0010:\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\n\"\u0004\b\u0018\u0010\fR\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/SundialClient;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "carModel", "Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;", "config", "Lcn/mucang/jiakaoyi/sundial/client/SundialClient$Config;", "isStudentFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "setStudentFlow", "(Lkotlinx/coroutines/flow/MutableStateFlow;)V", "isSupport", "jkySundialService", "Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;", "lastDistance", "", "lastEngineStart", "latestPicFile", "Ljava/io/File;", "learnTimeFlow", "Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;", "getLearnTimeFlow", "setLearnTimeFlow", "signalChannel", "Lkotlinx/coroutines/channels/Channel;", "sundialMiniWindow", "Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;", "checkPermission", "", "closeAllPage", "destroy", "forceStudentLogout", "getConfig", "hideMiniWindow", "init", "initInternal", "interceptCoachLogin", "activity", "Landroid/app/Activity;", "next", "Lkotlin/Function0;", "interceptLogin", "xyToken", "", "isK2", "back", "interceptLogout", "isStudentLogin", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "openPage", "saveFacePic", "file", "sendObd", "clientCarModel", "showMiniWindow", "Config", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SundialClient implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f9112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f9113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static float f9114f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static File f9115g;
    private static JkySundialService l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SundialClient f9111a = new SundialClient();
    private static b2<LeaningTime> b = l2.a(new LeaningTime(false, 0));
    private static b2<Boolean> c = l2.a(Boolean.TRUE);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ClientCarModel f9116h = new ClientCarModel();
    private static final kotlinx.coroutines.channels.f<ClientCarModel> i = kotlinx.coroutines.channels.h.b(-1, null, null, 6, null);
    private static final SundialMiniWindow j = new SundialMiniWindow();
    private static a k = new a();

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/SundialClient$Config;", "", "()V", "needInitCamera", "", "getNeedInitCamera", "()Z", "setNeedInitCamera", "(Z)V", "sourceVideoFactory", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;", "getSourceVideoFactory", "()Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;", "setSourceVideoFactory", "(Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;)V", "sundialListener", "Lcn/mucang/jiakaoyi/sundial/client/SundialListener;", "getSundialListener", "()Lcn/mucang/jiakaoyi/sundial/client/SundialListener;", "setSundialListener", "(Lcn/mucang/jiakaoyi/sundial/client/SundialListener;)V", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SundialListener f9117a;
        private SourceVideoFactory b;

        /* JADX INFO: renamed from: a, reason: from getter */
        public final SourceVideoFactory getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final SundialListener getF9117a() {
            return this.f9117a;
        }

        public final void c(boolean z) {
        }

        public final void d(SourceVideoFactory sourceVideoFactory) {
            this.b = sourceVideoFactory;
        }

        public final void e(SundialListener sundialListener) {
            this.f9117a = sundialListener;
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/jiakaoyi/sundial/client/SundialClient$init$1", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;", "createSource", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements SourceVideoFactory {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoFactory
        public SourceVideoStream a() {
            return new DefaultCameraAdapter(CameraIntent.FACE);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialClient$onSignalChanged$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$onSignalChanged$1", f = "SundialClient.kt", l = {222}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ cn.mucang.android.jiakaoyi.signal.c.e $signalGetter;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(cn.mucang.android.jiakaoyi.signal.c.e eVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$signalGetter = eVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$signalGetter, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                SundialClient.f9116h.rpm = this.$signalGetter.d().f5265a;
                SundialClient.f9116h.speed = this.$signalGetter.d().b;
                SundialClient.f9116h.gpsSpeed = this.$signalGetter.d().c;
                SundialClient.f9116h.keyState = this.$signalGetter.d().p.id;
                SundialClient.f9116h.totalDistance = this.$signalGetter.d().B;
                SundialClient.f9116h.wheelDegree = this.$signalGetter.d().r;
                SundialClient.f9116h.location = this.$signalGetter.getCurrentPosition().f5281g;
                boolean zF = this.$signalGetter.d().f();
                if (!SundialClient.f9113e && zF) {
                    SundialClient sundialClient = SundialClient.f9111a;
                    SundialClient.f9113e = true;
                    SundialClient.f9114f = this.$signalGetter.d().B;
                } else if (SundialClient.f9113e && !zF) {
                    SundialClient sundialClient2 = SundialClient.f9111a;
                    SundialClient.f9113e = false;
                }
                SundialClient.f9116h.currentDistance = zF ? this.$signalGetter.d().B - SundialClient.f9114f : BitmapDescriptorFactory.HUE_RED;
                kotlinx.coroutines.channels.f fVar = SundialClient.i;
                ClientCarModel clientCarModel = SundialClient.f9116h;
                this.label = 1;
                if (fVar.F(clientCarModel, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return v.f15822a;
        }
    }

    private SundialClient() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean B() {
        String strB;
        SundialListener f9117a = k.getF9117a();
        boolean zA = f9117a == null ? false : f9117a.a();
        SundialListener f9117a2 = k.getF9117a();
        String string = "";
        if (f9117a2 != null && (strB = f9117a2.b()) != null) {
            string = strB;
        }
        int length = string.length();
        if (1 <= length && length <= 14) {
            StringBuilder sb = new StringBuilder(r.m("mcwlhy", string));
            int length2 = sb.length() - 15;
            if (length2 > 0) {
                sb.delete(0, length2);
            } else {
                int iAbs = Math.abs(length2);
                if (iAbs > 0) {
                    int i2 = 0;
                    do {
                        i2++;
                        sb.append("0");
                    } while (i2 < iAbs);
                }
            }
            string = sb.toString();
            r.d(string, "result.toString()");
        }
        Sundial.support(string);
        if (zA) {
            if (DeviceUtils.c().length() > 0) {
                n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.client.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        SundialClient.C();
                    }
                });
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("计时SDK配置信息 imei:" + string + " enable:" + zA);
        return zA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C() {
        Sundial.bindDeviceNum(DeviceUtils.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(ClientCarModel clientCarModel) {
        JkySundialDevice jkySundialDeviceB;
        JkyLocationStrategy jkyLocationStrategyB;
        JkySundialDevice jkySundialDeviceB2;
        JkyDataStrategy jkyDataStrategyA;
        CarModel carModel = new CarModel();
        clientCarModel.toServiceCarModel(carModel);
        JkySundialService jkySundialService = l;
        if (jkySundialService != null && (jkySundialDeviceB2 = jkySundialService.getC()) != null && (jkyDataStrategyA = jkySundialDeviceB2.getF9167a()) != null) {
            jkyDataStrategyA.a(carModel);
        }
        JkySundialService jkySundialService2 = l;
        if (jkySundialService2 == null || (jkySundialDeviceB = jkySundialService2.getC()) == null || (jkyLocationStrategyB = jkySundialDeviceB.getB()) == null) {
            return;
        }
        jkyLocationStrategyB.a(clientCarModel.location);
    }

    private final void o() {
        String[] strArr = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.READ_PHONE_STATE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
        if (!z.b((String[]) Arrays.copyOf(strArr, 5))) {
            z.d(MucangConfig.i(), new f.a.a.a.p009n.c.a() { // from class: cn.mucang.jiakaoyi.sundial.client.f
                @Override // f.a.a.a.p009n.c.a
                public final void permissionsResult(PermissionsResult permissionsResult) {
                    SundialClient.p(permissionsResult);
                }
            }, (String[]) Arrays.copyOf(strArr, 5));
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o("计时已获取所有权限");
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(PermissionsResult permissionsResult) {
        if (permissionsResult.getGrantedAll()) {
            f9111a.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(a config) {
        String strB;
        r.e(config, "$config");
        SundialClient sundialClient = f9111a;
        boolean zB = sundialClient.B();
        f9112d = zB;
        if (zB) {
            SundialListener f9117a = config.getF9117a();
            Integer numValueOf = null;
            if (f9117a != null && (strB = f9117a.b()) != null) {
                numValueOf = Integer.valueOf(strB.length());
            }
            r.c(numValueOf);
            if (numValueOf.intValue() < 15) {
                sundialClient.o();
            } else {
                sundialClient.w();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        if (l == null) {
            JkySundialService jkySundialService = new JkySundialService();
            l = jkySundialService;
            r.c(jkySundialService);
            jkySundialService.e();
        }
        cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "Client:计时器终端初始化");
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new SundialClient$initInternal$1(null), 3, null);
    }

    public final b2<Boolean> A() {
        return c;
    }

    public final void G() {
        if (f9112d) {
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "Service:打开计时器页面");
            Application context = MucangConfig.getContext();
            r.d(context, "getContext()");
            Sundial.startSundialPage(context);
        }
    }

    public final void I() {
        cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "showMiniWindow");
        kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new SundialClient$showMiniWindow$1(null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new AnonymousClass1(signalGetter, null), 3, null);
    }

    public final void q() {
        JkySundialService jkySundialService = l;
        if (jkySundialService != null) {
            jkySundialService.a();
        }
        l = null;
        t();
    }

    public final a r() {
        return k;
    }

    public final b2<LeaningTime> s() {
        return b;
    }

    public final void t() {
        cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "hideMiniWindow");
        j.f();
    }

    public final void u(final a config) {
        r.e(config, "config");
        k = config;
        if (config.getB() == null) {
            config.d(new b());
        }
        u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.client.g
            @Override // java.lang.Runnable
            public final void run() {
                SundialClient.v(config);
            }
        });
    }

    public final void x(Activity activity, Function0<v> next) {
        r.e(activity, "activity");
        r.e(next, "next");
        SundialListener f9117a = k.getF9117a();
        boolean z = false;
        if (f9117a != null && f9117a.a()) {
            JkySundialService jkySundialService = l;
            if (jkySundialService != null && jkySundialService.getB()) {
                z = true;
            }
            if (z) {
                kotlinx.coroutines.g.b(j0.b(), null, null, new SundialClient$interceptCoachLogin$1(activity, next, null), 3, null);
                return;
            }
        }
        next.invoke();
    }

    public final void y(Activity activity, String xyToken, boolean z, Function0<v> next, Function0<v> back) {
        r.e(activity, "activity");
        r.e(xyToken, "xyToken");
        r.e(next, "next");
        r.e(back, "back");
        SundialListener f9117a = k.getF9117a();
        boolean z2 = false;
        if (f9117a != null && f9117a.a()) {
            JkySundialService jkySundialService = l;
            if (jkySundialService != null && jkySundialService.getB()) {
                z2 = true;
            }
            if (z2) {
                kotlinx.coroutines.g.b(j0.b(), null, null, new SundialClient$interceptLogin$1(xyToken, activity, next, back, z, null), 3, null);
                return;
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：非计时设备，不做处理");
        next.invoke();
    }

    public final void z(Activity activity, Function0<v> next, Function0<v> back) {
        r.e(activity, "activity");
        r.e(next, "next");
        r.e(back, "back");
        SundialListener f9117a = k.getF9117a();
        boolean z = false;
        if (f9117a != null && f9117a.a()) {
            JkySundialService jkySundialService = l;
            if (jkySundialService != null && jkySundialService.getB()) {
                z = true;
            }
            if (z) {
                kotlinx.coroutines.g.b(j0.b(), null, null, new SundialClient$interceptLogout$1(activity, next, back, null), 3, null);
                return;
            }
        }
        next.invoke();
    }
}
