package cn.mucang.jiakaoyi.uilib.rule;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;", "", "type", "", "levelName", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getLevelName", "()Ljava/lang/String;", "getType", "()I", "Normal", "High", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum RuleLevel {
    Normal(1, "普通规则"),
    High(2, "高级规则");

    private final String levelName;
    private final int type;

    RuleLevel(int i, String str) {
        this.type = i;
        this.levelName = str;
    }

    public final String getLevelName() {
        return this.levelName;
    }

    public final int getType() {
        return this.type;
    }
}
