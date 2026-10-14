package cn.mucang.android.jiakaoyi.teachingk2.data;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;", "Ljava/io/Serializable;", "points", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "(Ljava/util/List;)V", "getPoints", "()Ljava/util/List;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StopPositionAreaModel implements Serializable {
    private final List<Pos> points;

    /* JADX WARN: Multi-variable type inference failed */
    public StopPositionAreaModel(List<? extends Pos> list) {
        this.points = list;
    }

    public final List<Pos> getPoints() {
        return this.points;
    }
}
