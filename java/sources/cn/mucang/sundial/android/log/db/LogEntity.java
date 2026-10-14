package cn.mucang.sundial.android.log.db;

import cn.mucang.android.core.db.IdEntity;

/* JADX INFO: loaded from: classes5.dex */
public class LogEntity extends IdEntity {
    public static final int StateEnd = 1;
    public static final int StateSend = 2;
    public static final int StateStart = 0;
    private String dirName;
    private long endTime;
    private String file;
    private long size;
    private long startTime;
    private int state;
    private int type;
    private String typeName;

    public String getDirName() {
        return this.dirName;
    }

    public long getEndTime() {
        return this.endTime;
    }

    public String getFile() {
        return this.file;
    }

    public long getSize() {
        return this.size;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public int getState() {
        return this.state;
    }

    public int getType() {
        return this.type;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public void setDirName(String str) {
        this.dirName = str;
    }

    public void setEndTime(long j) {
        this.endTime = j;
    }

    public void setFile(String str) {
        this.file = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setStartTime(long j) {
        this.startTime = j;
    }

    public void setState(int i) {
        this.state = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setTypeName(String str) {
        this.typeName = str;
    }
}
