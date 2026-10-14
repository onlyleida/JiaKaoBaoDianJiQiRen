package cn.mucang.android.jiakaoyi.teachingk2.level;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;", "Ljava/io/Serializable;", "()V", "costTime", "", "getCostTime", "()F", "setCostTime", "(F)V", "coursePassCount", "", "getCoursePassCount", "()I", "setCoursePassCount", "(I)V", "courseTotalCount", "getCourseTotalCount", "setCourseTotalCount", "extraData", "", "getExtraData", "()Ljava/lang/String;", "setExtraData", "(Ljava/lang/String;)V", "trainPassCount", "getTrainPassCount", "setTrainPassCount", "trainPassList", "", "getTrainPassList", "()Ljava/util/List;", "setTrainPassList", "(Ljava/util/List;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserItemData implements Serializable {
    private float costTime;
    private int coursePassCount;
    private int courseTotalCount;
    private String extraData;
    private int trainPassCount;
    private List<Integer> trainPassList;

    public final float getCostTime() {
        return this.costTime;
    }

    public final int getCoursePassCount() {
        return this.coursePassCount;
    }

    public final int getCourseTotalCount() {
        return this.courseTotalCount;
    }

    public final String getExtraData() {
        return this.extraData;
    }

    public final int getTrainPassCount() {
        return this.trainPassCount;
    }

    public final List<Integer> getTrainPassList() {
        return this.trainPassList;
    }

    public final void setCostTime(float f2) {
        this.costTime = f2;
    }

    public final void setCoursePassCount(int i) {
        this.coursePassCount = i;
    }

    public final void setCourseTotalCount(int i) {
        this.courseTotalCount = i;
    }

    public final void setExtraData(String str) {
        this.extraData = str;
    }

    public final void setTrainPassCount(int i) {
        this.trainPassCount = i;
    }

    public final void setTrainPassList(List<Integer> list) {
        this.trainPassList = list;
    }
}
