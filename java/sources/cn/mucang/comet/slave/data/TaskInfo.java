package cn.mucang.comet.slave.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class TaskInfo implements Serializable {
    private int bufferSize;
    private long step1Time;
    private int taskInterval;

    public int getBufferSize() {
        return this.bufferSize;
    }

    public long getStep1Time() {
        return this.step1Time;
    }

    public int getTaskInterval() {
        return this.taskInterval;
    }

    public void setBufferSize(int i) {
        this.bufferSize = i;
    }

    public void setStep1Time(long j) {
        this.step1Time = j;
    }

    public void setTaskInterval(int i) {
        this.taskInterval = i;
    }
}
