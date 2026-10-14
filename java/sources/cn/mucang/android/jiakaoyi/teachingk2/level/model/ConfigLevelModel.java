package cn.mucang.android.jiakaoyi.teachingk2.level.model;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.teachingk2.level.ConditionPassHelper;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.open.SocialConstants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\u0006\u00100\u001a\u000201J\u001c\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020406J\u001c\u00107\u001a\u00020\u00192\u0006\u00103\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020406J\u001c\u00108\u001a\u00020\b2\u0006\u00103\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020406R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u000e\"\u0004\b%\u0010\u0010R\"\u0010&\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R\u001a\u0010*\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u000e\"\u0004\b,\u0010\u0010R\u001a\u0010-\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u000e\"\u0004\b/\u0010\u0010¨\u00069"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;", "Ljava/io/Serializable;", "code", "", TtmlNode.ATTR_ID, "(II)V", "()V", "allowClose", "", "getAllowClose", "()Z", "setAllowClose", "(Z)V", "getCode", "()I", "setCode", "(I)V", "conditionGroup", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionGroup;", "getConditionGroup", "()Ljava/util/List;", "setConditionGroup", "(Ljava/util/List;)V", SocialConstants.PARAM_COMMENT, "", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "helper", "Lcn/mucang/android/jiakaoyi/teachingk2/level/ConditionPassHelper;", "getHelper", "()Lcn/mucang/android/jiakaoyi/teachingk2/level/ConditionPassHelper;", "setHelper", "(Lcn/mucang/android/jiakaoyi/teachingk2/level/ConditionPassHelper;)V", "getId", "setId", "loopStep", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;", "getLoopStep", "setLoopStep", "position", "getPosition", "setPosition", "videoSubType", "getVideoSubType", "setVideoSubType", "createPassHandler", "", "getPassDesc", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "list", "Landroid/util/SparseArray;", "getTrainDesc", "isPass", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ConfigLevelModel implements Serializable {
    private boolean allowClose;
    private int code;
    private List<ConditionGroup> conditionGroup;
    private String description;
    private transient ConditionPassHelper helper;
    private int id;
    private List<LoopStepModel> loopStep;
    private transient int position;
    private int videoSubType;

    public ConfigLevelModel() {
    }

    public final void createPassHandler() {
        this.helper = new ConditionPassHelper(this.id, this.conditionGroup);
    }

    public final boolean getAllowClose() {
        return this.allowClose;
    }

    public final int getCode() {
        return this.code;
    }

    public final List<ConditionGroup> getConditionGroup() {
        return this.conditionGroup;
    }

    public final String getDescription() {
        return this.description;
    }

    public final ConditionPassHelper getHelper() {
        return this.helper;
    }

    public final int getId() {
        return this.id;
    }

    public final List<LoopStepModel> getLoopStep() {
        return this.loopStep;
    }

    public final String getPassDesc(UserLevelData data, SparseArray<UserLevelData> list) {
        String strA;
        r.e(data, "data");
        r.e(list, "list");
        ConditionPassHelper conditionPassHelper = this.helper;
        return (conditionPassHelper == null || (strA = conditionPassHelper.a(data, list)) == null) ? "" : strA;
    }

    public final int getPosition() {
        return this.position;
    }

    public final String getTrainDesc(UserLevelData data, SparseArray<UserLevelData> list) {
        String strB;
        r.e(data, "data");
        r.e(list, "list");
        ConditionPassHelper conditionPassHelper = this.helper;
        return (conditionPassHelper == null || (strB = conditionPassHelper.b(data, list)) == null) ? "" : strB;
    }

    public final int getVideoSubType() {
        return this.videoSubType;
    }

    public final boolean isPass(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        ConditionPassHelper conditionPassHelper = this.helper;
        if (conditionPassHelper == null) {
            return false;
        }
        return conditionPassHelper.c(data, list);
    }

    public final void setAllowClose(boolean z) {
        this.allowClose = z;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setConditionGroup(List<ConditionGroup> list) {
        this.conditionGroup = list;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setHelper(ConditionPassHelper conditionPassHelper) {
        this.helper = conditionPassHelper;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setLoopStep(List<LoopStepModel> list) {
        this.loopStep = list;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    public final void setVideoSubType(int i) {
        this.videoSubType = i;
    }

    public ConfigLevelModel(int i, int i2) {
        this();
        this.code = i;
        this.id = i2;
    }
}
