package cn.mucang.sundial.library.entity;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcn/mucang/sundial/library/entity/IcInfo;", "Ljava/io/Serializable;", "", TtmlNode.ATTR_ID, "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class IcInfo implements Serializable {
    private String id = "";

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        r.e(str, "<set-?>");
        this.id = str;
    }
}
