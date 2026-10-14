package cn.mucang.android.core.task;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class Task implements Serializable {
    static final int TYPE_DOWNLOAD = 0;
    private List<String> subTaskList;
    private long taskId;
    private int type = -1;

    Task() {
    }

    public List<String> getSubTaskList() {
        return this.subTaskList;
    }

    public long getTaskId() {
        return this.taskId;
    }

    public int getType() {
        return this.type;
    }

    public void setSubTaskList(List<String> list) {
        this.subTaskList = list;
    }

    public void setTaskId(long j) {
        this.taskId = j;
    }

    public void setType(int i) {
        this.type = i;
    }
}
