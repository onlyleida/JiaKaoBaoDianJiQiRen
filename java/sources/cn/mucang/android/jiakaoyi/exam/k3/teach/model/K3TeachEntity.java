package cn.mucang.android.jiakaoyi.exam.k3.teach.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K3TeachEntity implements Serializable {
    public List<TeachData> items;
    public String remark;
    public int stepId;
    public String stepName;
    public int teachNum;

    public K3TeachEntity(List<TeachData> list, int i, String str) {
        this.items = list;
        this.stepId = i;
        this.stepName = str;
    }

    public K3TeachEntity copy() {
        K3TeachEntity k3TeachEntity = new K3TeachEntity();
        k3TeachEntity.stepId = this.stepId;
        k3TeachEntity.remark = this.remark;
        k3TeachEntity.stepName = this.stepName;
        k3TeachEntity.teachNum = this.teachNum;
        if (this.items != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<TeachData> it = this.items.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().copy());
            }
            k3TeachEntity.items = arrayList;
        }
        return k3TeachEntity;
    }

    public K3TeachEntity() {
    }
}
