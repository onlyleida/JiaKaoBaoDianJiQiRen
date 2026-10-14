package cn.mucang.android.jiakaoyi.exam.k3.data;

import android.os.Handler;
import android.os.Looper;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BaseStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarStoppedChecker;
import cn.mucang.android.jiakaoyi.exam.k3.teach.TeachingProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.teach.callback.TeachResultEventCallback;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K3BaseStepData<T extends K3BaseStepConfig> extends d<T> {
    public boolean carStop;
    public int engineType;
    private boolean hasInit;
    public boolean isEnd;
    public boolean lastCarStop;
    private Handler messageHandler;
    private final CarStoppedChecker stoppedChecker;
    public List<TeachData> teachDataList;
    public TeachResultEventCallback teachResultEventCallback;
    public TeachingProcessor teachingProcessor;

    public K3BaseStepData(T t) {
        super(t);
        this.carStop = false;
        this.lastCarStop = false;
        this.hasInit = false;
        this.stoppedChecker = new CarStoppedChecker(CarModel.Y * 2.0f, 1000);
    }

    private boolean isNeedTeach(ExamProcessor examProcessor) {
        return (this.teachDataList == null || this.teachResultEventCallback == null || examProcessor.f3104a.p != 2) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        this.engineType = examProcessor.f3104a.p;
        boolean z = examProcessor.s.f3128a;
        this.carStop = z;
        if (bVar.f3142e == Step.K3_Global) {
            boolean z2 = this.hasInit;
            if (!(z2 && this.lastCarStop) && z) {
                f.o("车停了");
            } else if ((!z2 || this.lastCarStop) && !z) {
                f.o("车动了");
            }
            this.hasInit = true;
        }
        boolean zIsPlayTeachVoice = examProcessor.f3104a.n.isPlayTeachVoice();
        this.lastCarStop = this.carStop;
        if (isNeedTeach(examProcessor)) {
            if (this.messageHandler == null) {
                this.messageHandler = new Handler(Looper.myLooper());
            }
            if (this.teachingProcessor == null) {
                this.teachingProcessor = new TeachingProcessor(this.teachResultEventCallback, this.teachDataList, zIsPlayTeachVoice);
            }
            this.teachingProcessor.execute(eVar, examProcessor, bVar);
        }
    }

    public void onCheckEnd(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        TeachingProcessor teachingProcessor = this.teachingProcessor;
        if (teachingProcessor != null) {
            teachingProcessor.onCheckEnd(eVar, examProcessor, bVar);
        }
    }

    public void startNext() {
        Handler handler = this.messageHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData.1
                @Override // java.lang.Runnable
                public void run() {
                    K3BaseStepData.this.teachingProcessor.startNext();
                }
            });
        }
    }
}
