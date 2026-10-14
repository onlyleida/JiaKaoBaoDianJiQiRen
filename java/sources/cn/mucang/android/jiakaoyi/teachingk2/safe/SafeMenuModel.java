package cn.mucang.android.jiakaoyi.teachingk2.safe;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;", "Ljava/io/Serializable;", "()V", TtmlNode.ATTR_ID, "", "getId", "()I", "setId", "(I)V", "isAuto", "", "()Z", "setAuto", "(Z)V", "selected", "getSelected", "setSelected", "text", "", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeMenuModel implements Serializable {
    private int id;
    private boolean isAuto;
    private boolean selected;
    private String text = "";

    public final int getId() {
        return this.id;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: isAuto, reason: from getter */
    public final boolean getIsAuto() {
        return this.isAuto;
    }

    public final void setAuto(boolean z) {
        this.isAuto = z;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setSelected(boolean z) {
        this.selected = z;
    }

    public final void setText(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.text = str;
    }
}
