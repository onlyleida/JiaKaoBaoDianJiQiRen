package cn.mucang.android.jiakaoyi.framework.language;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;", "Ljava/io/Serializable;", "()V", "chinese", "", "getChinese", "()Ljava/lang/String;", "setChinese", "(Ljava/lang/String;)V", "secondLanguage", "getSecondLanguage", "setSecondLanguage", "sourceId", "", "getSourceId", "()J", "setSourceId", "(J)V", "type", "", "getType", "()I", "setType", "(I)V", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LanguageModel implements Serializable {
    private String chinese;
    private String secondLanguage;
    private long sourceId;
    private int type;

    public final String getChinese() {
        return this.chinese;
    }

    public final String getSecondLanguage() {
        return this.secondLanguage;
    }

    public final long getSourceId() {
        return this.sourceId;
    }

    public final int getType() {
        return this.type;
    }

    public final void setChinese(String str) {
        this.chinese = str;
    }

    public final void setSecondLanguage(String str) {
        this.secondLanguage = str;
    }

    public final void setSourceId(long j) {
        this.sourceId = j;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
