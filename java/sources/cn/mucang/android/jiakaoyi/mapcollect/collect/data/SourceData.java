package cn.mucang.android.jiakaoyi.mapcollect.collect.data;

import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public interface SourceData<T extends SourceData<T>> extends Serializable {
    boolean canTurnOrientation();

    T copy();

    cn.mucang.android.jiakaoyi.hpmap.a.a.b createCollision(cn.mucang.android.jiakaoyi.signal.i.a aVar, String str);

    String createKey();

    String getName();

    long getTime();

    Gps giveOnePointToCalZero();

    void set(T t);

    void setName(String str);

    void setTime(long j);

    int stepId();

    void turnOrientation();
}
