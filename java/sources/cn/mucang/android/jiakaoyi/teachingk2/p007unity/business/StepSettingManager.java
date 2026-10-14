package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.j.b;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.level.LevelStepCalculator;
import cn.mucang.android.jiakaoyi.teachingk2.level.TutorialLevel;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConfigLevelModel;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.LoopStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.StepChangeModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.StepSettingModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.unity.c.d;
import com.tencent.tauth.AuthActivity;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\b\u0010\"\u001a\u00020\u001eH\u0007J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u0011H\u0007J\b\u0010%\u001a\u00020\u001eH\u0007J\u0006\u0010&\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u001c¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/stepsync/StepTriggerAsk$AskCallback;", "()V", "ALL_NAME", "", "changeAction", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "changeModel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;", "circleList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;", "filterSteps", "", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "value", "", "selectIndex", "getSelectIndex$annotations", "getSelectIndex", "()I", "setSelectIndex", "(I)V", "stepList", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;", "getStepList$annotations", "getStepList", "()Ljava/util/List;", "callback", "", "boundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", AuthActivity.ACTION_KEY, "change", "handleSelectIndex", "index", "initList", "onCircleTrainStart", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepSettingManager implements b.InterfaceC0107b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f8398d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f8400f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StepSettingManager f8397a = new StepSettingManager();
    private static final Set<Step> b = u0.f(Step.K2_XiaCheJianCha, Step.K2_QiDianQuYu, Step.K2_BianXianShiBie, Step.K2_YuanHuanLianXi, Step.K2_DoubleYuanHuan);
    private static final StepChangeModel c = new StepChangeModel();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List<TrainStepModel> f8399e = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final List<ConfigLevelModel> f8401g = new ArrayList();

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((Step) t).type), Integer.valueOf(((Step) t2).type));
        }
    }

    private StepSettingManager() {
    }

    public static final void a() {
        cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar = f8398d;
        if (bVar == null) {
            return;
        }
        bVar.callback(Boolean.TRUE);
    }

    public static final int b() {
        return f8400f;
    }

    public static final List<TrainStepModel> c() {
        return f8399e;
    }

    public static final void e(final int i) {
        TrainStepModel trainStepModel;
        int i2 = f8400f;
        if (i2 == i) {
            StepSettingModel stepSettingModel = new StepSettingModel();
            stepSettingModel.index = b();
            stepSettingModel.itemList = c();
            d.e(stepSettingModel);
            return;
        }
        List<TrainStepModel> list = f8399e;
        TrainStepModel trainStepModel2 = (TrainStepModel) s.f0(list, i2);
        if (trainStepModel2 == null || (trainStepModel = (TrainStepModel) s.f0(list, i)) == null) {
            return;
        }
        ConfigLevelModel configLevelModel = null;
        for (ConfigLevelModel configLevelModel2 : f8401g) {
            if (trainStepModel.getBusinessId() == configLevelModel2.getId()) {
                configLevelModel = configLevelModel2;
                break;
            }
        }
        LevelStepCalculator.d(trainStepModel2, configLevelModel, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.business.StepSettingManager$handleSelectIndex$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StepSettingManager.h(i);
                StepSettingModel stepSettingModel2 = new StepSettingModel();
                stepSettingModel2.index = StepSettingManager.b();
                stepSettingModel2.itemList = StepSettingManager.c();
                d.e(stepSettingModel2);
            }
        });
    }

    public static final void f() {
        List<LoopStepModel> loopStep;
        f8399e.clear();
        b.g(2).t(null);
        ConfigLevelModel configLevelModelB = LevelStepCalculator.b();
        if (configLevelModelB != null && configLevelModelB.getCode() == TutorialLevel.CircleTrain.getServerCode()) {
            ArrayList arrayList = new ArrayList();
            ConfigLevelModel configLevelModelB2 = LevelStepCalculator.b();
            if (configLevelModelB2 != null && (loopStep = configLevelModelB2.getLoopStep()) != null) {
                Iterator<T> it = loopStep.iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(((LoopStepModel) it.next()).getStep()));
                }
            }
            List<TrainStepModel> list = f8399e;
            ConfigLevelModel configLevelModelB3 = LevelStepCalculator.b();
            TrainStepModel trainStepModel = new TrainStepModel(configLevelModelB3 != null ? configLevelModelB3.getDescription() : null, arrayList);
            ConfigLevelModel configLevelModelB4 = LevelStepCalculator.b();
            r.c(configLevelModelB4);
            trainStepModel.setBusinessId(configLevelModelB4.getId());
            v vVar = v.f15822a;
            list.add(trainStepModel);
            h(0);
            return;
        }
        j jVar = n.b().c;
        if (jVar == null || !LocalConfigManager.f(LocalConfig.ChangeStep)) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        List listM0 = CollectionsKt___CollectionsKt.M0(jVar.f4723d.keySet());
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : listM0) {
            if (!b.contains((Step) obj)) {
                arrayList3.add(obj);
            }
        }
        for (Step step : CollectionsKt___CollectionsKt.G0(arrayList3, new a())) {
            arrayList2.add(Integer.valueOf(step.type));
            List<TrainStepModel> listC = c();
            TrainStepModel trainStepModel2 = new TrainStepModel(step.stepName, t.d(Integer.valueOf(step.type)));
            trainStepModel2.setBusinessId(step.type);
            v vVar2 = v.f15822a;
            listC.add(trainStepModel2);
        }
        StepSettingManager stepSettingManager = f8397a;
        if (f8399e.size() == 1) {
            b.g(2).t(null);
        } else {
            b.g(2).t(stepSettingManager);
        }
        List<ConfigLevelModel> listL = UserLevelManager.l();
        List<ConfigLevelModel> list2 = f8401g;
        list2.clear();
        if (g.d(listL)) {
            list2.addAll(listL);
        }
        for (ConfigLevelModel configLevelModel : list2) {
            ArrayList arrayList4 = new ArrayList();
            List<LoopStepModel> loopStep2 = configLevelModel.getLoopStep();
            if (loopStep2 != null) {
                Iterator<T> it2 = loopStep2.iterator();
                while (it2.hasNext()) {
                    arrayList4.add(Integer.valueOf(((LoopStepModel) it2.next()).getStep()));
                }
            }
            List<TrainStepModel> listC2 = c();
            TrainStepModel trainStepModel3 = new TrainStepModel(configLevelModel.getDescription(), arrayList4);
            trainStepModel3.setBusinessId(configLevelModel.getId());
            v vVar3 = v.f15822a;
            listC2.add(trainStepModel3);
        }
        List<TrainStepModel> list3 = f8399e;
        if (!list3.isEmpty()) {
            list3.add(0, new TrainStepModel("全部项目", arrayList2));
        }
        h(0);
        if (LevelStepCalculator.b() != null) {
            int i = 0;
            for (Object obj2 : list3) {
                int i2 = i + 1;
                if (i < 0) {
                    s.t();
                    throw null;
                }
                TrainStepModel trainStepModel4 = (TrainStepModel) obj2;
                if (trainStepModel4.getBusinessId() != 0) {
                    int businessId = trainStepModel4.getBusinessId();
                    ConfigLevelModel configLevelModelB5 = LevelStepCalculator.b();
                    if (configLevelModelB5 != null && businessId == configLevelModelB5.getId()) {
                        h(i);
                        return;
                    }
                }
                i = i2;
            }
        }
    }

    public static final void h(int i) {
        List<Integer> stepIdGroup;
        f8400f = i;
        TrainStepModel trainStepModel = (TrainStepModel) s.f0(f8399e, i);
        if (trainStepModel == null || (stepIdGroup = trainStepModel.getStepIdGroup()) == null) {
            return;
        }
        b.u(stepIdGroup);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.InterfaceC0107b
    public void d(cn.mucang.android.jiakaoyi.hpmap.a.a.b boundary, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> action) {
        r.e(boundary, "boundary");
        r.e(action, "action");
        StepChangeModel stepChangeModel = c;
        stepChangeModel.stepId = boundary.s().type;
        String str = boundary.s().stepName;
        stepChangeModel.stepName = str;
        if (n0.g(str)) {
            f8398d = action;
            d.e(stepChangeModel);
            cn.mucang.android.jiakaoyi.teachingk2.n0.e();
        }
    }

    public final void g() {
        if (LevelStepCalculator.b() != null) {
            f();
            int i = 0;
            for (Object obj : f8399e) {
                int i2 = i + 1;
                if (i < 0) {
                    s.t();
                    throw null;
                }
                TrainStepModel trainStepModel = (TrainStepModel) obj;
                if (trainStepModel.getBusinessId() != 0) {
                    int businessId = trainStepModel.getBusinessId();
                    ConfigLevelModel configLevelModelB = LevelStepCalculator.b();
                    if (configLevelModelB != null && businessId == configLevelModelB.getId()) {
                        h(i);
                        StepSettingModel stepSettingModel = new StepSettingModel();
                        stepSettingModel.index = b();
                        stepSettingModel.itemList = c();
                        d.e(stepSettingModel);
                        return;
                    }
                }
                i = i2;
            }
        }
    }
}
