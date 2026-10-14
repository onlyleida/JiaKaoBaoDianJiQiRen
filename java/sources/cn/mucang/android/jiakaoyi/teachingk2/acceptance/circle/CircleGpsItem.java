package cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004J\u000e\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020&J\u0006\u0010+\u001a\u00020,R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR:\u0010\f\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u0001`\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R:\u0010\u0014\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u0001`\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR\u001a\u0010\"\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0019\"\u0004\b$\u0010\u001b¨\u0006-"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;", "Ljava/io/Serializable;", "()V", "boundaryKey", "", "getBoundaryKey", "()Ljava/lang/String;", "setBoundaryKey", "(Ljava/lang/String;)V", "boundaryName", "getBoundaryName", "setBoundaryName", "gpsMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getGpsMap", "()Ljava/util/HashMap;", "setGpsMap", "(Ljava/util/HashMap;)V", "headingMap", "getHeadingMap", "setHeadingMap", "satelliteLessCount", "getSatelliteLessCount", "()I", "setSatelliteLessCount", "(I)V", "stepId", "getStepId", "setStepId", "stepName", "getStepName", "setStepName", "subStep", "getSubStep", "setSubStep", "handleGps", "", "gpsType", "handleHeading", "headingType", "increaseSatellite", "matchFullStep", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CircleGpsItem implements Serializable {
    private String boundaryKey;
    private String boundaryName;
    private HashMap<String, Integer> gpsMap;
    private HashMap<String, Integer> headingMap;
    private int satelliteLessCount;
    private int stepId;
    private String stepName;
    private int subStep = 1;

    public final String getBoundaryKey() {
        return this.boundaryKey;
    }

    public final String getBoundaryName() {
        return this.boundaryName;
    }

    public final HashMap<String, Integer> getGpsMap() {
        return this.gpsMap;
    }

    public final HashMap<String, Integer> getHeadingMap() {
        return this.headingMap;
    }

    public final int getSatelliteLessCount() {
        return this.satelliteLessCount;
    }

    public final int getStepId() {
        return this.stepId;
    }

    public final String getStepName() {
        return this.stepName;
    }

    public final int getSubStep() {
        return this.subStep;
    }

    public final void handleGps(String gpsType) {
        r.e(gpsType, "gpsType");
        if (this.gpsMap == null) {
            this.gpsMap = new HashMap<>();
        }
        HashMap<String, Integer> map = this.gpsMap;
        r.c(map);
        if (map.get(gpsType) == null) {
            HashMap<String, Integer> map2 = this.gpsMap;
            r.c(map2);
            map2.put(gpsType, 1);
            return;
        }
        HashMap<String, Integer> map3 = this.gpsMap;
        r.c(map3);
        HashMap<String, Integer> map4 = this.gpsMap;
        r.c(map4);
        Integer num = map4.get(gpsType);
        r.c(num);
        map3.put(gpsType, Integer.valueOf(num.intValue() + 1));
    }

    public final void handleHeading(String headingType) {
        r.e(headingType, "headingType");
        if (this.headingMap == null) {
            this.headingMap = new HashMap<>();
        }
        HashMap<String, Integer> map = this.headingMap;
        r.c(map);
        if (map.get(headingType) == null) {
            HashMap<String, Integer> map2 = this.headingMap;
            r.c(map2);
            map2.put(headingType, 1);
            return;
        }
        HashMap<String, Integer> map3 = this.headingMap;
        r.c(map3);
        HashMap<String, Integer> map4 = this.headingMap;
        r.c(map4);
        Integer num = map4.get(headingType);
        r.c(num);
        map3.put(headingType, Integer.valueOf(num.intValue() + 1));
    }

    public final void increaseSatellite() {
        this.satelliteLessCount++;
    }

    public final boolean matchFullStep() {
        int i = this.stepId;
        if (i == Step.K2_DaoCheRuKu.type) {
            return this.subStep >= 5;
        }
        if (i == Step.K2_CeFangTingChe.type) {
            return this.subStep >= 3;
        }
        return this.subStep >= 1;
    }

    public final void setBoundaryKey(String str) {
        this.boundaryKey = str;
    }

    public final void setBoundaryName(String str) {
        this.boundaryName = str;
    }

    public final void setGpsMap(HashMap<String, Integer> map) {
        this.gpsMap = map;
    }

    public final void setHeadingMap(HashMap<String, Integer> map) {
        this.headingMap = map;
    }

    public final void setSatelliteLessCount(int i) {
        this.satelliteLessCount = i;
    }

    public final void setStepId(int i) {
        this.stepId = i;
    }

    public final void setStepName(String str) {
        this.stepName = str;
    }

    public final void setSubStep(int i) {
        this.subStep = i;
    }
}
