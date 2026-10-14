package cn.mucang.android.jiakaoyi.exam.k3.light;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LightExam {
    private final K3DengGuangStepConfig config;
    private final List<LightExamModel> data;
    private final cn.mucang.android.jiakaoyi.framework.h.c<Boolean> deductIsOver;
    private final Map<Integer, Deduct> deducts;
    private final LightEngineOpenChecker engineOpenChecker;
    private final LightExamCallback examCallback;
    private final K3TopicHandler handler;
    private int index;
    private final LightStartVoiceChecker startVoiceChecker;
    private boolean isStartExam = false;
    private boolean isPlayingStartVoice = false;
    private boolean hasPlayingStartVoice = false;
    private final cn.mucang.android.jiakaoyi.signal.c.f.a callback = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.a
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            this.f3225a.checkSignal(eVar);
        }
    };
    private boolean isPause = false;

    public interface LightExamCallback {
        void onClickClose();

        void onFailure(LightExamModel lightExamModel, Deduct deduct);

        void onFinish();

        void onStart(LightExamModel lightExamModel);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LightExam(List<LightExamModel> list, K3DengGuangStepConfig k3DengGuangStepConfig, LightExamCallback lightExamCallback, Map<Integer, Deduct> map, cn.mucang.android.jiakaoyi.framework.h.c<Boolean> cVar, boolean z) {
        this.data = list;
        this.config = k3DengGuangStepConfig;
        this.examCallback = lightExamCallback;
        this.deductIsOver = cVar;
        this.deducts = map;
        this.handler = new K3TopicHandler(k3DengGuangStepConfig, map, cVar, z ? ((Boolean) k3DengGuangStepConfig.p202141.value).booleanValue() : ((Boolean) k3DengGuangStepConfig.p202126.value).booleanValue());
        if (list != null) {
            for (LightExamModel lightExamModel : list) {
                StringBuilder sb = new StringBuilder();
                sb.append("desc:");
                sb.append(lightExamModel.desc);
                t.h("TimeTag", "model.name : " + lightExamModel.desc);
                if (lightExamModel.lights != null) {
                    sb.append(";lights:");
                    sb.append(lightExamModel.lights.toString());
                    t.h("TimeTag", "model.lights : " + lightExamModel.lights.toString());
                }
                if (lightExamModel.notAllowed != null) {
                    sb.append(";notAllowed:");
                    sb.append(lightExamModel.notAllowed.toString());
                    t.h("TimeTag", "model.notAllowed : " + lightExamModel.notAllowed.toString());
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            }
        }
        if (list != null && list.size() > 0) {
            list.get(0).isStart = true;
            if (list.size() > 1) {
                list.get(list.size() - 1).isEnd = true;
            }
        }
        this.engineOpenChecker = new LightEngineOpenChecker(k3DengGuangStepConfig, map, lightExamCallback);
        this.startVoiceChecker = new LightStartVoiceChecker(k3DengGuangStepConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(boolean z) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("结束最后一条指令 结束灯光考试 forceEnd " + z);
        stop();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean canContinue() {
        if (this.deductIsOver.get().booleanValue()) {
            return this.deductIsOver.get().booleanValue() && ((Boolean) this.config.p202114.value).booleanValue();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void finishLightExam(final boolean z) {
        this.isPause = true;
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f3230a.b(z);
            }
        }, (z || ((Integer) this.config.p202115.value).intValue() <= 0) ? 0L : ((Integer) this.config.p202115.value).intValue() * 1000);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0086  */
    /* JADX WARN: Code duplicated, block: B:33:0x008c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0099  */
    /* JADX WARN: Multi-variable type inference failed */
    public void checkSignal(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        List<LightExamModel> list;
        int iIntValue;
        t.h("TAG", "checkSignal******************");
        if (this.isPause || (list = this.data) == null || list.isEmpty()) {
            return;
        }
        if (((Integer) this.config.p202143.value).intValue() == 0) {
            if (!this.startVoiceChecker.checkPlayingFinish() || !this.engineOpenChecker.check(eVar)) {
                return;
            }
        } else if (!this.startVoiceChecker.checkPlayingFinish()) {
            return;
        }
        if (this.isStartExam) {
            if (this.index < this.data.size()) {
                LightExamModel lightExamModel = this.data.get(this.index);
                if (this.index == this.data.size() - 1) {
                    List<LightExamModel> list2 = this.data;
                    if (list2.get(list2.size() - 1).isLast()) {
                        iIntValue = ((Integer) this.config.p202110.value).intValue();
                    } else if (lightExamModel.isSpecialLight()) {
                        iIntValue = ((Integer) this.config.p202108.value).intValue();
                    } else {
                        iIntValue = ((Integer) this.config.p202107.value).intValue();
                    }
                } else if (lightExamModel.isSpecialLight()) {
                    iIntValue = ((Integer) this.config.p202108.value).intValue();
                } else {
                    iIntValue = ((Integer) this.config.p202107.value).intValue();
                }
                Boolean boolHandleTopic = this.handler.handleTopic(eVar, lightExamModel, this.index, lightExamModel.isLast(), ((long) iIntValue) * 1000, this.examCallback);
                if (boolHandleTopic == null) {
                    return;
                }
                if (!boolHandleTopic.booleanValue() && !canContinue()) {
                    finishLightExam(lightExamModel.isLast() && ((Boolean) this.config.p202127.value).booleanValue() && lightExamModel.isOffLight());
                    this.handler.reset();
                    return;
                } else {
                    int i = this.index + 1;
                    this.index = i;
                    if (i > this.data.size() - 1) {
                        finishLightExam(lightExamModel.isLast() && ((Boolean) this.config.p202127.value).booleanValue() && lightExamModel.isOffLight());
                    }
                }
            }
            this.handler.reset();
        }
    }

    public boolean isPause() {
        return this.isPause;
    }

    public boolean isStart() {
        return this.isStartExam;
    }

    public void pause() {
        this.isPause = true;
    }

    public void resume() {
        if (isStart()) {
            this.isPause = false;
        }
    }

    public void start() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("开始灯光考试");
        this.index = 0;
        this.isStartExam = true;
        this.isPause = false;
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.callback);
    }

    public void stop() {
        if (this.isStartExam) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("结束灯光考试");
            TtsManager.H();
            if (this.examCallback != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("examCallback.onFinish()");
                t.h("TimeTag", "examCallback.onFinish()");
                this.examCallback.onFinish();
            }
            this.isStartExam = false;
            this.isPause = false;
            cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.callback);
        }
    }
}
