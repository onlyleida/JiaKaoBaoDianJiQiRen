package cn.mucang.android.jiakaoyi.k3collect.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes3.dex */
public abstract class K3CollisionModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3882a;
    public long b;
    public cn.mucang.android.jiakaoyi.signal.pos.a c;

    public enum TriggerType {
        WheelPressLine,
        BodyPressDottedLine
    }

    public boolean a(e eVar, ExamProcessor examProcessor) {
        return false;
    }

    public abstract boolean b(e eVar, ExamProcessor examProcessor, TriggerType triggerType);
}
