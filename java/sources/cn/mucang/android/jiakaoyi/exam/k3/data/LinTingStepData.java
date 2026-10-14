package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.collision.CarToLineDistanceUtils;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.TingCheSideDistanceHelper;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jky.usbcamera.detectside.t;

/* JADX INFO: loaded from: classes2.dex */
public class LinTingStepData extends K3BaseStepData<K3LinTingStepConfig> {
    public double distance;
    public boolean hasDetectSide;
    private boolean hasSpeaking;
    private TingCheSideDistanceHelper sideDistanceHelper;
    public State state;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$LinTingStepData$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$LinTingStepData$State = iArr;
            try {
                iArr[State.Stopping.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$LinTingStepData$State[State.Stopped.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum State {
        Stopping,
        Stopped,
        Start
    }

    public LinTingStepData(K3LinTingStepConfig k3LinTingStepConfig) {
        super(k3LinTingStepConfig);
        this.state = State.Stopping;
        this.hasSpeaking = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        CarToLineDistanceUtils.Mode mode;
        super.onChange(eVar, bVar, examProcessor);
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().b < 4.0f && !t.c()) {
            t.k();
            u.h("开始摄像头边线检测");
        }
        if (((Integer) ((K3LinTingStepConfig) this.config).p222128.value).intValue() == 0) {
            mode = CarToLineDistanceUtils.Mode.Max;
        } else {
            mode = ((Integer) ((K3LinTingStepConfig) this.config).p222128.value).intValue() == 1 ? CarToLineDistanceUtils.Mode.FrontWheel : CarToLineDistanceUtils.Mode.BackWheel;
        }
        if (this.sideDistanceHelper == null) {
            this.sideDistanceHelper = new TingCheSideDistanceHelper();
        }
        this.distance = this.sideDistanceHelper.calSideDistance(eVar, mode, CarToLineDistanceUtils.CalLineType.FullLine);
        int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$LinTingStepData$State[this.state.ordinal()];
        if (i != 1) {
            if (i == 2) {
                if (((Integer) ((K3LinTingStepConfig) this.config).p222111.value).intValue() == 1 && !eVar.d().f5268f && !this.hasSpeaking) {
                    TtsManager.r(k0.a(R.string.exam_qibu_complete_exam), TtsGrade.ExamTip);
                    this.hasSpeaking = true;
                }
                if (eVar.d().c()) {
                    this.state = State.Start;
                }
            }
        } else if (this.carStop) {
            this.state = State.Stopped;
        }
        if (bVar.j()) {
            t.a();
        }
    }
}
