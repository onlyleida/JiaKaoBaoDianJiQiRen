package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseCollisionChecker {
    private volatile CarModel.Direction lastBodyDirection;
    private volatile CarModel.Direction lastWheelDirection;
    private volatile K3CollisionModel bodyPressResult = null;
    private volatile K3CollisionModel wheelPressResult = null;
    private final Object lockBody = new Object();
    private final Object lockWheel = new Object();
    private volatile long bodyFrameTime = 0;
    private volatile long wheelFrameTime = 0;

    public BaseCollisionChecker() {
        CarModel.Direction direction = CarModel.Direction.None;
        this.lastBodyDirection = direction;
        this.lastWheelDirection = direction;
    }

    protected abstract K3CollisionModel calculateResult(e eVar, ExamProcessor examProcessor, boolean z);

    public K3CollisionModel checkBody(e eVar, ExamProcessor examProcessor) {
        CarModel.Direction direction = eVar.d().F;
        if (isEmpty()) {
            return this.bodyPressResult;
        }
        if (eVar.d().L - this.bodyFrameTime > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            this.bodyPressResult = null;
            this.bodyFrameTime = eVar.d().L;
            this.lastBodyDirection = CarModel.Direction.None;
            return null;
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

    public K3CollisionModel checkBodyOrWheel(e eVar, ExamProcessor examProcessor, boolean z) {
        return z ? checkBody(eVar, examProcessor) : checkWheel(eVar, examProcessor);
    }

    public K3CollisionModel checkWheel(e eVar, ExamProcessor examProcessor) {
        CarModel.Direction direction = eVar.d().F;
        if (isEmpty()) {
            return this.wheelPressResult;
        }
        if (eVar.d().L - this.wheelFrameTime > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            this.wheelPressResult = null;
            this.wheelFrameTime = eVar.d().L;
            this.lastWheelDirection = CarModel.Direction.None;
            return this.wheelPressResult;
        }
        if (!eVar.d().h()) {
            return this.wheelPressResult;
        }
        CarModel.Direction direction2 = this.lastWheelDirection;
        CarModel.Direction direction3 = CarModel.Direction.Stop;
        if (direction2 == direction3 && direction == direction3) {
            this.wheelFrameTime = eVar.d().L;
            return this.bodyPressResult;
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
