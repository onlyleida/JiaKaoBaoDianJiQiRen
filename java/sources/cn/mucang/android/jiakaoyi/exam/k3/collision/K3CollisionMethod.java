package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.BianDaoResult;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.LeftRightLinesResult;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface K3CollisionMethod {
    BianDaoResult calculateBiandao(e eVar);

    boolean carBodyInArea(e eVar, ExamProcessor examProcessor, PressLineType pressLineType);

    K3CollisionModel checkPressLine(e eVar, ExamProcessor examProcessor, boolean z, PressLineType pressLineType);

    double distanceToStopLine(e eVar, ExamProcessor examProcessor);

    List<List<Pos>> getAllPaths(boolean z);

    LeftRightLinesResult getLeftRightLines(e eVar);

    TwoSideOffsetResult getTwoSideOffset(e eVar);

    boolean isPressLine(e eVar, ExamProcessor examProcessor, boolean z, PressLineType pressLineType);

    boolean isPressStopLine(e eVar, ExamProcessor examProcessor, boolean z);

    List<K3CollisionModel> pressMarkLines(e eVar, ExamProcessor examProcessor, boolean z);
}
