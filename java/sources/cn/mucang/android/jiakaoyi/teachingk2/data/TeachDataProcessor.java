package cn.mucang.android.jiakaoyi.teachingk2.data;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarStopVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.RepeatVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.StopPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.data.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002Jt\u0010\u000b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\t2.\u0010\r\u001a*\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u000ej\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t`\u00102.\u0010\u0011\u001a*\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000ej\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u0012`\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachDataProcessor;", "", "needStopVariable", "", "needTraceTip", "(ZZ)V", "createStopTeachModels", "", "teachModels", "", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "processTeachData", "list", "teachData", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "Lkotlin/collections/HashMap;", "boundaryData", "", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachDataProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6985a;
    private final boolean b;

    public TeachDataProcessor(boolean z, boolean z2) {
        this.f6985a = z;
        this.b = z2;
    }

    private final void a(List<TeachModel> list) {
        int i;
        int i2;
        if (g.b(list)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashSet<Pair> linkedHashSet = new LinkedHashSet();
        for (TeachModel teachModel : list) {
            int i3 = teachModel.step;
            if ((i3 == Step.K2_DaoCheRuKu.type && ((i2 = teachModel.subStep) == 1 || i2 == 2 || i2 == 3 || i2 == 4)) || (i3 == Step.K2_CeFangTingChe.type && ((i = teachModel.subStep) == 1 || i == 2))) {
                TraceVariable traceVariable = teachModel.getTraceVariable();
                if (traceVariable != null && traceVariable.needCreateStopTeachModel()) {
                    TeachModel teachModel2 = new TeachModel();
                    teachModel2.step = teachModel.step;
                    teachModel2.subStep = teachModel.subStep + 1;
                    teachModel2.stepDirection = teachModel.stepDirection;
                    teachModel2.parkingSpaceGroup = teachModel.parkingSpaceGroup;
                    teachModel2.parkingSpaceBindId = teachModel.parkingSpaceBindId;
                    teachModel2.data = new ArrayList();
                    teachModel2.data.add(new VoiceModel());
                    teachModel2.variableList = new ArrayList();
                    teachModel2.variableList.add(new RepeatVariable());
                    teachModel2.errors = new ArrayList();
                    ErrorModel errorModel = new ErrorModel();
                    errorModel.errorForm = new VoiceModel();
                    errorModel.errorVariables = new ArrayList();
                    StopPositionVariable stopPositionVariable = new StopPositionVariable();
                    stopPositionVariable.stopRange = traceVariable.stopRange;
                    List<TraceItemModel> list2 = traceVariable.traces;
                    if (list2 != null && list2.size() > 1) {
                        List<TraceItemModel> list3 = traceVariable.traces;
                        stopPositionVariable.center = list3.get(list3.size() - 1);
                        List<TraceItemModel> list4 = traceVariable.traces;
                        stopPositionVariable.last = list4.get(list4.size() - 2);
                    }
                    errorModel.errorVariables.add(stopPositionVariable);
                    teachModel2.errors.add(errorModel);
                    arrayList.add(teachModel2);
                }
            } else if (i3 == Step.K2_ShangPoQiBu.type) {
                linkedHashSet.add(new Pair(teachModel.parkingSpaceGroup, teachModel.parkingSpaceBindId));
            }
        }
        for (Pair pair : linkedHashSet) {
            TeachModel teachModel3 = new TeachModel();
            teachModel3.step = Step.K2_ShangPoQiBu.type;
            teachModel3.subStep = 1;
            teachModel3.parkingSpaceGroup = (String) pair.getFirst();
            teachModel3.parkingSpaceBindId = (String) pair.getSecond();
            teachModel3.data = new ArrayList();
            teachModel3.data.add(new VoiceModel());
            teachModel3.variableList = new ArrayList();
            CarStopVariable carStopVariable = new CarStopVariable();
            carStopVariable.enable = true;
            carStopVariable.needStop = true;
            teachModel3.variableList.add(carStopVariable);
            teachModel3.errors = new ArrayList();
            ErrorModel errorModel2 = new ErrorModel();
            errorModel2.errorForm = new VoiceModel();
            errorModel2.errorVariables = new ArrayList();
            errorModel2.errorVariables.add(new StopPositionVariable());
            teachModel3.errors.add(errorModel2);
            arrayList.add(teachModel3);
        }
        list.addAll(arrayList);
    }

    public final void b(List<TeachModel> list, HashMap<Step, List<TeachModel>> teachData, HashMap<Step, Set<String>> boundaryData) {
        r.e(list, "list");
        r.e(teachData, "teachData");
        r.e(boundaryData, "boundaryData");
        if (this.f6985a) {
            a(list);
        }
        Iterator<TeachModel> it = list.iterator();
        while (it.hasNext()) {
            Iterator<Variable> it2 = it.next().variableList.iterator();
            while (it2.hasNext()) {
                Variable next = it2.next();
                if ((next instanceof TraceVariable) && !this.b) {
                    ((TraceVariable) next).range = 10000;
                }
                if (!next.enable) {
                    it2.remove();
                }
            }
        }
        for (TeachModel teachModel : list) {
            NormalVariable normalVariable = teachModel.getNormalVariable();
            if (teachModel.pointType == 1 && normalVariable != null) {
                for (TeachModel teachModel2 : list) {
                    NormalVariable normalVariable2 = teachModel2.getNormalVariable();
                    if (teachModel2.pointType == 2 && normalVariable2 != null && normalVariable.reportKey == normalVariable2.key) {
                        teachModel.reportModel = teachModel2;
                        break;
                    }
                }
            }
        }
        for (TeachModel teachModel3 : list) {
            Step step = Step.findWithType(teachModel3.step);
            List<TeachModel> arrayList = teachData.get(step);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                r.d(step, "step");
                teachData.put(step, arrayList);
            }
            if (!n0.f(teachModel3.parkingSpaceBindId)) {
                Set<String> hashSet = boundaryData.get(step);
                if (hashSet == null) {
                    hashSet = new HashSet<>();
                    r.d(step, "step");
                    boundaryData.put(step, hashSet);
                }
                String str = teachModel3.parkingSpaceBindId;
                r.d(str, "it.parkingSpaceBindId");
                hashSet.addAll(StringsKt__StringsKt.p0(str, new String[]{"@"}, false, 0, 6, null));
            }
            arrayList.add(teachModel3);
        }
    }
}
