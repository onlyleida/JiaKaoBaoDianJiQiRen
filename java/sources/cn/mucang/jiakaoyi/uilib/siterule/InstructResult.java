package cn.mucang.jiakaoyi.uilib.siterule;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010\u0014¨\u0006$"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;", "Ljava/io/Serializable;", "()V", "configType", "", "getConfigType", "()I", "setConfigType", "(I)V", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "createTime", "", "getCreateTime", "()J", "setCreateTime", "(J)V", "examSiteId", "getExamSiteId", "setExamSiteId", TtmlNode.ATTR_ID, "getId", "setId", "owner", "getOwner", "setOwner", "ownerType", "getOwnerType", "setOwnerType", "updateTime", "getUpdateTime", "setUpdateTime", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class InstructResult implements Serializable {
    private int configType;
    private String content;
    private long createTime;
    private int examSiteId;
    private int id;
    private String owner;
    private int ownerType;
    private long updateTime;

    public final int getConfigType() {
        return this.configType;
    }

    public final String getContent() {
        return this.content;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final int getExamSiteId() {
        return this.examSiteId;
    }

    public final int getId() {
        return this.id;
    }

    public final String getOwner() {
        return this.owner;
    }

    public final int getOwnerType() {
        return this.ownerType;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public final void setConfigType(int i) {
        this.configType = i;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setCreateTime(long j) {
        this.createTime = j;
    }

    public final void setExamSiteId(int i) {
        this.examSiteId = i;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setOwner(String str) {
        this.owner = str;
    }

    public final void setOwnerType(int i) {
        this.ownerType = i;
    }

    public final void setUpdateTime(long j) {
        this.updateTime = j;
    }
}
