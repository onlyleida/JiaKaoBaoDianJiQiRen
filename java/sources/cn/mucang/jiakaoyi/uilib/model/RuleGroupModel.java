package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class RuleGroupModel implements Serializable {
    private long createTime;
    private Long id;
    private int kemu;
    private String name;
    private String owner;
    private int ownerType;
    private int status;

    public long getCreateTime() {
        return this.createTime;
    }

    public Long getId() {
        return this.id;
    }

    public int getKemu() {
        return this.kemu;
    }

    public String getName() {
        return this.name;
    }

    public String getOwner() {
        return this.owner;
    }

    public int getOwnerType() {
        return this.ownerType;
    }

    public int getStatus() {
        return this.status;
    }

    public ExamSiteModel map() {
        ExamSiteModel examSiteModel = new ExamSiteModel();
        examSiteModel.examSiteId = this.id.longValue();
        examSiteModel.examSiteName = this.name;
        return examSiteModel;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setKemu(int i) {
        this.kemu = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOwner(String str) {
        this.owner = str;
    }

    public void setOwnerType(int i) {
        this.ownerType = i;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
