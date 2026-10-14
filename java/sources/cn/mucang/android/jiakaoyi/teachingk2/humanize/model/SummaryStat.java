package cn.mucang.android.jiakaoyi.teachingk2.humanize.model;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SummaryStat implements Serializable {
    public List<BehaviorStat> behaviorStatList;
    public long examCostTime;
    public long loginTime;
    public long singleTrainCostTime;
    public long trainCostTime;

    public static class BehaviorStat implements Serializable {
        public int behaviorCode;
        public String behaviorDesc;
        public int count;
    }
}
