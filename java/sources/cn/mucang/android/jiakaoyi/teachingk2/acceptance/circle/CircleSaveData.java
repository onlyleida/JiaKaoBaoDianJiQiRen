package cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R:\u0010\u0003\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR:\u0010\u000b\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f\u0018\u00010\u0004j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f\u0018\u0001`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR.\u0010\u000f\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u0011\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R.\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleSaveData;", "Ljava/io/Serializable;", "()V", "brakeMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getBrakeMap", "()Ljava/util/HashMap;", "setBrakeMap", "(Ljava/util/HashMap;)V", "faultMap", "", "getFaultMap", "setFaultMap", "gpsDurations", "", "Lcn/mucang/android/jiakaoyi/framework/base/model/JkyPair;", "getGpsDurations", "()Ljava/util/List;", "setGpsDurations", "(Ljava/util/List;)V", "gpsModelList", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;", "getGpsModelList", "setGpsModelList", "triggerBoundarySet", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "getTriggerBoundarySet", "()Ljava/util/HashSet;", "setTriggerBoundarySet", "(Ljava/util/HashSet;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CircleSaveData implements Serializable {
    private HashMap<String, String> brakeMap;
    private HashMap<String, Long> faultMap;
    private List<cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> gpsDurations;
    private List<CircleGpsItem> gpsModelList;
    private HashSet<String> triggerBoundarySet;

    public final HashMap<String, String> getBrakeMap() {
        return this.brakeMap;
    }

    public final HashMap<String, Long> getFaultMap() {
        return this.faultMap;
    }

    public final List<cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> getGpsDurations() {
        return this.gpsDurations;
    }

    public final List<CircleGpsItem> getGpsModelList() {
        return this.gpsModelList;
    }

    public final HashSet<String> getTriggerBoundarySet() {
        return this.triggerBoundarySet;
    }

    public final void setBrakeMap(HashMap<String, String> map) {
        this.brakeMap = map;
    }

    public final void setFaultMap(HashMap<String, Long> map) {
        this.faultMap = map;
    }

    public final void setGpsDurations(List<cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> list) {
        this.gpsDurations = list;
    }

    public final void setGpsModelList(List<CircleGpsItem> list) {
        this.gpsModelList = list;
    }

    public final void setTriggerBoundarySet(HashSet<String> hashSet) {
        this.triggerBoundarySet = hashSet;
    }
}
