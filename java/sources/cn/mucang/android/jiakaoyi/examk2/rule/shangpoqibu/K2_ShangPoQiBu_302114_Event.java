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
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302114_Event extends d<K2ShangPoQiBuConfig> {
    private final ShangPoTimeDownEvent event;
    private long greenLightStart;
    private long greenTimeDown;
    private boolean hasHandBrakeClose;
    private boolean hasShowTimeDown;
    private long redLightStart;
    private long stopTime;

    public K2_ShangPoQiBu_302114_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
        this.hasShowTimeDown = false;
        this.event = new ShangPoTimeDownEvent();
    }

    private void postTimeDown(long j) {
        ShangPoTimeDownEvent shangPoTimeDownEvent = this.event;
        long j2 = shangPoTimeDownEvent.f3348a;
        if (j2 == -1 || j != -1) {
            if (j == -1 || j <= -1000) {
                return;
            }
            if (j2 != -1 && j2 - j <= 800) {
                return;
            }
        }
        shangPoTimeDownEvent.f3348a = j;
        if (j == -1) {
            this.hasShowTimeDown = true;
        }
        LiveBus.d(ShangPoTimeDownEvent.class).l(this.event);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Integer) ((K2ShangPoQiBuConfig) this.config).p404118.value).intValue() > 0;
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
            int iIntValue = ((Integer) ((K2ShangPoQiBuConfig) this.config).p404119.value).intValue();
            if (examProcessor.i - this.stopTime >= ((Integer) ((K2ShangPoQiBuConfig) this.config).p404106.value).intValue() * 1000 && ((Integer) ((K2ShangPoQiBuConfig) this.config).p404118.value).intValue() > 0) {
                if (this.redLightStart == 0) {
                    ((k) bVar.f()).f3283g = true;
                    this.redLightStart = examProcessor.i;
                }
                long jIntValue = ((Integer) ((K2ShangPoQiBuConfig) this.config).p404118.value).intValue() * 1000;
                long j = examProcessor.i;
                long j2 = jIntValue - (j - this.redLightStart);
                if (j2 > 500 || iIntValue <= 0) {
                    ShangPoTimeDownEvent shangPoTimeDownEvent = this.event;
                    shangPoTimeDownEvent.c = ShangPoTimeDownEvent.Light.Red;
                    shangPoTimeDownEvent.b = "红灯倒计时";
                    postTimeDown(j2);
                } else {
                    ShangPoTimeDownEvent shangPoTimeDownEvent2 = this.event;
                    shangPoTimeDownEvent2.c = ShangPoTimeDownEvent.Light.Green;
                    shangPoTimeDownEvent2.b = "绿灯倒计时";
                    if (this.greenLightStart == 0) {
                        this.greenLightStart = j;
                        shangPoTimeDownEvent2.f3348a = -1L;
                    }
                    long j3 = (((long) iIntValue) * 1000) - (j - this.greenLightStart);
                    this.greenTimeDown = j3;
                    if (j3 <= 500) {
                        this.greenTimeDown = -1L;
                    }
                    postTimeDown(this.greenTimeDown);
                }
            }
            if (this.greenTimeDown == -1) {
                setDoNotExecute(true);
                return false;
            }
            if (eVar.d().c()) {
                if (((Integer) ((K2ShangPoQiBuConfig) this.config).p404139.value).intValue() == 1) {
                    if (((ShangPoChecker) kVar.f3279a).B) {
                        setDoNotExecute(true);
                        postTimeDown(-1L);
                    }
                } else if (((Integer) ((K2ShangPoQiBuConfig) this.config).p404139.value).intValue() != 2 || ((ShangPoChecker) kVar.f3279a).C) {
                    setDoNotExecute(true);
                    postTimeDown(-1L);
                }
                if (this.redLightStart != 0 && (examProcessor.i - this.stopTime) - ((long) (((Integer) ((K2ShangPoQiBuConfig) this.config).p404106.value).intValue() * 1000)) < ((long) (((Integer) ((K2ShangPoQiBuConfig) this.config).p404118.value).intValue() * 1000))) {
                    setDoNotExecute(true);
                    return false;
                }
            } else if (this.greenLightStart != 0 && this.event.f3348a <= 0) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
