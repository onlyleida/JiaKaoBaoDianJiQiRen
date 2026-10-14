package cn.mucang.android.jiakaoyi.teachingk2.humanize.model;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SummaryRecordList implements Serializable {
    public int allExamPassCount;
    public List<ExamStep> examRecordList;
    public List<PassCount> singleExamPassList;
    public List<ExamStep> todayExamRecordList;
    public List<TrainStep> todayTrainRecordList;
    public List<TrainStep> trainRecordList;

    public static class PassCount implements Serializable {
        public int examCount;
        public int examPassCount;
        public int step;
    }
}
