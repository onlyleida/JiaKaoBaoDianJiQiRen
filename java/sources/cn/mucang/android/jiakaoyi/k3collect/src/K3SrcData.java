package cn.mucang.android.jiakaoyi.k3collect.src;

import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class K3SrcData implements Serializable {
    public Long id;
    public int type;

    public abstract List<Gps> center();

    public abstract K3SrcData copy();

    public abstract K3SrcData copy(CommonSrcData commonSrcData, boolean z);

    public abstract boolean isComplete();

    protected List<Gps> merge(List<Gps> list, List<Gps> list2) {
        if (list == null || list.size() < 2 || list2 == null || list2.size() < 2) {
            return null;
        }
        Gps gps = list.get(0);
        Gps gps2 = list.get(list.size() - 1);
        Gps gps3 = list2.get(0);
        Gps gps4 = list2.get(list2.size() - 1);
        double dDistanceTo = gps.distanceTo(gps3);
        double dDistanceTo2 = gps.distanceTo(gps4);
        double dDistanceTo3 = gps2.distanceTo(gps3);
        double dDistanceTo4 = gps2.distanceTo(gps4);
        ArrayList arrayList = new ArrayList();
        if (dDistanceTo2 > dDistanceTo) {
            if (dDistanceTo > dDistanceTo3) {
                arrayList.addAll(list);
                arrayList.addAll(list2);
            } else {
                Collections.reverse(list);
                arrayList.addAll(list);
                arrayList.addAll(list2);
            }
        } else if (dDistanceTo2 > dDistanceTo4) {
            arrayList.addAll(list);
            Collections.reverse(list2);
            arrayList.addAll(list2);
        } else {
            Collections.reverse(list);
            Collections.reverse(list2);
            arrayList.addAll(list);
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    public abstract CommonSrcData transform(int i);
}
