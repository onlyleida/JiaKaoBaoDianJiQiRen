package cn.mucang.android.jiakaoyi.teachingk2.w0.handle;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.ExamStep;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.SummaryRecordList;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipSpeaker;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipsArguments;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipsRule;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.n0;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.l;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.w0.b.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0012J\u000e\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\u001aJ\u000e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/ExamRule;", "", "kemu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "tipSpeaker", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;", "tipsValue", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;", "arguments", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V", "getArguments", "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "examStartTime", "", "examStepModel", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;", "examType", "", "getKemu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getTipSpeaker", "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;", "getTipsValue", "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;", "handleExamStep", "", "step", "handleExamType", "type", "startExam", "stopExam", "isPass", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamRule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeMu f8753a;
    private final TipSpeaker b;
    private final t c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TipsArguments f8754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExamStep f8755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f8756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8757g;

    public ExamRule(KeMu kemu, TipSpeaker tipSpeaker, t tVar, TipsArguments tipsArguments) {
        r.e(kemu, "kemu");
        this.f8753a = kemu;
        this.b = tipSpeaker;
        this.c = tVar;
        this.f8754d = tipsArguments;
        this.f8757g = -1;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final KeMu getF8753a() {
        return this.f8753a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final TipSpeaker getB() {
        return this.b;
    }

    public final void c(int i) {
        ExamStep examStep = this.f8755e;
        if (examStep == null) {
            return;
        }
        examStep.addStep(i);
    }

    public final void d(int i) {
        this.f8757g = i;
    }

    public final void e() {
        this.f8755e = new ExamStep();
        this.f8756f = System.currentTimeMillis();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    /* JADX WARN: Code duplicated, block: B:72:0x0110  */
    /* JADX WARN: Code duplicated, block: B:78:0x0126  */
    /* JADX WARN: Code duplicated, block: B:81:0x012d  */
    public final void f(boolean z) {
        TipsArguments tipsArguments;
        List listM0;
        List listM1;
        TipSpeaker b;
        TipSpeaker b2;
        TipSpeaker b3;
        Object next;
        int i;
        TipsRule tipsRule;
        TipSpeaker b4;
        ExamStep examStep = this.f8755e;
        if (examStep != null) {
            examStep.setPassed(z);
        }
        ExamStep examStep2 = this.f8755e;
        if (examStep2 != null) {
            examStep2.setType(this.f8757g);
        }
        ExamStep examStep3 = this.f8755e;
        t tVar = this.c;
        if (tVar == null || (tipsArguments = this.f8754d) == null) {
            return;
        }
        tVar.j += System.currentTimeMillis() - this.f8756f;
        KeMu keMu = this.f8753a;
        KeMu keMu2 = KeMu.K2;
        TipsRule tipsRule2 = keMu == keMu2 ? TipsRule.ACHIEVE_200104 : TipsRule.ACHIEVE_230104;
        long paramTimeMs = tipsArguments.getParamTimeMs(tipsRule2.getRuleCode(), 180000L);
        if (!tipsArguments.triggerBefore(tipsRule2.getRuleCode()) && tVar.j >= paramTimeMs) {
            TipSpeaker tipSpeaker = this.b;
            if (tipSpeaker != null) {
                TipSpeaker.g(tipSpeaker, tipsRule2, true, false, false, null, 28, null);
            }
            tipsArguments.updateBeforeTimes(tipsRule2.getRuleCode());
        }
        boolean z2 = false;
        if (examStep3 != null) {
            tVar.l.add(examStep3);
            tVar.k.add(examStep3);
            SummaryRecordList summaryRecordList = tVar.b;
            if (getF8753a() == keMu2 && examStep3.getPassed() && examStep3.isValid() && summaryRecordList != null) {
                List<SummaryRecordList.PassCount> list = summaryRecordList.singleExamPassList;
                if (list == null) {
                    i = 0;
                } else {
                    Iterator<T> it = list.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!(((SummaryRecordList.PassCount) next).step == examStep3.getStep()));
                    SummaryRecordList.PassCount passCount = (SummaryRecordList.PassCount) next;
                    if (passCount == null) {
                        i = 0;
                    } else {
                        i = passCount.examPassCount;
                    }
                }
                if (examStep3.isSingle() && i == 0) {
                    TipsRule tipsRule3 = TipsRule.ACHIEVE_200105;
                    if (!tipsArguments.triggerBefore(tipsRule3.getRuleCode())) {
                        TipSpeaker b5 = getB();
                        if (b5 != null) {
                            Step stepFindWithType = Step.findWithType(examStep3.getStep());
                            String strA = stepFindWithType == null ? null : stepFindWithType.stepName;
                            if (strA == null) {
                                strA = k0.a(R.string.teachbase_none_step);
                            }
                            TipSpeaker.f(b5, tipsRule3, n0.e(l.a("【\\project\\】", strA)), true, false, false, null, 56, null);
                        }
                        tipsArguments.updateBeforeTimes(tipsRule3.getRuleCode());
                    } else if (!examStep3.isSingle()) {
                        tipsRule = TipsRule.ACHIEVE_200107;
                        if (!tipsArguments.triggerBefore(tipsRule.getRuleCode())) {
                            b4 = getB();
                            if (b4 != null) {
                                TipSpeaker.g(b4, tipsRule, true, false, false, null, 28, null);
                            }
                            tipsArguments.updateBeforeTimes(tipsRule.getRuleCode());
                        }
                    }
                } else if (!examStep3.isSingle() && summaryRecordList.allExamPassCount == 0) {
                    tipsRule = TipsRule.ACHIEVE_200107;
                    if (!tipsArguments.triggerBefore(tipsRule.getRuleCode())) {
                        b4 = getB();
                        if (b4 != null) {
                            TipSpeaker.g(b4, tipsRule, true, false, false, null, 28, null);
                        }
                        tipsArguments.updateBeforeTimes(tipsRule.getRuleCode());
                    }
                }
            }
        }
        TipsRule tipsRule4 = this.f8753a == KeMu.K2 ? TipsRule.ATTEND_400101 : TipsRule.ATTEND_430101;
        int paramCount = tipsArguments.getParamCount(tipsRule4.getRuleCode(), 2);
        List<ExamStep> list2 = tVar.l;
        r.d(list2, "tipsValue.examTodayRecords");
        if (!list2.isEmpty()) {
            ListIterator<ExamStep> listIterator = list2.listIterator(list2.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listM0 = CollectionsKt___CollectionsKt.M0(list2);
                    break;
                }
                if (!(!listIterator.previous().getPassed())) {
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
        if ((!listM0.isEmpty()) && listM0.size() % paramCount == 0 && (b3 = getB()) != null) {
            TipSpeaker.g(b3, tipsRule4, true, false, false, null, 28, null);
        }
        if (this.f8753a != KeMu.K2) {
            return;
        }
        List<ExamStep> list3 = tVar.k;
        r.d(list3, "tipsValue.examRecentRecords");
        ExamStep examStep4 = (ExamStep) s.q0(list3);
        List<ExamStep> list4 = tVar.k;
        r.d(list4, "tipsValue.examRecentRecords");
        if (!list4.isEmpty()) {
            ListIterator<ExamStep> listIterator2 = list4.listIterator(list4.size());
            while (true) {
                if (!listIterator2.hasPrevious()) {
                    listM1 = CollectionsKt___CollectionsKt.M0(list4);
                    break;
                }
                ExamStep examStepPrevious = listIterator2.previous();
                if (!((examStep4 != null && examStepPrevious.getType() == examStep4.getType()) && examStepPrevious.getPassed() && examStepPrevious.isValid() && (!examStepPrevious.isSingle() || examStepPrevious.getStep() == examStep4.getStep()))) {
                    listIterator2.next();
                    int size2 = list4.size() - listIterator2.nextIndex();
                    if (size2 != 0) {
                        ArrayList arrayList2 = new ArrayList(size2);
                        while (listIterator2.hasNext()) {
                            arrayList2.add(listIterator2.next());
                        }
                        listM1 = arrayList2;
                        break;
                    }
                    listM1 = u.j();
                    break;
                }
            }
        } else {
            listM1 = u.j();
        }
        TipsRule tipsRule5 = TipsRule.ACHIEVE_200108;
        int paramCount2 = tipsArguments.getParamCount(tipsRule5.getRuleCode(), 5);
        TipsRule tipsRule6 = TipsRule.ACHIEVE_200106;
        int paramCount3 = tipsArguments.getParamCount(tipsRule6.getRuleCode(), 5);
        if (!(examStep4 != null && examStep4.isSingle()) && (!listM1.isEmpty()) && listM1.size() % paramCount2 == 0 && (b2 = getB()) != null) {
            TipSpeaker.g(b2, tipsRule5, true, false, false, null, 28, null);
        }
        if (examStep4 != null && examStep4.isSingle()) {
            z2 = true;
        }
        if (z2 && (!listM1.isEmpty()) && listM1.size() % paramCount3 == 0 && (b = getB()) != null) {
            Step stepFindWithType2 = Step.findWithType(examStep4.getStep());
            String strA2 = stepFindWithType2 != null ? stepFindWithType2.stepName : null;
            if (strA2 == null) {
                strA2 = k0.a(R.string.teachbase_none_step);
            }
            TipSpeaker.f(b, tipsRule6, n0.e(l.a("【\\project\\】", strA2)), true, false, false, null, 56, null);
        }
    }
}
