package cn.mucang.android.jiakaoyi.teachingk2.w0.handle;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.model.a;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepStartEvent;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepValidEvent;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.TrainStep;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipSpeaker;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipsArguments;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipsRule;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.t;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.n0;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.text.Regex;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.w0.b.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/TrainRule;", "", "kemu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "tipSpeaker", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;", "tipsValue", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;", "arguments", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V", "getArguments", "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "getKemu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getTipSpeaker", "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;", "getTipsValue", "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;", "trainStepItem", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;", "trainStepStartTime", "", "trainStepValid", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepValidEvent;", "handleDeduct", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "handleStepInfo", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepStartEvent;", "isPass", "", "handleStepValid", "valid", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TrainRule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeMu f8763a;
    private final TipSpeaker b;
    private final t c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TipsArguments f8764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TrainStep f8765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TraceStepValidEvent f8766f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f8767g;

    public TrainRule(KeMu kemu, TipSpeaker tipSpeaker, t tVar, TipsArguments tipsArguments) {
        r.e(kemu, "kemu");
        this.f8763a = kemu;
        this.b = tipSpeaker;
        this.c = tVar;
        this.f8764d = tipsArguments;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final TipSpeaker getB() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0090  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    public final void b(a deduct) {
        TipsArguments tipsArguments;
        List listM0;
        boolean z;
        boolean z2;
        List<TrainStep.Deduction> list;
        int i;
        int i2;
        r.e(deduct, "deduct");
        t tVar = this.c;
        if (tVar == null || (tipsArguments = this.f8764d) == null) {
            return;
        }
        String str = deduct.f3102a.name;
        r.d(str, "deduct.deduct.name");
        String strA = k0.a(R.string.teachbase_touch_line_regex);
        r.d(strA, "getString(R.string.teachbase_touch_line_regex)");
        if (new Regex(strA).containsMatchIn(str)) {
            return;
        }
        TrainStep trainStep = this.f8765e;
        if (trainStep != null) {
            trainStep.addDeduction(deduct.f3102a);
        }
        TipsRule tipsRule = TipsRule.ATTEND_400102;
        if (tipsArguments.triggerToday(tipsRule.getRuleCode(), deduct.f3102a.name)) {
            return;
        }
        int paramCount = tipsArguments.getParamCount(tipsRule.getRuleCode(), 3);
        List<TrainStep> list2 = tVar.f7219g;
        r.d(list2, "tipsValue.trainTodayList");
        if (!list2.isEmpty()) {
            ListIterator<TrainStep> listIterator = list2.listIterator(list2.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listM0 = CollectionsKt___CollectionsKt.M0(list2);
                    break;
                }
                TrainStep trainStepPrevious = listIterator.previous();
                boolean z3 = true;
                if (trainStepPrevious.step != deduct.f3102a.step.type || trainStepPrevious.passed) {
                    z3 = false;
                } else {
                    List<TrainStep.Deduction> list3 = trainStepPrevious.deduction;
                    if (list3 != null) {
                        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                            Iterator<T> it = list3.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z = false;
                                    break;
                                } else if (r.a(((TrainStep.Deduction) it.next()).desc, deduct.f3102a.name)) {
                                    z = true;
                                    break;
                                }
                            }
                        } else {
                            z = false;
                            break;
                        }
                        if (z) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        z3 = false;
                    }
                }
                if (!z3) {
                    listIterator.next();
                    int size = list2.size() - listIterator.nextIndex();
                    if (size != 0) {
                        ArrayList arrayList = new ArrayList(size);
                        while (listIterator.hasNext()) {
                            arrayList.add(listIterator.next());
                        }
                        listM0 = arrayList;
                        break;
                    }
                    listM0 = u.j();
                    break;
                }
            }
        } else {
            listM0 = u.j();
        }
        TrainStep trainStep2 = this.f8765e;
        if (trainStep2 == null || (list = trainStep2.deduction) == null || ((list instanceof Collection) && list.isEmpty())) {
            i = 0;
        } else {
            Iterator<T> it2 = list.iterator();
            i = 0;
            while (it2.hasNext()) {
                if (r.a(((TrainStep.Deduction) it2.next()).desc, deduct.f3102a.name) && (i = i + 1) < 0) {
                    s.s();
                    throw null;
                }
            }
        }
        Iterator it3 = listM0.iterator();
        while (it3.hasNext()) {
            List<TrainStep.Deduction> list4 = ((TrainStep) it3.next()).deduction;
            if (list4 == null || ((list4 instanceof Collection) && list4.isEmpty())) {
                i2 = 0;
            } else {
                Iterator<T> it4 = list4.iterator();
                i2 = 0;
                while (it4.hasNext()) {
                    if (r.a(((TrainStep.Deduction) it4.next()).desc, deduct.f3102a.name) && (i2 = i2 + 1) < 0) {
                        s.s();
                        throw null;
                    }
                }
            }
            i += i2;
        }
        if (i <= 0 || i % paramCount != 0) {
            return;
        }
        TipSpeaker tipSpeaker = this.b;
        if (tipSpeaker != null) {
            TipSpeaker.f(tipSpeaker, TipsRule.ATTEND_400102, n0.e(l.a("【\\deduct\\】", deduct.f3102a.name)), false, false, false, null, 60, null);
        }
        tipsArguments.updateTodayTimes(TipsRule.ATTEND_400102.getRuleCode(), deduct.f3102a.name);
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0107  */
    public final void c(TraceStepStartEvent stepHandler, boolean z) {
        TipsArguments tipsArguments;
        boolean z2;
        TipSpeaker b;
        String stepName;
        r.e(stepHandler, "stepHandler");
        t tVar = this.c;
        if (tVar == null || (tipsArguments = this.f8764d) == null) {
            return;
        }
        Step stepFindWithType = Step.findWithType(stepHandler.getB());
        String str = "";
        if (stepFindWithType != null && (stepName = stepFindWithType.getStepName()) != null) {
            str = stepName;
        }
        int i = 1;
        int i2 = 0;
        if (stepHandler.getF3174a()) {
            this.f8765e = new TrainStep(stepHandler.getB(), false, false);
            this.f8766f = null;
            this.f8767g = System.currentTimeMillis();
            if (this.f8763a == KeMu.K2) {
                int paramCount = tipsArguments.getParamCount(TipsRule.ATTEND_400100.getRuleCode(), 2);
                List<TrainStep> list = tVar.f7219g;
                r.d(list, "tipsValue.trainTodayList");
                List listI0 = CollectionsKt___CollectionsKt.I0(list, paramCount);
                if (listI0.size() >= paramCount) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Object obj : listI0) {
                        Integer numValueOf = Integer.valueOf(((TrainStep) obj).step);
                        Object arrayList = linkedHashMap.get(numValueOf);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            linkedHashMap.put(numValueOf, arrayList);
                        }
                        ((List) arrayList).add(obj);
                    }
                    if (linkedHashMap.size() == 1) {
                        if (!(listI0 instanceof Collection) || !listI0.isEmpty()) {
                            Iterator it = listI0.iterator();
                            do {
                                if (!it.hasNext()) {
                                    i = 0;
                                    break;
                                }
                            } while (!((TrainStep) it.next()).valid);
                        } else {
                            i = 0;
                            break;
                        }
                        if (i != 0 || (b = getB()) == null) {
                            return;
                        }
                        TipSpeaker.g(b, TipsRule.ATTEND_400100, false, false, false, null, 30, null);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        List<TrainStep> list2 = tVar.f7220h;
        r.d(list2, "tipsValue.trainRecentList");
        TrainStep trainStep = (TrainStep) s.q0(list2);
        TraceStepValidEvent traceStepValidEvent = this.f8766f;
        if (traceStepValidEvent != null && traceStepValidEvent.getB() == stepHandler.getB()) {
            TraceStepValidEvent traceStepValidEvent2 = this.f8766f;
            if (traceStepValidEvent2 != null && traceStepValidEvent2.getF3176a()) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        TrainStep trainStep2 = this.f8765e;
        if (trainStep2 != null) {
            trainStep2.set(z, z2);
            tVar.f7219g.add(trainStep2);
            tVar.f7220h.add(trainStep2);
        }
        tVar.f7218f += System.currentTimeMillis() - this.f8767g;
        Integer num = tVar.i.get(Integer.valueOf(stepHandler.getB()));
        if (num == null) {
            num = 0;
        }
        int iIntValue = num.intValue();
        if (trainStep != null && trainStep.step != stepHandler.getB()) {
            i = (z && z2) ? 1 : 0;
            HashMap<Integer, Integer> map = tVar.i;
            r.d(map, "tipsValue.stepSerialPassCount");
            map.put(Integer.valueOf(trainStep.step), 0);
            i2 = i;
        } else if (z && z2) {
            i2 = iIntValue + 1;
        }
        HashMap<Integer, Integer> map2 = tVar.i;
        r.d(map2, "tipsValue.stepSerialPassCount");
        map2.put(Integer.valueOf(stepHandler.getB()), Integer.valueOf(i2));
        if (i2 > 0) {
            if (i2 % tipsArguments.getParamCount((this.f8763a == KeMu.K2 ? TipsRule.ACHIEVE_200103 : TipsRule.ACHIEVE_230103).getRuleCode(), 5) == 0) {
                TtsManager.H();
                TipSpeaker tipSpeaker = this.b;
                if (tipSpeaker == null) {
                    return;
                }
                TipSpeaker.f(tipSpeaker, TipsRule.ACHIEVE_200103, n0.e(l.a("【\\project\\】", str)), false, false, false, null, 60, null);
                return;
            }
        }
        TtsManager.H();
        if (z && z2) {
            TipSpeaker tipSpeaker2 = this.b;
            if (tipSpeaker2 == null) {
                return;
            }
            TipSpeaker.f(tipSpeaker2, this.f8763a == KeMu.K2 ? TipsRule.ACHIEVE_200101 : TipsRule.ACHIEVE_230101, n0.e(l.a("【\\project\\】", str)), false, false, false, null, 60, null);
            return;
        }
        TipSpeaker tipSpeaker3 = this.b;
        if (tipSpeaker3 == null) {
            return;
        }
        TipSpeaker.f(tipSpeaker3, this.f8763a == KeMu.K2 ? TipsRule.ACHIEVE_200102 : TipsRule.ACHIEVE_230102, n0.e(l.a("【\\project\\】", str)), false, false, false, null, 44, null);
    }

    public final void d(TraceStepValidEvent valid) {
        r.e(valid, "valid");
        this.f8766f = valid;
    }
}
