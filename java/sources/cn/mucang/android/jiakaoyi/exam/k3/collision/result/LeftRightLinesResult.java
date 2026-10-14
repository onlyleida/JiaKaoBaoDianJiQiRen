package cn.mucang.android.jiakaoyi.exam.k3.collision.result;

import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LeftRightLinesResult {
    public List<K3CollisionModel> leftLines;
    public List<K3CollisionModel> overLayLines;
    public List<K3CollisionModel> rightLines;

    public LeftRightLinesResult(List<K3CollisionModel> list, List<K3CollisionModel> list2) {
        this.overLayLines = null;
        this.leftLines = list;
        this.rightLines = list2;
        this.overLayLines = new ArrayList();
        if (list == null || list2 == null || list.size() <= 0 || list2.size() <= 0) {
            return;
        }
        for (K3CollisionModel k3CollisionModel : list2) {
            if (list.contains(k3CollisionModel)) {
                this.overLayLines.add(k3CollisionModel);
            }
        }
    }

    public boolean hasLeftLines() {
        List<K3CollisionModel> list = this.leftLines;
        return list != null && list.size() > 0;
    }

    public boolean hasRightLines() {
        List<K3CollisionModel> list = this.rightLines;
        return list != null && list.size() > 0;
    }

    public boolean isOverLayLine(K3CollisionModel k3CollisionModel) {
        List<K3CollisionModel> list = this.overLayLines;
        if (list != null) {
            return list.contains(k3CollisionModel);
        }
        return false;
    }
}
