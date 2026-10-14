package cn.mucang.android.jiakaoyi.teachingk2.collect.render.data;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/GroupBindModel;", "Ljava/io/Serializable;", "()V", "parkingSpaceGroup", "", "getParkingSpaceGroup", "()Ljava/lang/String;", "setParkingSpaceGroup", "(Ljava/lang/String;)V", "parkingSpaceIds", "getParkingSpaceIds", "setParkingSpaceIds", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GroupBindModel implements Serializable {
    private String parkingSpaceGroup;
    private String parkingSpaceIds;

    public final String getParkingSpaceGroup() {
        return this.parkingSpaceGroup;
    }

    public final String getParkingSpaceIds() {
        return this.parkingSpaceIds;
    }

    public final void setParkingSpaceGroup(String str) {
        this.parkingSpaceGroup = str;
    }

    public final void setParkingSpaceIds(String str) {
        this.parkingSpaceIds = str;
    }
}
