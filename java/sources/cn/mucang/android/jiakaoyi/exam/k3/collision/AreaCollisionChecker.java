package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AreaCollisionChecker {
    private final List<K3CollisionModel> collisionModels;
    private volatile CarModel.Direction lastBodyDirection;
    private volatile K3CollisionModel fullInAreaResult = null;
    private final Object fullInAreaLock = new Object();
    private volatile long fullInAreaTime = 0;

    public AreaCollisionChecker(List<K3CollisionModel> list) {
        ArrayList arrayList = new ArrayList();
        this.collisionModels = arrayList;
        this.lastBodyDirection = CarModel.Direction.None;
        arrayList.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        arrayList.addAll(list);
    }

    public K3CollisionModel fullInArea(e eVar, ExamProcessor examProcessor) {
        CarModel.Direction direction = eVar.d().F;
        if (this.collisionModels.isEmpty()) {
            return this.fullInAreaResult;
        }
        if (eVar.d().L - this.fullInAreaTime > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            this.fullInAreaResult = null;
            this.fullInAreaTime = eVar.d().L;
            this.lastBodyDirection = CarModel.Direction.None;
            return null;
        }
        if (!eVar.d().h()) {
            return this.fullInAreaResult;
        }
        CarModel.Direction direction2 = this.lastBodyDirection;
        CarModel.Direction direction3 = CarModel.Direction.Stop;
        if (direction2 == direction3 && direction == direction3) {
            this.fullInAreaTime = eVar.d().L;
            return this.fullInAreaResult;
        }
        synchronized (this.fullInAreaLock) {
            if (this.fullInAreaTime == eVar.d().L) {
                return this.fullInAreaResult;
            }
            for (K3CollisionModel k3CollisionModel : this.collisionModels) {
                if (k3CollisionModel.a(eVar, examProcessor)) {
                    this.fullInAreaResult = k3CollisionModel;
                    break;
                }
            }
            this.fullInAreaTime = eVar.d().L;
            this.lastBodyDirection = direction;
            return this.fullInAreaResult;
        }
    }
}
