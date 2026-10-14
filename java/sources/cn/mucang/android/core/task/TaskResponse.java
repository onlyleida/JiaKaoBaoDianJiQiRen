package cn.mucang.android.core.task;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TaskResponse implements Serializable {
    private long nextRequestTIme;
    private List<Task> taskList;

    public long getNextRequestTime() {
        return this.nextRequestTIme;
    }

    public List<Task> getTaskList() {
        return this.taskList;
    }

    public void setNextRequestTime(long j) {
        this.nextRequestTIme = j;
    }

    public void setTaskList(List<Task> list) {
        this.taskList = list;
    }
}
