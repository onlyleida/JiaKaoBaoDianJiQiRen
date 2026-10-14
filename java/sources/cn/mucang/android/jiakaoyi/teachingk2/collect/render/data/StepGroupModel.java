package cn.mucang.android.jiakaoyi.teachingk2.collect.render.data;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.b2;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0004J\u0006\u0010\u0015\u001a\u00020\u0014R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;", "Ljava/io/Serializable;", "()V", "group", "", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/GroupBindModel;", "getGroup", "()Ljava/util/List;", "setGroup", "(Ljava/util/List;)V", "step", "", "getStep", "()I", "setStep", "(I)V", "stepDirection", "getStepDirection", "setStepDirection", "getGroupNames", "", "getShowName", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepGroupModel implements Serializable {
    private List<GroupBindModel> group;
    private int step;
    private int stepDirection;

    public final List<GroupBindModel> getGroup() {
        return this.group;
    }

    public final List<String> getGroupNames() {
        ArrayList arrayList = new ArrayList();
        List<GroupBindModel> list = this.group;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                String parkingSpaceGroup = ((GroupBindModel) it.next()).getParkingSpaceGroup();
                if (parkingSpaceGroup == null) {
                    parkingSpaceGroup = "";
                }
                arrayList.add(parkingSpaceGroup);
            }
        }
        return arrayList;
    }

    public final String getShowName() {
        Step stepFindWithType = Step.findWithType(this.step);
        return r.m(stepFindWithType.getStepName(), b2.t(stepFindWithType, this.stepDirection));
    }

    public final int getStep() {
        return this.step;
    }

    public final int getStepDirection() {
        return this.stepDirection;
    }

    public final void setGroup(List<GroupBindModel> list) {
        this.group = list;
    }

    public final void setStep(int i) {
        this.step = i;
    }

    public final void setStepDirection(int i) {
        this.stepDirection = i;
    }
}
