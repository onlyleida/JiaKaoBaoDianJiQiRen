package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class K3HpChecker {
    private volatile CarModel.Direction lastBodyDirection;
    private volatile CarModel.Direction lastWheelDirection;
    private volatile boolean bodyPressResult = false;
    private volatile boolean wheelPressResult = false;
    private final Object lockBody = new Object();
    private final Object lockWheel = new Object();
    private volatile long bodyFrameTime = 0;
    private volatile long wheelFrameTime = 0;

    public K3HpChecker() {
        CarModel.Direction direction = CarModel.Direction.None;
        this.lastBodyDirection = direction;
        this.lastWheelDirection = direction;
    }

    protected abstract boolean calculateResult(e eVar, ExamProcessor examProcessor, boolean z);

    public boolean checkBody(e eVar, ExamProcessor examProcessor) {
        CarModel.Direction direction = eVar.d().F;
        if (isEmpty()) {
            return this.bodyPressResult;
        }
        if (eVar.d().L - this.bodyFrameTime > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            this.lastBodyDirection = CarModel.Direction.None;
            this.bodyPressResult = false;
            this.bodyFrameTime = eVar.d().L;
            return false;
        }
        if (!eVar.d().h()) {
            return this.bodyPressResult;
        }
        CarModel.Direction direction2 = this.lastBodyDirection;
        CarModel.Direction direction3 = CarModel.Direction.Stop;
        if (direction2 == direction3 && direction == direction3) {
            this.bodyFrameTime = eVar.d().L;
            return this.bodyPressResult;
        }
        synchronized (this.lockBody) {
            if (this.bodyFrameTime == eVar.d().L) {
                return this.bodyPressResult;
            }
            this.bodyPressResult = calculateResult(eVar, examProcessor, true);
            this.bodyFrameTime = eVar.d().L;
            this.lastBodyDirection = direction;
            return this.bodyPressResult;
        }
    }

    public boolean checkBodyOrWheel(e eVar, ExamProcessor examProcessor, boolean z) {
        return z ? checkBody(eVar, examProcessor) : checkWheel(eVar, examProcessor);
    }

    public boolean checkWheel(e eVar, ExamProcessor examProcessor) {
        CarModel.Direction direction = eVar.d().F;
        if (isEmpty()) {
            return this.wheelPressResult;
        }
        if (eVar.d().L - this.wheelFrameTime > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            this.lastWheelDirection = CarModel.Direction.None;
            this.wheelPressResult = false;
            this.wheelFrameTime = eVar.d().L;
            return false;
        }
        if (!eVar.d().h()) {
            return this.wheelPressResult;
        }
        CarModel.Direction direction2 = this.lastWheelDirection;
        CarModel.Direction direction3 = CarModel.Direction.Stop;
        if (direction2 == direction3 && direction == direction3) {
            this.wheelFrameTime = eVar.d().L;
            return this.wheelPressResult;
        }
        synchronized (this.lockWheel) {
            if (this.wheelFrameTime == eVar.d().L) {
                return this.wheelPressResult;
            }
            this.wheelPressResult = calculateResult(eVar, examProcessor, false);
            this.wheelFrameTime = eVar.d().L;
            this.lastWheelDirection = direction;
            return this.wheelPressResult;
        }
    }

    protected abstract boolean isEmpty();
}
