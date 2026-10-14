package cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle;

import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.lifecycle.s;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.m;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckAppModelState;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceModule;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.StepChecker;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.ui.settings.CheckModuleManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.l;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Å\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u00106\u001a\u000207H\u0002J\u0018\u00108\u001a\u0002072\u0006\u00109\u001a\u00020:2\u0006\u00105\u001a\u00020\u001aH\u0016J\u0010\u0010;\u001a\u0002072\u0006\u0010<\u001a\u00020\u001fH\u0002J\b\u0010=\u001a\u000207H\u0016J\n\u0010>\u001a\u0004\u0018\u00010\u001fH\u0002J\b\u0010?\u001a\u00020\u0005H\u0002J\n\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u0018\u0010B\u001a\u0002072\u0006\u00109\u001a\u00020:2\u0006\u00105\u001a\u00020\u001aH\u0016J\u0010\u0010C\u001a\u0002072\u0006\u0010D\u001a\u00020EH\u0016J\b\u0010F\u001a\u000207H\u0002J\u0010\u0010G\u001a\u0002072\u0006\u00109\u001a\u00020:H\u0002J\u0010\u0010H\u001a\u0002072\u0006\u0010I\u001a\u00020\u001aH\u0002R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001a0\fX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u001b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u001d0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u00060+j\u0002`,X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010-\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u00010/0/0.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u00103\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u000104040.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006J"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceModel;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "circleCount", "", "(Ljava/lang/String;)V", "appCheckList", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;", "[Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;", "brakeMap", "Ljava/util/HashMap;", "checkModuleList", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "currentBoundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "errorCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachErrorCallback;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "cn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$examResultCallback$1;", "faultMap", "", "gpsDurations", "", "Lcn/mucang/android/jiakaoyi/framework/base/model/JkyPair;", "gpsModelList", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;", "gpsStartTime", "infoTv", "Landroid/widget/TextView;", "jLoadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "lastGps", "", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "saveSpName", "ssb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "stateCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "kotlin.jvm.PlatformType", "stepChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/StepChecker;", "teachCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;", "workOrderId", "clear", "", "clickSubmit", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "createLayer", "item", "destroy", "getGpsItem", "getKey", "getSaveData", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;", "initAndStart", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "saveData", TtmlNode.START, "updateInfo", "currentTime", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CircleAcceptanceImpl extends AcceptanceFunction<CircleAcceptanceModel> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6010f = "circleAcceptance";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<CheckModuleStatus> f6011g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CheckAppModelState[] f6012h;
    private final StepChecker i;
    private final HashMap<String, Long> j;
    private final HashMap<String, String> k;
    private final List<cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> l;
    private final List<CircleGpsItem> m;
    private final StringBuilder n;
    private TextView o;
    private MapView p;
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b q;
    private JLoadingDialog r;
    private long s;
    private int t;
    private long u;
    private final b v;
    private final cn.mucang.android.jiakaoyi.engine.f.a w;
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> x;
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> y;
    private final k z;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6013a;

        static {
            int[] iArr = new int[CheckAppModelState.values().length];
            iArr[CheckAppModelState.M_80001.ordinal()] = 1;
            iArr[CheckAppModelState.M_80002.ordinal()] = 2;
            iArr[CheckAppModelState.M_80003.ordinal()] = 3;
            iArr[CheckAppModelState.M_80004.ordinal()] = 4;
            f6013a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements cn.mucang.android.jiakaoyi.engine.f.b {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f fVar) {
        }
    }

    public CircleAcceptanceImpl(String str) {
        Step stepS;
        Step stepS2;
        this.f6009e = str;
        List<CheckModuleStatus> listA = CheckModuleStatus.INSTANCE.a();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA) {
            CheckModuleStatus checkModuleStatus = (CheckModuleStatus) obj;
            if (!CheckModuleManager.a(checkModuleStatus.getModule(), checkModuleStatus.getCode())) {
                arrayList.add(obj);
            }
        }
        this.f6011g = arrayList;
        this.f6012h = CheckAppModelState.values();
        this.i = new StepChecker(false);
        this.j = new HashMap<>();
        this.k = new HashMap<>();
        this.l = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        CircleGpsItem circleGpsItem = new CircleGpsItem();
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this.q;
        String str2 = null;
        circleGpsItem.setBoundaryKey(bVar == null ? null : bVar.getKey());
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = this.q;
        circleGpsItem.setBoundaryName(bVar2 == null ? null : bVar2.t());
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = this.q;
        circleGpsItem.setStepId((bVar3 == null || (stepS = bVar3.s()) == null) ? 0 : stepS.type);
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar4 = this.q;
        if (bVar4 != null && (stepS2 = bVar4.s()) != null) {
            str2 = stepS2.stepName;
        }
        circleGpsItem.setStepName(str2);
        arrayList2.add(0, circleGpsItem);
        v vVar = v.f15822a;
        this.m = arrayList2;
        this.n = new StringBuilder();
        this.v = new b();
        this.w = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.a
            @Override // cn.mucang.android.jiakaoyi.engine.f.a
            public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar5, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
                CircleAcceptanceImpl.H(this.f6014a, bVar5, cVar);
            }
        };
        this.x = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.d
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj2) {
                CircleAcceptanceImpl.X(this.f6017a, (EngineState) obj2);
            }
        };
        this.y = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.e
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj2) {
                CircleAcceptanceImpl.Y((FormModel) obj2);
            }
        };
        this.z = new k() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.i
            @Override // cn.mucang.android.jiakaoyi.teachingk2.exe.k
            public final void a(TeachModel teachModel, ErrorModel errorModel) {
                CircleAcceptanceImpl.G(teachModel, errorModel);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        j0.b(this.f6010f).edit().remove(J()).apply();
    }

    private final void F(CircleGpsItem circleGpsItem) {
        m mVar;
        if (n0.e(circleGpsItem.getBoundaryKey())) {
            return;
        }
        StepChecker stepChecker = this.i;
        String boundaryKey = circleGpsItem.getBoundaryKey();
        r.c(boundaryKey);
        cn.mucang.android.jiakaoyi.hpmap.view.p.m mVar2 = new cn.mucang.android.jiakaoyi.hpmap.view.p.m(this.p, stepChecker.b(boundaryKey), new cn.mucang.android.jiakaoyi.hpmap.view.p.m.a(40.0f, -16711936));
        MapView mapView = this.p;
        if (mapView == null || (mVar = mapView.u) == null) {
            return;
        }
        mVar.g(mVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(TeachModel teachModel, ErrorModel errorModel) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(CircleAcceptanceImpl this$0, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        Step stepS;
        Step stepS2;
        r.e(this$0, "this$0");
        String str = null;
        if (!bVar.l()) {
            if (bVar.j()) {
                this$0.q = null;
                return;
            }
            return;
        }
        BoundaryChecker boundaryCheckerI = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(2).i();
        if (boundaryCheckerI.f3684a.s() == bVar.f3142e) {
            StepChecker stepChecker = this$0.i;
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = boundaryCheckerI.f3684a;
            r.d(bVar2, "boundary.boundary");
            stepChecker.e(bVar2);
            this$0.q = boundaryCheckerI.f3684a;
            CircleGpsItem circleGpsItem = new CircleGpsItem();
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = this$0.q;
            circleGpsItem.setBoundaryKey(bVar3 == null ? null : bVar3.getKey());
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar4 = this$0.q;
            circleGpsItem.setBoundaryName(bVar4 == null ? null : bVar4.t());
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar5 = this$0.q;
            circleGpsItem.setStepId((bVar5 == null || (stepS = bVar5.s()) == null) ? 0 : stepS.type);
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar6 = this$0.q;
            if (bVar6 != null && (stepS2 = bVar6.s()) != null) {
                str = stepS2.stepName;
            }
            circleGpsItem.setStepName(str);
            this$0.m.add(0, circleGpsItem);
            if (circleGpsItem.matchFullStep()) {
                this$0.F(circleGpsItem);
            }
        }
    }

    private final CircleGpsItem I() {
        CircleGpsItem circleGpsItem;
        String boundaryKey;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar;
        Iterator<T> it = this.m.iterator();
        do {
            if (!it.hasNext()) {
                return null;
            }
            circleGpsItem = (CircleGpsItem) it.next();
            boundaryKey = circleGpsItem.getBoundaryKey();
            bVar = this.q;
        } while (!r.a(boundaryKey, bVar != null ? bVar.getKey() : null));
        return circleGpsItem;
    }

    private final String J() {
        return "save-data-" + this.u + '-' + ((Object) this.f6009e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CircleSaveData K() {
        String string = j0.b(this.f6010f).getString(J(), "");
        if (n0.e(string)) {
            return null;
        }
        return (CircleSaveData) JSON.parseObject(string, CircleSaveData.class);
    }

    private final void S() {
        List<cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> gpsDurations;
        CircleSaveData circleSaveData = new CircleSaveData();
        circleSaveData.setFaultMap(this.j);
        circleSaveData.setBrakeMap(this.k);
        circleSaveData.setTriggerBoundarySet(this.i.d());
        circleSaveData.setGpsModelList(this.m);
        circleSaveData.setGpsDurations(this.l);
        if (this.s > 0 && (gpsDurations = circleSaveData.getGpsDurations()) != null) {
            gpsDurations.add(new cn.mucang.android.jiakaoyi.framework.base.model.b<>(Long.valueOf(this.s), Long.valueOf(System.currentTimeMillis())));
        }
        j0.b(this.f6010f).edit().putString(J(), JSON.toJSONString(circleSaveData)).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(androidx.appcompat.app.d dVar) {
        this.p = (MapView) dVar.findViewById(R.id.mapView);
        TextView textView = (TextView) dVar.findViewById(R.id.infoTv);
        this.o = textView;
        if (textView != null) {
            textView.setVisibility(0);
        }
        TextView textView2 = (TextView) dVar.findViewById(R.id.saveTv);
        if (textView2 != null) {
            textView2.setVisibility(0);
        }
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CircleAcceptanceImpl.U(this.f6019a, view);
                }
            });
        }
        t(new cn.mucang.android.jiakaoyi.teachingk2.t0.b(String.valueOf(ExamSiteUtil.e(0L)), this.v, this.w, this.x, this.y, this.z, new EnumMap(Step.class), n.b().k, 2));
        LiveBus.d(BrakeDialogShowEvent.class).h(dVar, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CircleAcceptanceImpl.V(this.f6015a, (BrakeDialogShowEvent) obj);
            }
        });
        LiveBus.d(SubStepEvent.class).h(dVar, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CircleAcceptanceImpl.W(this.f6016a, (SubStepEvent) obj);
            }
        });
        for (CircleGpsItem circleGpsItem : this.m) {
            if (circleGpsItem.matchFullStep()) {
                F(circleGpsItem);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(CircleAcceptanceImpl this$0, View view) {
        r.e(this$0, "this$0");
        this$0.S();
        u.h("暂存成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(CircleAcceptanceImpl this$0, BrakeDialogShowEvent brakeDialogShowEvent) {
        r.e(this$0, "this$0");
        this$0.k.put(String.valueOf(brakeDialogShowEvent.getB()), brakeDialogShowEvent.getF6023a().getTitle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(CircleAcceptanceImpl this$0, SubStepEvent subStepEvent) {
        r.e(this$0, "this$0");
        CircleGpsItem circleGpsItemI = this$0.I();
        if (circleGpsItemI != null && circleGpsItemI.getSubStep() < subStepEvent.getSubStep()) {
            circleGpsItemI.setSubStep(subStepEvent.getSubStep());
            if (circleGpsItemI.matchFullStep()) {
                this$0.F(circleGpsItemI);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(CircleAcceptanceImpl this$0, EngineState state) {
        r.e(this$0, "this$0");
        r.e(state, "state");
        if (state == EngineState.Initialed) {
            cn.mucang.android.jiakaoyi.teachingk2.t0.b f6073a = this$0.getF6073a();
            if (f6073a != null) {
                f6073a.start();
            }
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(FormModel noName_0) {
        r.e(noName_0, "$noName_0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Z(long j) {
        Iterator<T> it = this.l.iterator();
        long j2 = 0;
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.framework.base.model.b bVar = (cn.mucang.android.jiakaoyi.framework.base.model.b) it.next();
            long jLongValue = ((Number) bVar.b).longValue();
            A a2 = bVar.f3426a;
            r.d(a2, "it.first");
            long jLongValue2 = jLongValue - ((Number) a2).longValue();
            if (jLongValue2 > j2) {
                j2 = jLongValue2;
            }
        }
        long j3 = this.s;
        if (j3 > 0) {
            long j4 = j - j3;
            if (j4 > j2) {
                j2 = j4;
            }
        }
        l.f(this.n);
        this.n.append("刹车次数：" + this.k.size() + '\n');
        this.n.append("故障数量：" + this.j.size() + '\n');
        this.n.append("GPS非4次数：" + this.l.size() + '\n');
        this.n.append("GPS非4持续时间(秒)：" + (j2 / ((long) 1000)) + '\n');
        TextView textView = this.o;
        if (textView == null) {
            return;
        }
        textView.setText(this.n.toString());
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction
    public void c(androidx.appcompat.app.d activity, long j) {
        r.e(activity, "activity");
        super.c(activity, j);
        CircleAcceptanceModel circleAcceptanceModel = new CircleAcceptanceModel();
        circleAcceptanceModel.setStepResult(this.i.c());
        circleAcceptanceModel.setBrakeMap(this.k);
        circleAcceptanceModel.setFaultMap(this.j);
        circleAcceptanceModel.setGpsModel(this.m);
        circleAcceptanceModel.setGpsDurations(this.l);
        e(activity, AcceptanceModule.Circle, this.f6009e, circleAcceptanceModel, j);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction
    public void d() {
        super.d();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction
    public void n(androidx.appcompat.app.d activity, long j) {
        r.e(activity, "activity");
        super.n(activity, j);
        this.u = j;
        JLoadingDialog jLoadingDialog = new JLoadingDialog(activity);
        this.r = jLoadingDialog;
        if (jLoadingDialog != null) {
            jLoadingDialog.b("正在加载数据");
        }
        kotlinx.coroutines.g.b(s.a(activity), null, null, new CircleAcceptanceImpl$initAndStart$1(this, activity, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Z(jCurrentTimeMillis);
        if (signalGetter.d().h()) {
            cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition = signalGetter.getCurrentPosition();
            CircleGpsItem circleGpsItemI = I();
            if (circleGpsItemI == null) {
                return;
            }
            if (currentPosition.i < 20) {
                circleGpsItemI.increaseSatellite();
            }
            int i = currentPosition.f5282h;
            if (i != 4) {
                circleGpsItemI.handleGps(String.valueOf(i));
                int i2 = this.t;
                if (i2 == 4 || i2 == 0) {
                    this.s = System.currentTimeMillis();
                }
            } else if (i == 4) {
                long j = this.s;
                if (j > 0) {
                    this.l.add(new cn.mucang.android.jiakaoyi.framework.base.model.b<>(Long.valueOf(j), Long.valueOf(jCurrentTimeMillis)));
                    this.s = 0L;
                }
            }
            this.t = currentPosition.f5282h;
            int i3 = currentPosition.b;
            if (i3 != 4) {
                circleGpsItemI.handleHeading(String.valueOf(i3));
                return;
            }
            return;
        }
        if (signalGetter.d().k()) {
            for (CheckModuleStatus checkModuleStatus : this.f6011g) {
                if (this.j.get(checkModuleStatus.getTitle()) == null && !checkModuleStatus.checkPass(checkModuleStatus.getCheckInt(signalGetter))) {
                    this.j.put(checkModuleStatus.getTitle(), Long.valueOf(jCurrentTimeMillis));
                }
            }
            for (CheckAppModelState checkAppModelState : this.f6012h) {
                int i4 = a.f6013a[checkAppModelState.ordinal()];
                boolean z = true;
                if (i4 == 1 ? cn.mucang.android.jiakaoyi.signal.b.c.c() : i4 == 2 ? cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().j(ComName.AiNet).staticsNormal() : i4 == 3 ? cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().j(ComName.MasterNet).staticsNormal() : i4 != 4 || cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().j(ComName.GpsNet).staticsNormal()) {
                    z = false;
                }
                if (z) {
                    this.j.put(checkAppModelState.getTitle(), Long.valueOf(jCurrentTimeMillis));
                }
            }
        }
    }
}
