package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.core.webview.MenuOptions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0000R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;", "Ljava/io/Serializable;", "()V", "gpsList", "", "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;", "getGpsList", "()Ljava/util/List;", "setGpsList", "(Ljava/util/List;)V", "stepName", "", "getStepName", "()Ljava/lang/String;", "setStepName", "(Ljava/lang/String;)V", "teachNum", "", "getTeachNum", "()I", "setTeachNum", "(I)V", MenuOptions.COPY, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachPlan implements Serializable {
    private List<TeachStepNode> gpsList;
    private String stepName;
    private int teachNum;

    public final TeachPlan copy() {
        TeachPlan teachPlan = new TeachPlan();
        if (this.gpsList != null) {
            ArrayList arrayList = new ArrayList();
            List<TeachStepNode> list = this.gpsList;
            r.c(list);
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((TeachStepNode) it.next()).copy());
            }
            teachPlan.gpsList = arrayList;
        }
        teachPlan.teachNum = this.teachNum;
        teachPlan.stepName = this.stepName;
        return teachPlan;
    }

    public final List<TeachStepNode> getGpsList() {
        return this.gpsList;
    }

    public final String getStepName() {
        return this.stepName;
    }

    public final int getTeachNum() {
        return this.teachNum;
    }

    public final void setGpsList(List<TeachStepNode> list) {
        this.gpsList = list;
    }

    public final void setStepName(String str) {
        this.stepName = str;
    }

    public final void setTeachNum(int i) {
        this.teachNum = i;
    }
}
