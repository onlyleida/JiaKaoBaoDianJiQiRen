package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.k;
import cn.mucang.android.jiakaoyi.examk2.collision.ShangPoChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.examk2.event.ShangPoTimeDownEvent;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302113_Event extends d<K2ShangPoQiBuConfig> {
    private final ShangPoTimeDownEvent event;
    private boolean hasHandBrakeClose;
    private boolean hasShowTimeDown;
    private long stopTime;

    public K2_ShangPoQiBu_302113_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
        this.event = new ShangPoTimeDownEvent();
        this.hasShowTimeDown = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void postTimeDown(long j, ExamProcessor examProcessor) {
        ShangPoTimeDownEvent shangPoTimeDownEvent = this.event;
        long j2 = shangPoTimeDownEvent.f3348a;
        if (j2 == -1 || j != -1) {
            if (j == -1 || j <= -1000) {
                return;
            }
            if (j2 != -1 && j2 - j <= 900) {
                return;
            }
        }
        shangPoTimeDownEvent.f3348a = j;
        if (((Boolean) ((K2ShangPoQiBuConfig) this.config).p404112.value).booleanValue() && this.event.f3348a / 1000 == 10) {
            examProcessor.H("起步时间仅剩10秒", TtsGrade.ExamTip);
        }
        if (j == -1) {
            this.hasShowTimeDown = true;
        }
        LiveBus.d(ShangPoTimeDownEvent.class).l(this.event);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Integer) ((K2ShangPoQiBuConfig) this.config).p404118.value).intValue() <= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        k kVar = (k) bVar.f();
        if (((Boolean) ((K2ShangPoQiBuConfig) this.config).p404107.value).booleanValue()) {
            if (examProcessor.s.f3128a) {
                if (this.hasHandBrakeClose && eVar.d().f5268f && !this.hasShowTimeDown && this.stopTime == 0) {
                    this.stopTime = examProcessor.i;
                }
                if (!this.hasHandBrakeClose) {
                    if (eVar.d().f5268f) {
                        this.stopTime = 0L;
                    } else {
                        this.hasHandBrakeClose = true;
                    }
                }
            }
        } else if (examProcessor.s.f3128a && !this.hasShowTimeDown && this.stopTime == 0) {
            this.stopTime = examProcessor.i;
        }
        if (this.stopTime != 0) {
            long jIntValue = ((long) (((Integer) ((K2ShangPoQiBuConfig) this.config).p404108.value).intValue() * 1000)) - ((examProcessor.i - this.stopTime) - ((long) (((Integer) ((K2ShangPoQiBuConfig) this.config).p404106.value).intValue() * 1000)));
            postTimeDown(jIntValue <= ((long) (((Integer) ((K2ShangPoQiBuConfig) this.config).p404108.value).intValue() * 1000)) ? jIntValue : -1L, examProcessor);
            boolean z = jIntValue < 0;
            if (((Boolean) ((K2ShangPoQiBuConfig) this.config).p404122.value).booleanValue()) {
                if (z) {
                    this.event.f3348a = jIntValue;
                    LiveBus.d(ShangPoTimeDownEvent.class).l(this.event);
                    setDoNotExecute(true);
                    return false;
                }
            } else if (eVar.d().c() && z) {
                this.event.f3348a = jIntValue;
                LiveBus.d(ShangPoTimeDownEvent.class).l(this.event);
                setDoNotExecute(true);
                return false;
            }
        } else {
            postTimeDown(-1L, examProcessor);
        }
        if (((Integer) ((K2ShangPoQiBuConfig) this.config).p404139.value).intValue() == 1) {
            if (((ShangPoChecker) kVar.f3279a).B) {
                this.stopTime = 0L;
            }
        } else if (((Integer) ((K2ShangPoQiBuConfig) this.config).p404139.value).intValue() == 2) {
            if (((ShangPoChecker) kVar.f3279a).C) {
                this.stopTime = 0L;
            }
        } else if (eVar.d().c()) {
            this.stopTime = 0L;
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
