package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckAppModelState;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.api.DeviceReportApi;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\"B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0015J4\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\b2\"\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u001aj\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b`\u001bH\u0002J\u0006\u0010\u001c\u001a\u00020\u0015J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0010H\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "appCheckList", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;", "[Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;", "appStatusInt", "", "duration", "", "hasInit", "", "isAlive", "isStarting", "mSignalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;", Constant.START_TIME, "checkAndReport", "", "exit", "handleStatus", "key", "map", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "init", "onSignalChanged", "signalGetter", "report", SpeechUtility.TAG_RESOURCE_RESULT, "", "ModuleStatusModel", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ModuleStatusReporter implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    private static boolean b;
    private static long c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f7615e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f7617g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static cn.mucang.android.jiakaoyi.signal.c.e f7618h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ModuleStatusReporter f7613a = new ModuleStatusReporter();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ModuleStatusModel f7614d = new ModuleStatusModel();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final CheckAppModelState[] f7616f = CheckAppModelState.values();
    private static volatile boolean i = true;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010&\u001a\u00020'R6\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR6\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR6\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\nR6\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR6\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\nR6\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\b\"\u0004\b\u0019\u0010\nR6\u0010\u001a\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\nR6\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\b\"\u0004\b\u001f\u0010\nR6\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\b\"\u0004\b\"\u0010\nR6\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\b\"\u0004\b%\u0010\n¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;", "Ljava/io/Serializable;", "()V", "ai", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getAi", "()Ljava/util/HashMap;", "setAi", "(Ljava/util/HashMap;)V", "appModule", "getAppModule", "setAppModule", "b2Main", "getB2Main", "setB2Main", "collect", "getCollect", "setCollect", "gear", "getGear", "setGear", "main", "getMain", "setMain", "safe", "getSafe", "setSafe", "throttle", "getThrottle", "setThrottle", "ultrasound1", "getUltrasound1", "setUltrasound1", "ultrasound2", "getUltrasound2", "setUltrasound2", "clear", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class ModuleStatusModel implements Serializable {
        private HashMap<Integer, Integer> main = new HashMap<>();
        private HashMap<Integer, Integer> collect = new HashMap<>();
        private HashMap<Integer, Integer> ultrasound1 = new HashMap<>();
        private HashMap<Integer, Integer> ultrasound2 = new HashMap<>();
        private HashMap<Integer, Integer> safe = new HashMap<>();
        private HashMap<Integer, Integer> throttle = new HashMap<>();
        private HashMap<Integer, Integer> ai = new HashMap<>();
        private HashMap<Integer, Integer> appModule = new HashMap<>();
        private HashMap<Integer, Integer> gear = new HashMap<>();
        private HashMap<Integer, Integer> b2Main = new HashMap<>();

        public final void clear() {
            this.main.clear();
            this.collect.clear();
            this.ultrasound1.clear();
            this.ultrasound2.clear();
            this.safe.clear();
            this.throttle.clear();
            this.ai.clear();
            this.appModule.clear();
            this.gear.clear();
            this.b2Main.clear();
        }

        public final HashMap<Integer, Integer> getAi() {
            return this.ai;
        }

        public final HashMap<Integer, Integer> getAppModule() {
            return this.appModule;
        }

        public final HashMap<Integer, Integer> getB2Main() {
            return this.b2Main;
        }

        public final HashMap<Integer, Integer> getCollect() {
            return this.collect;
        }

        public final HashMap<Integer, Integer> getGear() {
            return this.gear;
        }

        public final HashMap<Integer, Integer> getMain() {
            return this.main;
        }

        public final HashMap<Integer, Integer> getSafe() {
            return this.safe;
        }

        public final HashMap<Integer, Integer> getThrottle() {
            return this.throttle;
        }

        public final HashMap<Integer, Integer> getUltrasound1() {
            return this.ultrasound1;
        }

        public final HashMap<Integer, Integer> getUltrasound2() {
            return this.ultrasound2;
        }

        public final void setAi(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.ai = map;
        }

        public final void setAppModule(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.appModule = map;
        }

        public final void setB2Main(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.b2Main = map;
        }

        public final void setCollect(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.collect = map;
        }

        public final void setGear(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.gear = map;
        }

        public final void setMain(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.main = map;
        }

        public final void setSafe(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.safe = map;
        }

        public final void setThrottle(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.throttle = map;
        }

        public final void setUltrasound1(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.ultrasound1 = map;
        }

        public final void setUltrasound2(HashMap<Integer, Integer> map) {
            kotlin.jvm.internal.r.e(map, "<set-?>");
            this.ultrasound2 = map;
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7619a;

        static {
            int[] iArr = new int[CheckAppModelState.values().length];
            iArr[CheckAppModelState.M_80001.ordinal()] = 1;
            iArr[CheckAppModelState.M_80002.ordinal()] = 2;
            iArr[CheckAppModelState.M_80003.ordinal()] = 3;
            iArr[CheckAppModelState.M_80004.ordinal()] = 4;
            iArr[CheckAppModelState.M_80005.ordinal()] = 5;
            iArr[CheckAppModelState.M_80006.ordinal()] = 6;
            f7619a = iArr;
        }
    }

    private ModuleStatusReporter() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:114:0x014f  */
    /* JADX WARN: Code duplicated, block: B:94:0x0102  */
    private final void a() {
        CarModel carModelD;
        ReceiveSenorInfo receiveSenorInfo;
        CarModel carModelD2;
        ReceiveSenorInfo receiveSenorInfo2;
        CarModel carModelD3;
        ReceiveSenorInfo receiveSenorInfo3;
        CarModel carModelD4;
        ReceiveSenorInfo receiveSenorInfo4;
        CarModel carModelD5;
        ReceiveSenorInfo receiveSenorInfo5;
        CarModel carModelD6;
        ReceiveSenorInfo receiveSenorInfo6;
        CarModel carModelD7;
        ReceiveSenorInfo receiveSenorInfo7;
        cn.mucang.android.jiakaoyi.signal.ai.a aVarA;
        CarModel carModelD8;
        boolean z;
        cn.mucang.android.jiakaoyi.signal.c.e eVar = f7618h;
        int i2 = (eVar == null || (carModelD = eVar.d()) == null || (receiveSenorInfo = carModelD.G) == null) ? 0 : receiveSenorInfo.mainBoardState;
        ModuleStatusModel moduleStatusModel = f7614d;
        c(i2, moduleStatusModel.getMain());
        c((eVar == null || (carModelD2 = eVar.d()) == null || (receiveSenorInfo2 = carModelD2.G) == null) ? 0 : receiveSenorInfo2.collectBoardState, moduleStatusModel.getCollect());
        c((eVar == null || (carModelD3 = eVar.d()) == null || (receiveSenorInfo3 = carModelD3.G) == null) ? 0 : receiveSenorInfo3.ultrasonic1State, moduleStatusModel.getUltrasound1());
        c((eVar == null || (carModelD4 = eVar.d()) == null || (receiveSenorInfo4 = carModelD4.G) == null) ? 0 : receiveSenorInfo4.ultrasonic2State, moduleStatusModel.getUltrasound2());
        c((eVar == null || (carModelD5 = eVar.d()) == null || (receiveSenorInfo5 = carModelD5.G) == null) ? 0 : receiveSenorInfo5.safeBoardState, moduleStatusModel.getSafe());
        c((eVar == null || (carModelD6 = eVar.d()) == null || (receiveSenorInfo6 = carModelD6.G) == null) ? 0 : receiveSenorInfo6.throttleBoardState, moduleStatusModel.getThrottle());
        c((eVar == null || (carModelD7 = eVar.d()) == null || (receiveSenorInfo7 = carModelD7.G) == null) ? 0 : receiveSenorInfo7.gearBoardState, moduleStatusModel.getGear());
        c((eVar == null || (aVarA = eVar.a()) == null) ? 0 : aVarA.f5210e, moduleStatusModel.getAi());
        c((eVar == null || (carModelD8 = eVar.d()) == null) ? 0 : carModelD8.O, moduleStatusModel.getB2Main());
        boolean zF = LocalConfigManager.f(LocalConfig.CalibrateWheel);
        if (AppUtils.n() || AppUtils.c()) {
            for (CheckAppModelState checkAppModelState : f7616f) {
                switch (a.f7619a[checkAppModelState.ordinal()]) {
                    case 1:
                        if (cn.mucang.android.jiakaoyi.signal.b.c.c()) {
                            z = false;
                        } else {
                            z = true;
                        }
                        break;
                    case 2:
                        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().j(ComName.AiNet).staticsNormal()) {
                            z = false;
                        } else {
                            z = true;
                        }
                        break;
                    case 3:
                        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().j(ComName.MasterNet).staticsNormal()) {
                            z = false;
                        } else {
                            z = true;
                        }
                        break;
                    case 4:
                        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().j(ComName.GpsNet).staticsNormal()) {
                            z = false;
                        } else {
                            z = true;
                        }
                        break;
                    case 5:
                        if (zF || cn.mucang.android.jiakaoyi.teachingk2.z0.f.j()) {
                            z = false;
                        } else {
                            z = true;
                        }
                        break;
                    case 6:
                        if (!zF || cn.mucang.android.jiakaoyi.teachingk2.z0.f.j()) {
                            z = false;
                        } else {
                            z = true;
                        }
                        break;
                    default:
                        z = false;
                        break;
                }
                f7615e = cn.mucang.android.jiakaoyi.signal.d.j.a.f(f7615e, checkAppModelState.getCheckIndex(), z);
            }
            c(f7615e, f7614d.getAppModule());
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (c == 0) {
            c = jCurrentTimeMillis;
        }
        if (jCurrentTimeMillis - c > DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
            c = jCurrentTimeMillis;
            ModuleStatusModel moduleStatusModel2 = f7614d;
            String jSONString = JSON.toJSONString(moduleStatusModel2, SerializerFeature.DisableCircularReferenceDetect);
            kotlin.jvm.internal.r.d(jSONString, "toJSONString(model, Seri…eCircularReferenceDetect)");
            h(jSONString);
            moduleStatusModel2.clear();
        }
    }

    private final void c(int i2, HashMap<Integer, Integer> map) {
        if (i2 != 0) {
            if (map.get(Integer.valueOf(i2)) == null) {
                map.put(Integer.valueOf(i2), 1);
                return;
            }
            Integer numValueOf = Integer.valueOf(i2);
            Integer num = map.get(Integer.valueOf(i2));
            kotlin.jvm.internal.r.c(num);
            map.put(numValueOf, Integer.valueOf(num.intValue() + 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e() throws InterruptedException {
        while (i) {
            if (!f7617g && cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().k() != null) {
                f7617g = true;
                cn.mucang.android.jiakaoyi.framework.log.f.f("开始上报各模块状态");
            }
            if (f7617g) {
                f7613a.a();
            }
            Thread.sleep(100L);
        }
    }

    private final void h(final String str) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.b
            @Override // java.lang.Runnable
            public final void run() {
                ModuleStatusReporter.i(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String result) {
        kotlin.jvm.internal.r.e(result, "$result");
        try {
            try {
                try {
                    if (cn.mucang.jiakaoyi.uilib.socket.u.m(result)) {
                    } else {
                        new DeviceReportApi().n(result);
                    }
                } catch (Exception e2) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("模块故障数据上报失败:", e2.getMessage()));
                }
            } finally {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("上报模块故障:", result));
            }
        } catch (Exception unused) {
            new DeviceReportApi().n(result);
        }
    }

    public final void b() {
        i = false;
    }

    public final void d() {
        if (b) {
            return;
        }
        b = true;
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        dVar.n(this);
        dVar.b(this);
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.a
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                ModuleStatusReporter.e();
            }
        }).start();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        f7618h = signalGetter;
    }
}
