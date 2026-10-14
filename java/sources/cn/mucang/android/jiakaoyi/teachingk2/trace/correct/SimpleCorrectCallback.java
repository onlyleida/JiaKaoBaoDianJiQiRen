package cn.mucang.android.jiakaoyi.teachingk2.trace.correct;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.DrawObserveHelper;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityLineModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityDrawLineHelper;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.trace.b.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0016\u0010\t\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0016\u0010\r\u001a\u00020\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\bH\u0016J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/trace/correct/SimpleCorrectCallback;", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/listener/CorrectCallback;", "drawLineHelper", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;)V", "repeatDraw", "Lcn/mucang/android/jiakaoyi/teachingk2/trace/correct/RepeatDraw;", "clearCorrectView", "", "drawFrames", "teaches", "", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/model/CorrectTeachPoint;", "drawPath", "path", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "drawTeachLine", "enable", "", "onFinish", "onPathRefresh", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/model/TargetCorrectModel;", "onTip", "teachPoint", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SimpleCorrectCallback implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f8058d = 5201314;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DrawObserveHelper f8059a;
    private cn.mucang.android.jiakaoyi.teachingk2.trace.correct.a b;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.trace.b.b$a */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/trace/correct/SimpleCorrectCallback$Companion;", "", "()V", "Color", "", "FrameColor", "LineColor", TtmlNode.ATTR_ID, "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }
    }

    public SimpleCorrectCallback(DrawObserveHelper drawLineHelper) {
        r.e(drawLineHelper, "drawLineHelper");
        this.f8059a = drawLineHelper;
        this.b = new cn.mucang.android.jiakaoyi.teachingk2.trace.correct.a();
    }

    private final void c() {
        this.b.f(null);
        UnityDrawLineHelper.f6360a.a(10);
    }

    private final void d(List<? extends cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a> list) {
        if (g.b(list)) {
            return;
        }
        UnityLineModel unityLineModel = new UnityLineModel();
        int i = unityLineModel.id;
        unityLineModel.id = i + 1;
        unityLineModel.id = i;
        unityLineModel.open = true;
        unityLineModel.type = 0;
        unityLineModel.group = 10;
        unityLineModel.positions = ((cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a) s.o0(list)).c.f5824g;
        unityLineModel.color = "#FF0100";
        unityLineModel.alpha = 1.0f;
        unityLineModel.width = 15;
        unityLineModel.height = 10;
        unityLineModel.isSeal = true;
        unityLineModel.material = "alphaColorMat";
        this.b.f(unityLineModel);
    }

    private final void e(List<? extends Pos> list) {
        if (g.b(list)) {
            return;
        }
        UnityDrawLineHelper.a aVar = UnityDrawLineHelper.f6360a;
        int i = f8058d;
        f8058d = i + 1;
        UnityDrawLineHelper.a.e(aVar, i, 0, 10, list, "#22EA40", 1.0f, 15, 15, false, null, null, false, 3584, null);
    }

    private final void f(List<? extends cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a> list) {
        for (cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a aVar : list) {
            UnityDrawLineHelper.a aVar2 = UnityDrawLineHelper.f6360a;
            int i = f8058d;
            f8058d = i + 1;
            NormalVariable normalVariable = aVar.f8077a;
            UnityDrawLineHelper.a.e(aVar2, i, 0, 10, u.p(normalVariable.p1, normalVariable.p2), "#2244C0", 1.0f, 5, 10, true, null, null, false, 3584, null);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a
    public void a(cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a teachPoint) {
        r.e(teachPoint, "teachPoint");
        TtsManager.r(teachPoint.b, TtsGrade.Teach);
        n0.f();
        w.M();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a
    public void b(b model) {
        r.e(model, "model");
        this.f8059a.b();
        c();
        List<Pos> listA = model.a();
        r.d(listA, "model.path");
        e(listA);
        List<cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a> listC = model.c();
        r.d(listC, "model.teaches");
        d(listC);
        List<cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a> listC2 = model.c();
        r.d(listC2, "model.teaches");
        f(listC2);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a
    public boolean enable() {
        return TeachConfig.a().getGuide();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a
    public void onFinish() {
        c();
    }
}
