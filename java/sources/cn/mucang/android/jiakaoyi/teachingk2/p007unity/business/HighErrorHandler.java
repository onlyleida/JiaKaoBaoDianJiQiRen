package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.InProject;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.OutProject;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import cn.mucang.android.jiakaoyi.signal.handle.gps.f;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.HighErrorDialog;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainErrorAreaModel;
import cn.mucang.android.jiakaoyi.unity.c.d;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\b\u0010\u0018\u001a\u00020\u0010H\u0007J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0015H\u0007J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u001e\u001a\u00020\u0015H\u0007J\b\u0010\u001f\u001a\u00020\u0015H\u0007J\b\u0010 \u001a\u00020\u0015H\u0007J\b\u0010!\u001a\u00020\u0015H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u000b\u001a*\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\fj\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "areaList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;", "coordinate", "Lcn/mucang/android/jiakaoyi/signal/utils/Coordinate;", "currentCheckAreaList", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "errorList", "Ljava/util/LinkedHashMap;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$HighErrorMenu;", "Lkotlin/collections/LinkedHashMap;", "lastState", "", "step", "", "subStep", "handleSubStep", "", "subStepEvent", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "hasErrorData", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "onStepEnd", "onStepStart", "onUserLogin", "showDialog", TtmlNode.START, "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HighErrorHandler implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HighErrorHandler f8389a = new HighErrorHandler();
    private static final LinkedHashMap<HighErrorModel.a, List<HighErrorModel>> b = new LinkedHashMap<>();
    private static final List<HighErrorModel> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<List<Pos>> f8390d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f8391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f8392f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static b f8393g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f8394h;

    private HighErrorHandler() {
    }

    public static final void c(SubStepEvent subStepEvent) {
        BoundaryChecker boundaryCheckerI;
        T t;
        r.e(subStepEvent, "subStepEvent");
        if (f8391e == subStepEvent.getStep().type && f8392f == subStepEvent.getSubStep()) {
            return;
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b bVarG = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(2);
        b bVarG2 = null;
        if (bVarG != null && (boundaryCheckerI = bVarG.i()) != null && (t = boundaryCheckerI.f3684a) != 0) {
            bVarG2 = t.g();
        }
        f8393g = bVarG2;
        f8391e = subStepEvent.getStep().type;
        f8392f = subStepEvent.getSubStep();
        f8390d.clear();
        for (HighErrorModel highErrorModel : c) {
            if (highErrorModel.getStep() == f8391e) {
                int stepPhase = highErrorModel.getStepPhase();
                int i = f8392f;
                if (stepPhase == i && i != 0 && com.blankj.utilcode.util.b.b(highErrorModel.getAreaPosList()) && f8393g != null) {
                    List<List<Pos>> areaPosList = highErrorModel.getAreaPosList();
                    if (areaPosList != null) {
                        Iterator<T> it = areaPosList.iterator();
                        while (it.hasNext()) {
                            List<Pos> list = (List) it.next();
                            ArrayList arrayList = new ArrayList();
                            for (Pos pos : list) {
                                b bVar = f8393g;
                                r.c(bVar);
                                Pos posC = bVar.c(pos);
                                r.d(posC, "coordinate!!.toWorld(pos)");
                                arrayList.add(posC);
                            }
                            f8390d.add(arrayList);
                        }
                    }
                    d.b(30015);
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                    String strA = k0.a(R.string.teachbase_error_prone_area);
                    r.d(strA, "getString(R.string.teachbase_error_prone_area)");
                    String str = String.format(strA, Arrays.copyOf(new Object[]{Integer.valueOf(f8390d.size())}, 1));
                    r.d(str, "java.lang.String.format(format, *args)");
                    RobotTips.Y(str, null, TtsGrade.VoiceRobot, 0, null, 16, null);
                }
            }
        }
    }

    public static final boolean d() {
        return !b.isEmpty();
    }

    public static final void e() {
        f8391e = 0;
        f8392f = 0;
    }

    public static final void f(int i) {
        Step stepEnum = Step.findWithType(i);
        if (stepEnum == Step.K2_DaoCheRuKu || stepEnum == Step.K2_CeFangTingChe) {
            return;
        }
        f8391e = i;
        f8392f = 0;
        r.d(stepEnum, "stepEnum");
        String str = stepEnum.stepName;
        r.d(str, "stepEnum.stepName");
        c(new SubStepEvent(1, stepEnum, str));
    }

    public static final void g() {
        c.clear();
        b.clear();
        g.b(j0.b(), null, null, new HighErrorHandler$onUserLogin$1(null), 3, null);
    }

    public static final void h() {
        i0.k("keyInProjectBg", InProject.GrayCement.type);
        i0.k("keyOutProjectBg", OutProject.Lawn.type);
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        new HighErrorDialog(activityI, f8391e, f8392f, b).show();
    }

    public static final void i() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(f8389a);
    }

    public static final void j() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(f8389a);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        List<List<Pos>> list = f8390d;
        if (!list.isEmpty() && signalGetter.d().h() && f.a(signalGetter.getCurrentPosition().f5282h) && signalGetter.c().center != null) {
            boolean z = false;
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (c.i(signalGetter.c().center, (List) it.next())) {
                    z = true;
                    break;
                }
            }
            if (f8394h != z) {
                TrainErrorAreaModel trainErrorAreaModel = new TrainErrorAreaModel();
                trainErrorAreaModel.open = z;
                d.e(trainErrorAreaModel);
                f8394h = z;
            }
        }
    }
}
