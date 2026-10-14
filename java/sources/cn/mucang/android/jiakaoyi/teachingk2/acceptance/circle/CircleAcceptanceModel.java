package cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle;

import cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.StepResultModel;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR.\u0010\u000e\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0010\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\"\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceModel;", "Ljava/io/Serializable;", "()V", "brakeMap", "", "", "getBrakeMap", "()Ljava/util/Map;", "setBrakeMap", "(Ljava/util/Map;)V", "faultMap", "", "getFaultMap", "setFaultMap", "gpsDurations", "", "Lcn/mucang/android/jiakaoyi/framework/base/model/JkyPair;", "getGpsDurations", "()Ljava/util/List;", "setGpsDurations", "(Ljava/util/List;)V", "gpsModel", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;", "getGpsModel", "setGpsModel", "stepResult", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/StepResultModel;", "getStepResult", "setStepResult", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CircleAcceptanceModel implements Serializable {
    private Map<String, String> brakeMap;
    private Map<String, Long> faultMap;
    private List<? extends cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> gpsDurations;
    private List<CircleGpsItem> gpsModel;
    private List<StepResultModel> stepResult;

    public final Map<String, String> getBrakeMap() {
        return this.brakeMap;
    }

    public final Map<String, Long> getFaultMap() {
        return this.faultMap;
    }

    public final List<cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> getGpsDurations() {
        return this.gpsDurations;
    }

    public final List<CircleGpsItem> getGpsModel() {
        return this.gpsModel;
    }

    public final List<StepResultModel> getStepResult() {
        return this.stepResult;
    }

    public final void setBrakeMap(Map<String, String> map) {
        this.brakeMap = map;
    }

    public final void setFaultMap(Map<String, Long> map) {
        this.faultMap = map;
    }

    public final void setGpsDurations(List<? extends cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> list) {
        this.gpsDurations = list;
    }

    public final void setGpsModel(List<CircleGpsItem> list) {
        this.gpsModel = list;
    }

    public final void setStepResult(List<StepResultModel> list) {
        this.stepResult = list;
    }
}
