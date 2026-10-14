package cn.mucang.android.jiakaoyi.teachingk2.level;

import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityRecordModel;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\b\"\u0004\b!\u0010\n¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "Ljava/io/Serializable;", "code", "", "subCode", "(II)V", "()V", "getCode", "()I", "setCode", "(I)V", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;", "getData", "()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;", "setData", "(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;)V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "notTrained", "", "getNotTrained", "()Z", "setNotTrained", "(Z)V", "pass", "getPass", "setPass", "getSubCode", "setSubCode", "updateData", "", "duration", "", "record", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserLevelData implements Serializable {
    private int code;
    private UserItemData data;
    private String name;
    private transient boolean notTrained;
    private boolean pass;
    private int subCode;

    public UserLevelData() {
    }

    public final int getCode() {
        return this.code;
    }

    public final UserItemData getData() {
        return this.data;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean getNotTrained() {
        return this.notTrained;
    }

    public final boolean getPass() {
        return this.pass;
    }

    public final int getSubCode() {
        return this.subCode;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setData(UserItemData userItemData) {
        this.data = userItemData;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNotTrained(boolean z) {
        this.notTrained = z;
    }

    public final void setPass(boolean z) {
        this.pass = z;
    }

    public final void setSubCode(int i) {
        this.subCode = i;
    }

    public final void updateData(float duration, UnityRecordModel record) {
        if (this.data == null) {
            this.data = new UserItemData();
        }
        UserItemData userItemData = this.data;
        kotlin.jvm.internal.r.c(userItemData);
        userItemData.setCostTime(userItemData.getCostTime() + duration);
        if (record == null) {
            return;
        }
        UserItemData userItemData2 = this.data;
        kotlin.jvm.internal.r.c(userItemData2);
        userItemData2.setTrainPassCount(userItemData2.getTrainPassCount() + record.pn);
        UserItemData userItemData3 = this.data;
        kotlin.jvm.internal.r.c(userItemData3);
        if (userItemData3.getTrainPassList() == null) {
            UserItemData userItemData4 = this.data;
            kotlin.jvm.internal.r.c(userItemData4);
            userItemData4.setTrainPassList(new ArrayList());
        }
        UserItemData userItemData5 = this.data;
        kotlin.jvm.internal.r.c(userItemData5);
        List<Integer> trainPassList = userItemData5.getTrainPassList();
        kotlin.jvm.internal.r.c(trainPassList);
        trainPassList.add(0, Integer.valueOf(record.pass));
        UserItemData userItemData6 = this.data;
        kotlin.jvm.internal.r.c(userItemData6);
        List<Integer> trainPassList2 = userItemData6.getTrainPassList();
        kotlin.jvm.internal.r.c(trainPassList2);
        if (trainPassList2.size() > 10) {
            UserItemData userItemData7 = this.data;
            kotlin.jvm.internal.r.c(userItemData7);
            UserItemData userItemData8 = this.data;
            kotlin.jvm.internal.r.c(userItemData8);
            List<Integer> trainPassList3 = userItemData8.getTrainPassList();
            kotlin.jvm.internal.r.c(trainPassList3);
            userItemData7.setTrainPassList(trainPassList3.subList(0, 10));
        }
    }

    public UserLevelData(int i, int i2) {
        this();
        this.code = i;
        this.subCode = i2;
        this.data = new UserItemData();
        this.notTrained = true;
    }
}
