package cn.mucang.android.jiakaoyi.exam.k3.creator;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.param.ExamParam;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.f.b;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.init.a;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.c;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.ExamStepStatus;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.Judge100112Checker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.Judge100211Checker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.Judge100231Checker;
import cn.mucang.android.jiakaoyi.exam.k3.param.K3ExamParam;
import cn.mucang.android.jiakaoyi.exam.k3.teach.callback.TeachResultEventCallback;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachResult;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K3EngineManager extends a {
    private c config;
    private final HashSet<cn.mucang.android.jiakaoyi.engine.i.c.b> deductStepSet;
    private final cn.mucang.android.jiakaoyi.engine.i.a endInterceptor;
    private final int engineType;
    private ExamDataCreator examCreator;
    private final cn.mucang.android.jiakaoyi.engine.f.a examEventCallbackWarp;
    private final b examResultCallbackWarp;
    private final List<cn.mucang.android.jiakaoyi.engine.i.c.b> finishStepInfos;
    private K3GlobalStepConfig globalStepConfig;
    private Judge100112Checker judge100112Checker;
    private Judge100211Checker judge100211Checker;
    private Judge100231Checker judge100231Checker;
    private final cn.mucang.android.jiakaoyi.framework.h.c<Boolean> practiceGetter;
    private boolean qibuJudgeStart;
    private final b resultCallback;
    private final cn.mucang.android.jiakaoyi.framework.h.c<LocalRoute> routeGetter;
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b runningStepHandler;
    private final cn.mucang.android.jiakaoyi.signal.c.f.a signalCallback;
    private final cn.mucang.android.jiakaoyi.engine.f.a stepEventCallback;
    private final cn.mucang.android.jiakaoyi.framework.h.c<List<cn.mucang.android.jiakaoyi.engine.i.c.b>> stepListGetter;
    private final TeachResultEventCallback teachCallback;
    private final TeachResultEventCallback teachEventCallback;
    private final UpdateStepCallback updateStepCallback;

    public K3EngineManager(int i, b bVar, cn.mucang.android.jiakaoyi.engine.f.a aVar, TeachResultEventCallback teachResultEventCallback, UpdateStepCallback updateStepCallback, cn.mucang.android.jiakaoyi.framework.h.b<EngineState> bVar2, cn.mucang.android.jiakaoyi.framework.h.c<LocalRoute> cVar, cn.mucang.android.jiakaoyi.framework.h.c<Boolean> cVar2, cn.mucang.android.jiakaoyi.framework.h.c<List<cn.mucang.android.jiakaoyi.engine.i.c.b>> cVar3) {
        super(bVar2);
        this.finishStepInfos = new ArrayList();
        this.runningStepHandler = null;
        this.qibuJudgeStart = false;
        this.deductStepSet = new HashSet<>();
        this.signalCallback = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager.1
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public void onSignalChanged(e eVar) {
                if (K3EngineManager.this.globalStepConfig == null || K3EngineManager.this.qibuJudgeStart) {
                    return;
                }
                if (K3EngineManager.this.judge100112Checker == null) {
                    K3EngineManager k3EngineManager = K3EngineManager.this;
                    k3EngineManager.judge100112Checker = new Judge100112Checker(k3EngineManager.globalStepConfig);
                }
                if (!K3EngineManager.this.judge100112Checker.check(eVar)) {
                    K3EngineManager.this.engineOutDeduct(Step.K3_Global, 100112);
                }
                if (K3EngineManager.this.judge100231Checker == null) {
                    K3EngineManager k3EngineManager2 = K3EngineManager.this;
                    k3EngineManager2.judge100231Checker = new Judge100231Checker(k3EngineManager2.globalStepConfig);
                }
                if (!K3EngineManager.this.judge100231Checker.check(eVar)) {
                    K3EngineManager.this.engineOutDeduct(Step.K3_Global, 100231);
                }
                if (K3EngineManager.this.judge100211Checker == null) {
                    K3EngineManager k3EngineManager3 = K3EngineManager.this;
                    k3EngineManager3.judge100211Checker = new Judge100211Checker(k3EngineManager3.globalStepConfig);
                }
                if (K3EngineManager.this.judge100211Checker.check(eVar)) {
                    return;
                }
                K3EngineManager.this.engineOutDeduct(Step.K3_Global, 100211);
            }
        };
        this.teachEventCallback = new TeachResultEventCallback() { // from class: cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager.2
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.callback.TeachResultEventCallback
            public void handleResult(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar3, List<TeachResult> list) {
                K3EngineManager.this.teachCallback.handleResult(bVar3, list);
            }
        };
        this.endInterceptor = new cn.mucang.android.jiakaoyi.engine.i.a() { // from class: cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager.3
            @Override // cn.mucang.android.jiakaoyi.engine.i.a
            public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b onStepEnd(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar3) {
                Step step;
                if (bVar3 == null || (step = bVar3.f3142e) == Step.K3_ShangChe || step == Step.K3_QiBu || K3EngineManager.this.examCreator == null || K3EngineManager.this.examCreator.getRouteConfig() == null || K3EngineManager.this.examCreator.stepCreator() == null) {
                    return null;
                }
                return K3EngineManager.this.examCreator.stepCreator().createStep(bVar3.f3143f, K3EngineManager.this.examCreator.getRouteConfig().getStepConfig(bVar3.f3142e), false);
            }
        };
        this.examResultCallbackWarp = new b() { // from class: cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager.4
            @Override // cn.mucang.android.jiakaoyi.engine.f.b
            public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar2) {
                cn.mucang.android.jiakaoyi.engine.i.c.b bVar3 = aVar2.c;
                if (bVar3 != null) {
                    K3EngineManager.this.deductStepSet.add(bVar3);
                } else {
                    Step step = aVar2.f3102a.step;
                    boolean z = false;
                    for (cn.mucang.android.jiakaoyi.engine.i.c.b bVar4 : K3EngineManager.this.deductStepSet) {
                        if (bVar4.f3084d.type == step.type && bVar4.i == -1) {
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        K3EngineManager.this.deductStepSet.add(new cn.mucang.android.jiakaoyi.engine.i.c.b(step, null));
                    }
                }
                if (K3EngineManager.this.resultCallback == null) {
                    return;
                }
                K3EngineManager.this.resultCallback.onOneError(aVar2);
            }

            @Override // cn.mucang.android.jiakaoyi.engine.f.b
            public void onResult(f fVar) {
                if (K3EngineManager.this.resultCallback == null) {
                    return;
                }
                K3EngineManager.this.resultCallback.onResult(fVar);
            }
        };
        this.examEventCallbackWarp = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager.5
            @Override // cn.mucang.android.jiakaoyi.engine.f.a
            public void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar3, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar4) {
                K3EngineManager k3EngineManager;
                cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar4;
                ExamStepState examStepState;
                if (bVar3.f3142e == Step.K3_QiBu && bVar3.i == ExamStepStatus.Start) {
                    K3EngineManager.this.qibuJudgeStart = true;
                }
                cn.mucang.android.jiakaoyi.engine.i.c.b bVar5 = bVar3.f3143f;
                int i2 = bVar5 != null ? bVar5.i : -1;
                if (K3EngineManager.this.updateStepCallback != null) {
                    ExamStepStatus examStepStatus = bVar3.i;
                    if (examStepStatus == ExamStepStatus.Ready) {
                        examStepState = ExamStepState.Ready;
                    } else if (examStepStatus == ExamStepStatus.Start) {
                        examStepState = ExamStepState.Start;
                    } else if (examStepStatus == ExamStepStatus.End) {
                        examStepState = K3EngineManager.this.thisStepInfoHasError(bVar3) ? ExamStepState.Deduct : ExamStepState.End;
                        if (i2 > 0) {
                            K3EngineManager.this.finishStepInfos.add(bVar3.f3143f);
                        }
                    } else {
                        examStepState = ExamStepState.Wait;
                    }
                    K3EngineManager.this.updateStepCallback.onStepChanged(i2, bVar3.f3142e, examStepState);
                }
                ExamStepStatus examStepStatus2 = bVar3.i;
                if (examStepStatus2 == ExamStepStatus.Start) {
                    if (bVar3.f3142e != Step.K3_Global) {
                        K3EngineManager.this.runningStepHandler = bVar3;
                    }
                } else if (examStepStatus2 == ExamStepStatus.End && bVar3.f3142e != Step.K3_Global && (bVar4 = (k3EngineManager = K3EngineManager.this).runningStepHandler) != null && bVar4.f3143f == bVar3.f3143f) {
                    k3EngineManager.runningStepHandler = null;
                }
                if (K3EngineManager.this.stepEventCallback == null) {
                    return;
                }
                K3EngineManager.this.stepEventCallback.onStep(bVar3, cVar4);
            }
        };
        this.engineType = i;
        this.resultCallback = bVar;
        this.stepEventCallback = aVar;
        this.updateStepCallback = updateStepCallback;
        this.routeGetter = cVar;
        this.practiceGetter = cVar2;
        this.teachCallback = teachResultEventCallback;
        this.stepListGetter = cVar3;
    }

    private c createExamConfig() {
        String str;
        long j;
        boolean z;
        LocalRoute localRoute = this.routeGetter.get();
        String areaCode = (localRoute == null || n0.e(localRoute.getAreaCode())) ? "" : localRoute.getAreaCode();
        if (AppUtils.k()) {
            ExamSiteModel examSiteModelM = ExamSiteUtil.m(KeMu.K3);
            j = examSiteModelM != null ? examSiteModelM.examSiteId : 0L;
            str = areaCode;
        } else {
            long jH = ExamSiteUtil.h(0L);
            ExamSiteModel examSiteModelG = ExamSiteUtil.g();
            if (examSiteModelG != null) {
                long j2 = examSiteModelG.examSiteId;
                str = examSiteModelG.cityCode;
                j = j2;
            } else {
                str = areaCode;
                j = jH;
            }
        }
        this.examCreator = new ExamDataCreator(j, str, this.engineType, localRoute, this.teachEventCallback, this.stepListGetter);
        K3ExamParam k3ExamParam = new K3ExamParam();
        k3ExamParam.practiceModel = this.practiceGetter.get().booleanValue();
        int i = this.engineType;
        if (i == 4 || i == 2) {
            z = !AppUtils.h();
        } else {
            z = i0.b("RealTimeReportError", true) && !this.practiceGetter.get().booleanValue();
        }
        return new c(KeMu.K3, SelectCarManager.d(), this.examCreator, z, i0.b("AutoStartNextStep", true), true, k3ExamParam);
    }

    private cn.mucang.android.jiakaoyi.engine.i.c.b findStepInfoByIndex(int i) {
        for (cn.mucang.android.jiakaoyi.engine.i.c.b bVar : this.finishStepInfos) {
            if (bVar.i == i) {
                return bVar;
            }
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    protected cn.mucang.android.jiakaoyi.engine.c createEngine() {
        cn.mucang.android.jiakaoyi.engine.c cVar = new cn.mucang.android.jiakaoyi.engine.c(this.config, this.examResultCallbackWarp, this.examEventCallbackWarp, this.endInterceptor);
        if (this.engineType == 2) {
            cVar.q(true);
        }
        return cVar;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void destroy() {
        super.destroy();
        this.globalStepConfig = null;
        d.m.n(this.signalCallback);
        if (this.engine != null) {
            this.engine.c();
        }
        this.engine = null;
    }

    public final void enableTeachVoice(boolean z) {
        if (this.engine == null || this.engine.h() == null || this.engine.h().n == null) {
            return;
        }
        ExamParam examParam = this.engine.h().n;
        if (examParam instanceof K3ExamParam) {
            ((K3ExamParam) examParam).enableTeachVoice(z);
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o("科三K3ExamParam 设置有问题");
        }
    }

    public void engineOutDeduct(Step step, int i) {
        Deduct deduct = this.engine.h().m.getDeduct(i);
        if (deduct == null || !deduct.needAutoCheck()) {
            return;
        }
        this.engine.f(step, i);
    }

    public void exeThisStep(Step step) {
        if (this.engine == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("exeThisStep engine == null");
        } else if (this.engine.k()) {
            this.engine.e(step);
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o("exeThisStep engine  isStarted == false");
        }
    }

    public <T extends BaseStepConfig> T getConfig(Step step) {
        if (this.engine == null || this.engine.h() == null || this.engine.h().m == null) {
            return null;
        }
        return (T) this.engine.h().m.getConfig(step);
    }

    public StepConfig getStepConfig(Step step) {
        if (this.engine == null || this.engine.h() == null || this.engine.h().m == null) {
            return null;
        }
        return this.engine.h().m.getStepConfig(step);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void initEngine() {
        this.config = createExamConfig();
        super.initEngine();
    }

    public boolean isFinishRouteAllSteps() {
        LocalRoute localRoute = this.routeGetter.get();
        if (localRoute == null || localRoute.getNodes() == null || localRoute.getNodes().size() <= 0 || this.finishStepInfos.isEmpty()) {
            return false;
        }
        Iterator<RouteNode> it = localRoute.getNodes().iterator();
        while (it.hasNext()) {
            if (findStepInfoByIndex(it.next().getId()) == null) {
                return false;
            }
        }
        return true;
    }

    public void pause() {
        if (this.engine != null) {
            this.engine.l();
        }
    }

    public void resume() {
        if (this.engine != null) {
            this.engine.p();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public boolean start() {
        this.finishStepInfos.clear();
        this.deductStepSet.clear();
        this.runningStepHandler = null;
        this.qibuJudgeStart = false;
        d.m.b(this.signalCallback);
        boolean zStart = super.start();
        if (zStart) {
            this.globalStepConfig = (K3GlobalStepConfig) getStepConfig(Step.K3_Global).stepConfig;
        }
        return zStart;
    }

    public void startNextTeach() {
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar = this.runningStepHandler;
        if (bVar != null) {
            cn.mucang.android.jiakaoyi.engine.processor.exam.step.d dVarF = bVar.f();
            if (dVarF instanceof K3BaseStepData) {
                ((K3BaseStepData) dVarF).startNext();
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void stop() {
        d.m.n(this.signalCallback);
        this.runningStepHandler = null;
        this.qibuJudgeStart = false;
        this.finishStepInfos.clear();
        this.globalStepConfig = null;
        super.stop();
    }

    public boolean thisStepInfoHasError(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        cn.mucang.android.jiakaoyi.engine.i.c.b bVar2 = bVar.f3143f;
        for (cn.mucang.android.jiakaoyi.engine.i.c.b bVar3 : this.deductStepSet) {
            if (bVar2 != null && bVar2.i == bVar3.i && bVar2.f3084d.type == bVar3.f3084d.type) {
                return true;
            }
        }
        return false;
    }
}
