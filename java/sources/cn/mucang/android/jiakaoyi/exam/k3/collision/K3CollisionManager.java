package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.BianDaoResult;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.LeftRightLinesResult;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K3CollisionManager implements K3CollisionMethod {
    private K3CollisionMethod proxy;

    private static final class Holder {
        private static final K3CollisionManager instance = new K3CollisionManager();

        private Holder() {
        }
    }

    public static K3CollisionManager getInstance() {
        return Holder.instance;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public BianDaoResult calculateBiandao(e eVar) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.calculateBiandao(eVar);
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public boolean carBodyInArea(e eVar, ExamProcessor examProcessor, PressLineType pressLineType) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.carBodyInArea(eVar, examProcessor, pressLineType);
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public K3CollisionModel checkPressLine(e eVar, ExamProcessor examProcessor, boolean z, PressLineType pressLineType) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.checkPressLine(eVar, examProcessor, z, pressLineType);
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public double distanceToStopLine(e eVar, ExamProcessor examProcessor) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.distanceToStopLine(eVar, examProcessor);
        }
        return 0.0d;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public List<List<Pos>> getAllPaths(boolean z) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.getAllPaths(z);
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public LeftRightLinesResult getLeftRightLines(e eVar) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.getLeftRightLines(eVar);
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public TwoSideOffsetResult getTwoSideOffset(e eVar) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.getTwoSideOffset(eVar);
        }
        return null;
    }

    public boolean hasHpCollision(e eVar) {
        return (this.proxy == null || eVar.c().bound == null || eVar.c().carPoints == null || eVar.getCurrentPosition().f5282h != 4 || (!n.a() && !b0.a().b())) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public boolean isPressLine(e eVar, ExamProcessor examProcessor, boolean z, PressLineType pressLineType) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.isPressLine(eVar, examProcessor, z, pressLineType);
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public boolean isPressStopLine(e eVar, ExamProcessor examProcessor, boolean z) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.isPressStopLine(eVar, examProcessor, z);
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public List<K3CollisionModel> pressMarkLines(e eVar, ExamProcessor examProcessor, boolean z) {
        K3CollisionMethod k3CollisionMethod = this.proxy;
        if (k3CollisionMethod != null) {
            return k3CollisionMethod.pressMarkLines(eVar, examProcessor, z);
        }
        return null;
    }

    public void setProxy(K3CollisionMethod k3CollisionMethod) {
        this.proxy = k3CollisionMethod;
    }

    private K3CollisionManager() {
    }
}
