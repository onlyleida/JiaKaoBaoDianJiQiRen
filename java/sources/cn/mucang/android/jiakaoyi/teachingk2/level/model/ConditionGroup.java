package cn.mucang.android.jiakaoyi.teachingk2.level.model;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionGroup;", "Ljava/io/Serializable;", "()V", "conditionType", "", "getConditionType", "()I", "setConditionType", "(I)V", "conditions", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionModel;", "getConditions", "()Ljava/util/List;", "setConditions", "(Ljava/util/List;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ConditionGroup implements Serializable {
    private int conditionType;
    private List<ConditionModel> conditions;

    public final int getConditionType() {
        return this.conditionType;
    }

    public final List<ConditionModel> getConditions() {
        return this.conditions;
    }

    public final void setConditionType(int i) {
        this.conditionType = i;
    }

    public final void setConditions(List<ConditionModel> list) {
        this.conditions = list;
    }
}
