package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachCollectHelper;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.m3, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0006\u001a\u00020!2\n\u0010\"\u001a\u00060\u0004R\u00020\u0005H\u0007J\b\u0010#\u001a\u00020\u0017H\u0007J\u0012\u0010$\u001a\u0004\u0018\u00010\t2\u0006\u0010%\u001a\u00020&H\u0007J\u000e\u0010'\u001a\b\u0012\u0004\u0012\u00020\t0(H\u0007J\u000e\u0010)\u001a\b\u0012\u0004\u0012\u00020\r0(H\u0007J\u0010\u0010*\u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u0017H\u0007J\u0010\u0010+\u001a\u00020!2\u0006\u0010\u001c\u001a\u00020\u001bH\u0007J\u0010\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020&H\u0007J\u001e\u0010.\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u00172\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\t0(H\u0007J\u001a\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020\t2\b\u00102\u001a\u0004\u0018\u00010\rH\u0007R*\u0010\u0006\u001a\b\u0018\u00010\u0004R\u00020\u00052\f\u0010\u0003\u001a\b\u0018\u00010\u0004R\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\"\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0003\u001a\u0004\u0018\u00010\r@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R&\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00118\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0012\u0010\u0014R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0017@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u001b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0017@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001a¨\u00063"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachModelEditor;", "", "()V", "<set-?>", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;", "collectTrace", "getCollectTrace", "()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "currentModel", "getCurrentModel", "()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;", "currentTrace", "getCurrentTrace", "()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;", "", "isVersion2", "isVersion2$annotations", "()Z", "modelList", "", "", "programmeId", "getProgrammeId", "()Ljava/lang/String;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "step", "getStep", "()Lcn/mucang/android/jiakaoyi/engine/model/Step;", "title", "getTitle", "", "item", "getIds", "getStepTraceModel", "subStep", "", "getTeachModelList", "", "getTraceList", "setId", "setStep", "setVersion", "version", "showList", "list", "showTeachModel", "teachModel", "traceVariable", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachModelEditor {
    private static boolean c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static TeachModel f6861g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static TraceVariable f6862h;
    private static StepTeachModelActivity.b i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TeachModelEditor f6857a = new TeachModelEditor();
    private static final List<TeachModel> b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f6858d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f6859e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Step f6860f = Step.K2_Global;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.m3$a */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((TeachModel) t).subStep), Integer.valueOf(((TeachModel) t2).subStep));
        }
    }

    private TeachModelEditor() {
    }

    public static final void a(StepTeachModelActivity.b item) {
        kotlin.jvm.internal.r.e(item, "item");
        f6859e = item.getF6766f();
        i = item;
    }

    public static final String e() {
        StepTeachModelActivity.b bVar = i;
        List<TeachModel> listC = bVar == null ? null : bVar.c();
        if (listC == null) {
            listC = kotlin.collections.u.j();
        }
        return TeachCollectHelper.h(listC);
    }

    public static final TeachModel h(int i2) {
        List<TeachModel> listC;
        StepTeachModelActivity.b bVar = i;
        if (bVar == null || (listC = bVar.c()) == null) {
            return null;
        }
        for (TeachModel teachModel : listC) {
            if (teachModel.isTraceTeach() && teachModel.subStep == i2) {
                return teachModel;
            }
        }
        return null;
    }

    public static final List<TeachModel> i() {
        return b;
    }

    public static final List<TraceVariable> k() {
        List<TeachModel> listC;
        List<TeachModel> listG0;
        ArrayList arrayList = new ArrayList();
        StepTeachModelActivity.b bVar = i;
        if (bVar != null && (listC = bVar.c()) != null && (listG0 = CollectionsKt___CollectionsKt.G0(listC, new a())) != null) {
            for (TeachModel teachModel : listG0) {
                if (teachModel.isTraceTeach()) {
                    TraceVariable traceVariable = teachModel.getTraceVariable();
                    kotlin.jvm.internal.r.d(traceVariable, "it.traceVariable");
                    arrayList.add(traceVariable);
                }
            }
        }
        return arrayList;
    }

    public static final boolean l() {
        return c;
    }

    public static final void m(String programmeId) {
        kotlin.jvm.internal.r.e(programmeId, "programmeId");
        f6858d = programmeId;
    }

    public static final void n(Step step) {
        kotlin.jvm.internal.r.e(step, "step");
        f6860f = step;
    }

    public static final void o(int i2) {
        c = i2 >= 2;
    }

    public static final void p(String title, List<? extends TeachModel> list) {
        kotlin.jvm.internal.r.e(title, "title");
        kotlin.jvm.internal.r.e(list, "list");
        f6859e = title;
        List<TeachModel> list2 = b;
        list2.clear();
        list2.addAll(list);
    }

    public static final void q(TeachModel teachModel, TraceVariable traceVariable) {
        kotlin.jvm.internal.r.e(teachModel, "teachModel");
        f6861g = teachModel;
        f6862h = traceVariable;
    }

    public final StepTeachModelActivity.b b() {
        return i;
    }

    public final TeachModel c() {
        return f6861g;
    }

    public final TraceVariable d() {
        return f6862h;
    }

    public final String f() {
        return f6858d;
    }

    public final Step g() {
        return f6860f;
    }

    public final String j() {
        return f6859e;
    }
}
