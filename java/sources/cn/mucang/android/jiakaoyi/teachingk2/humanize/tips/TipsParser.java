package cn.mucang.android.jiakaoyi.teachingk2.humanize.tips;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.ExamStep;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.SummaryRecordList;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.SummaryStat;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.TrainStep;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.UserTipsTimes;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.model.VoiceTipsRule;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecordApi;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindInfo;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;
import cn.mucang.android.jiakaoyi.teachingk2.unity.api.UserDataApi;
import cn.mucang.android.jiakaoyi.teachingk2.w0.api.VoiceTipsApi;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsParser;", "", "()V", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TipsParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f7214a = new a(null);

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.s$a */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsParser$Companion;", "", "()V", "parseArguments", "", "arguments", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "parseTips", "tipsValue", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;", "kemu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.s$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
        public static final class C0132a<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return kotlin.x.b.c(Long.valueOf(((TrainStep) t).startTime), Long.valueOf(((TrainStep) t2).startTime));
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.s$a$b */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
        public static final class b<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return kotlin.x.b.c(Long.valueOf(((TrainStep) t).startTime), Long.valueOf(((TrainStep) t2).startTime));
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.s$a$c */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
        public static final class c<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return kotlin.x.b.c(Long.valueOf(((ExamStep) t).getStartTime()), Long.valueOf(((ExamStep) t2).getStartTime()));
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.s$a$d */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
        public static final class d<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return kotlin.x.b.c(Long.valueOf(((ExamStep) t).getStartTime()), Long.valueOf(((ExamStep) t2).getStartTime()));
            }
        }

        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(SummaryRecordList recordList, CountDownLatch countDown, KeMu kemu) {
            Object objM139constructorimpl;
            kotlin.jvm.internal.r.e(recordList, "$recordList");
            kotlin.jvm.internal.r.e(countDown, "$countDown");
            kotlin.jvm.internal.r.e(kemu, "$kemu");
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(new UserRecordApi().n(kemu, true));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            recordList.examRecordList = (List) objM139constructorimpl;
            countDown.countDown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void i(SummaryRecordList recordList, CountDownLatch countDown, KeMu kemu) {
            Object objM139constructorimpl;
            kotlin.jvm.internal.r.e(recordList, "$recordList");
            kotlin.jvm.internal.r.e(countDown, "$countDown");
            kotlin.jvm.internal.r.e(kemu, "$kemu");
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(new UserRecordApi().n(kemu, false));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            recordList.todayExamRecordList = (List) objM139constructorimpl;
            countDown.countDown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(SummaryRecordList recordList, CountDownLatch countDown, KeMu kemu) {
            Object objM139constructorimpl;
            kotlin.jvm.internal.r.e(recordList, "$recordList");
            kotlin.jvm.internal.r.e(countDown, "$countDown");
            kotlin.jvm.internal.r.e(kemu, "$kemu");
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(new UserRecordApi().q(kemu, true));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            recordList.trainRecordList = (List) objM139constructorimpl;
            countDown.countDown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void k(SummaryRecordList recordList, CountDownLatch countDown, KeMu kemu) {
            Object objM139constructorimpl;
            kotlin.jvm.internal.r.e(recordList, "$recordList");
            kotlin.jvm.internal.r.e(countDown, "$countDown");
            kotlin.jvm.internal.r.e(kemu, "$kemu");
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(new UserRecordApi().q(kemu, false));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            recordList.todayTrainRecordList = (List) objM139constructorimpl;
            countDown.countDown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void l(SummaryRecordList recordList, CountDownLatch countDown, KeMu kemu) {
            Object objM139constructorimpl;
            ArrayList arrayList;
            kotlin.jvm.internal.r.e(recordList, "$recordList");
            kotlin.jvm.internal.r.e(countDown, "$countDown");
            kotlin.jvm.internal.r.e(kemu, "$kemu");
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(new UserDataApi().s(kemu));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            Object obj = null;
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            List list = (List) objM139constructorimpl;
            int i = 0;
            if (list == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (((SummaryRecordList.PassCount) obj2).step != 150) {
                        arrayList.add(obj2);
                    }
                }
            }
            recordList.singleExamPassList = arrayList;
            if (list != null) {
                for (Object obj3 : list) {
                    if (((SummaryRecordList.PassCount) obj3).step == 150) {
                        obj = obj3;
                        break;
                    }
                }
                SummaryRecordList.PassCount passCount = (SummaryRecordList.PassCount) obj;
                if (passCount != null) {
                    i = passCount.examPassCount;
                }
            }
            recordList.allExamPassCount = i;
            countDown.countDown();
        }

        public final void f(TipsArguments arguments) {
            Object objM139constructorimpl;
            Object objM139constructorimpl2;
            kotlin.jvm.internal.r.e(arguments, "arguments");
            try {
                Result.Companion companion = Result.INSTANCE;
                VoiceTipsApi voiceTipsApi = new VoiceTipsApi();
                CarBindInfo carBindInfoA = CarInfoManager.a();
                objM139constructorimpl = Result.m139constructorimpl(voiceTipsApi.n(carBindInfoA == null ? 0L : carBindInfoA.getDriveSchoolId()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            List<? extends VoiceTipsRule> list = (List) objM139constructorimpl;
            try {
                Result.Companion companion3 = Result.INSTANCE;
                objM139constructorimpl2 = Result.m139constructorimpl(new VoiceTipsApi().m());
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                objM139constructorimpl2 = Result.m139constructorimpl(kotlin.k.a(th2));
            }
            List<UserTipsTimes> list2 = (List) (Result.m145isFailureimpl(objM139constructorimpl2) ? null : objM139constructorimpl2);
            if (list2 != null) {
                arguments.setOriginUserTimes(new HashMap<>());
                for (UserTipsTimes userTipsTimes : list2) {
                    HashMap<String, Integer> originUserTimes = arguments.getOriginUserTimes();
                    if (originUserTimes != null) {
                        originUserTimes.put(userTipsTimes.getRuleCode(), Integer.valueOf(userTipsTimes.getTimes()));
                    }
                }
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("拉取到语音助手配置:" + ((Object) JSON.toJSONString(list)) + " \n " + ((Object) JSON.toJSONString(list2)));
            arguments.setOriginRule(list);
        }

        public final void g(t tipsValue, final KeMu kemu) throws InterruptedException {
            Object objM139constructorimpl;
            List listM0;
            kotlin.jvm.internal.r.e(tipsValue, "tipsValue");
            kotlin.jvm.internal.r.e(kemu, "kemu");
            cn.mucang.android.jiakaoyi.framework.log.f.o("开始获取练车历史数据");
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(new UserDataApi().p(kemu));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            SummaryStat summaryStat = (SummaryStat) objM139constructorimpl;
            final CountDownLatch countDownLatch = new CountDownLatch(5);
            final SummaryRecordList summaryRecordList = new SummaryRecordList();
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.q
                @Override // java.lang.Runnable
                public final void run() {
                    TipsParser.a.l(summaryRecordList, countDownLatch, kemu);
                }
            });
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.m
                @Override // java.lang.Runnable
                public final void run() {
                    TipsParser.a.h(summaryRecordList, countDownLatch, kemu);
                }
            });
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.n
                @Override // java.lang.Runnable
                public final void run() {
                    TipsParser.a.i(summaryRecordList, countDownLatch, kemu);
                }
            });
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.o
                @Override // java.lang.Runnable
                public final void run() {
                    TipsParser.a.j(summaryRecordList, countDownLatch, kemu);
                }
            });
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.p
                @Override // java.lang.Runnable
                public final void run() {
                    TipsParser.a.k(summaryRecordList, countDownLatch, kemu);
                }
            });
            countDownLatch.await(60L, TimeUnit.SECONDS);
            cn.mucang.android.jiakaoyi.framework.log.f.o("获取练车历史数据完成");
            tipsValue.f7215a = summaryStat;
            tipsValue.b = summaryRecordList;
            if (summaryStat != null) {
                long j = 1000;
                tipsValue.f7218f = summaryStat.singleTrainCostTime * j;
                tipsValue.j = summaryStat.examCostTime * j;
                tipsValue.f7217e = summaryStat.trainCostTime * j;
                tipsValue.f7216d = summaryStat.loginTime * j;
                List<SummaryStat.BehaviorStat> list = summaryStat.behaviorStatList;
                if (list != null) {
                    for (SummaryStat.BehaviorStat behaviorStat : list) {
                        HashMap<Integer, Integer> map = tipsValue.n;
                        kotlin.jvm.internal.r.d(map, "tipsValue.globalCheck");
                        map.put(Integer.valueOf(behaviorStat.behaviorCode), Integer.valueOf(behaviorStat.count));
                    }
                }
            }
            List<TrainStep> list2 = summaryRecordList.todayTrainRecordList;
            if (list2 != null) {
                tipsValue.f7219g.addAll(CollectionsKt___CollectionsKt.G0(list2, new C0132a()));
            }
            List<TrainStep> list3 = summaryRecordList.trainRecordList;
            if (list3 != null) {
                tipsValue.f7220h.addAll(CollectionsKt___CollectionsKt.G0(list3, new b()));
                TrainStep trainStep = (TrainStep) kotlin.collections.s.q0(list3);
                int i = trainStep == null ? -1 : trainStep.step;
                HashMap<Integer, Integer> map2 = tipsValue.i;
                kotlin.jvm.internal.r.d(map2, "tipsValue.stepSerialPassCount");
                Integer numValueOf = Integer.valueOf(i);
                if (!list3.isEmpty()) {
                    ListIterator<TrainStep> listIterator = list3.listIterator(list3.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            listM0 = CollectionsKt___CollectionsKt.M0(list3);
                            break;
                        }
                        TrainStep trainStepPrevious = listIterator.previous();
                        if (!(trainStepPrevious.valid && trainStepPrevious.passed && trainStepPrevious.step == i)) {
                            listIterator.next();
                            int size = list3.size() - listIterator.nextIndex();
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
                map2.put(numValueOf, Integer.valueOf(listM0.size()));
            }
            List<ExamStep> list4 = summaryRecordList.examRecordList;
            if (list4 != null) {
                tipsValue.k.addAll(CollectionsKt___CollectionsKt.G0(list4, new c()));
            }
            List<ExamStep> list5 = summaryRecordList.todayExamRecordList;
            if (list5 == null) {
                return;
            }
            tipsValue.l.addAll(CollectionsKt___CollectionsKt.G0(list5, new d()));
        }
    }
}
