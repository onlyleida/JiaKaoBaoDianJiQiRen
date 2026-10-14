package cn.mucang.android.jiakaoyi.engine.processor.exam.conflict;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<ConflictSignal, Boolean> f3117a = new HashMap();

    public void a(ConflictSignal conflictSignal) {
        this.f3117a.put(conflictSignal, Boolean.FALSE);
    }

    public boolean b(ConflictSignal conflictSignal) {
        Boolean bool = this.f3117a.get(conflictSignal);
        return bool != null && bool.booleanValue();
    }

    public void c(ConflictSignal conflictSignal) {
        this.f3117a.put(conflictSignal, Boolean.TRUE);
    }

    public void d() {
        this.f3117a.clear();
    }
}
