package cn.mucang.android.jiakaoyi.exam.k3.teach;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.teach.callback.TeachResultEventCallback;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionResult;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionState;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachResult;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class TeachingProcessor {
    private List<ActionEventHandler> actionEventHandlers;
    private cn.mucang.android.jiakaoyi.engine.processor.exam.step.b currentStepHandler;
    public boolean hasInit;
    private final boolean isPlayTeachVoice;
    private List<cn.mucang.android.jiakaoyi.engine.processor.exam.j.a> positionHelpers;
    private TeachResultEventCallback resultEventCallback;
    public int startingIndex = 0;
    private List<TeachData> teachDataList;
    private List<TeachResult> teachResults;

    public TeachingProcessor(TeachResultEventCallback teachResultEventCallback, List<TeachData> list, boolean z) {
        this.teachDataList = list;
        this.resultEventCallback = teachResultEventCallback;
        this.isPlayTeachVoice = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        TeachResultEventCallback teachResultEventCallback = this.resultEventCallback;
        if (teachResultEventCallback != null) {
            teachResultEventCallback.handleResult(bVar, this.teachResults);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        TeachResultEventCallback teachResultEventCallback = this.resultEventCallback;
        if (teachResultEventCallback != null) {
            teachResultEventCallback.handleResult(bVar, this.teachResults);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f() {
        TeachResultEventCallback teachResultEventCallback = this.resultEventCallback;
        if (teachResultEventCallback != null) {
            teachResultEventCallback.handleResult(this.currentStepHandler, this.teachResults);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        TeachResultEventCallback teachResultEventCallback = this.resultEventCallback;
        if (teachResultEventCallback != null) {
            teachResultEventCallback.handleResult(bVar, this.teachResults);
        }
    }

    private cn.mucang.android.jiakaoyi.engine.j.a getTeachPointById(Long l, List<cn.mucang.android.jiakaoyi.engine.j.a> list) {
        if (list == null || l == null) {
            return null;
        }
        for (cn.mucang.android.jiakaoyi.engine.j.a aVar : list) {
            if (Objects.equals(aVar.f3100a, l)) {
                return aVar;
            }
        }
        return null;
    }

    private void handleResult(final cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, int i) {
        for (int i2 = this.startingIndex; i2 < i; i2++) {
            TeachResult teachResult = this.teachResults.get(i2);
            if (isValidResult(teachResult)) {
                teachResult.result = new ActionResult(ActionState.NoFinish, "未执行", 0);
            }
        }
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f3247a.b(bVar);
            }
        });
    }

    private boolean isValidResult(TeachResult teachResult) {
        ActionState actionState;
        ActionResult actionResult = teachResult.result;
        return actionResult == null || (actionState = actionResult.state) == ActionState.Waiting || actionState == ActionState.Starting;
    }

    private void startTeachStep(final cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, TeachData teachData, TeachResult teachResult) {
        teachResult.result = new ActionResult(ActionState.Starting);
        teachResult.isStarting = true;
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f3248a.h(bVar);
            }
        });
        if (this.isPlayTeachVoice) {
            TtsManager.u(teachData.desc, TtsGrade.Teach, new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.TeachingProcessor.1
                @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                public void onSpeakEnd() {
                }
            });
        }
    }

    public void execute(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        this.currentStepHandler = bVar;
        if (!this.hasInit) {
            this.actionEventHandlers = new ArrayList();
            this.teachResults = new ArrayList();
            this.positionHelpers = new ArrayList();
            for (int i = this.startingIndex; i < this.teachDataList.size(); i++) {
                TeachData teachData = this.teachDataList.get(i);
                cn.mucang.android.jiakaoyi.engine.j.a teachPointById = getTeachPointById(teachData.id, bVar.f3143f.o);
                cn.mucang.android.jiakaoyi.framework.log.f.o("teachData " + JSON.toJSONString(teachData));
                cn.mucang.android.jiakaoyi.framework.log.f.o("teachPoint " + JSON.toJSONString(teachPointById));
                cn.mucang.android.jiakaoyi.engine.processor.exam.j.a aVar = null;
                if (teachPointById != null) {
                    aVar = new cn.mucang.android.jiakaoyi.engine.processor.exam.j.a(cn.mucang.android.jiakaoyi.engine.d.m(), cn.mucang.android.jiakaoyi.engine.d.l(), teachPointById.b);
                }
                this.positionHelpers.add(aVar);
                this.teachResults.add(new TeachResult(teachData));
                this.actionEventHandlers.add(K3TeachDataParser.getInstance().createActionHandler(teachData));
            }
            this.hasInit = true;
        }
        if (this.teachDataList.size() == 0) {
            return;
        }
        for (int i2 = this.startingIndex; i2 < this.teachDataList.size(); i2++) {
            cn.mucang.android.jiakaoyi.engine.processor.exam.j.a aVar2 = this.positionHelpers.get(i2);
            TeachResult teachResult = this.teachResults.get(i2);
            TeachData teachData2 = this.teachDataList.get(i2);
            if (aVar2 != null && !teachResult.isStarting && aVar2.b(eVar, false)) {
                startTeachStep(bVar, teachData2, teachResult);
                handleResult(bVar, i2);
                this.startingIndex = i2;
                break;
            }
        }
        for (int i3 = this.startingIndex; i3 < this.teachDataList.size(); i3++) {
            TeachData teachData3 = this.teachDataList.get(i3);
            TeachResult teachResult2 = this.teachResults.get(i3);
            cn.mucang.android.jiakaoyi.engine.processor.exam.j.a aVar3 = this.positionHelpers.get(i3);
            if (i3 == this.startingIndex) {
                if (!teachResult2.isStarting && aVar3 == null) {
                    startTeachStep(bVar, teachData3, teachResult2);
                }
                if (teachResult2.isStarting) {
                    ActionResult actionResultIsTrigger = this.actionEventHandlers.get(i3).isTrigger(eVar, examProcessor, bVar);
                    if (actionResultIsTrigger != null) {
                        teachResult2.result = actionResultIsTrigger;
                        handleResult(bVar, i3);
                        this.startingIndex = i3 + 1;
                        return;
                    }
                    return;
                }
            }
            if (teachData3.order || aVar3 != null) {
                return;
            }
            ActionResult actionResultIsTrigger2 = this.actionEventHandlers.get(i3).isTrigger(eVar, examProcessor, bVar);
            if (actionResultIsTrigger2 != null) {
                teachResult2.result = actionResultIsTrigger2;
                handleResult(bVar, i3);
                this.startingIndex = i3 + 1;
                return;
            }
        }
    }

    public boolean isEnd() {
        return this.startingIndex >= this.actionEventHandlers.size();
    }

    public void onCheckEnd(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, final cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (this.teachDataList == null || this.actionEventHandlers.size() <= 0) {
            return;
        }
        for (int i = this.startingIndex; i < this.actionEventHandlers.size(); i++) {
            ActionResult actionResultIsTrigger = this.actionEventHandlers.get(i).isTrigger(eVar, examProcessor, bVar);
            TeachResult teachResult = this.teachResults.get(i);
            teachResult.isEnd = true;
            if (actionResultIsTrigger != null) {
                teachResult.result = actionResultIsTrigger;
            }
        }
        for (TeachResult teachResult2 : this.teachResults) {
            if (isValidResult(teachResult2)) {
                teachResult2.result = new ActionResult(ActionState.NoFinish, "未执行", 0);
            }
        }
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f3249a.d(bVar);
            }
        });
    }

    public void startNext() {
        if (this.startingIndex < this.actionEventHandlers.size()) {
            this.teachResults.get(this.startingIndex).result = new ActionResult(ActionState.Skip, "跳过", 0);
            this.startingIndex++;
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3246a.f();
                }
            });
        }
    }
}
