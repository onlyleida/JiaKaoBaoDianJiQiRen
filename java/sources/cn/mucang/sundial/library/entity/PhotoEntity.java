package cn.mucang.sundial.library.entity;

import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcn/mucang/sundial/library/entity/PhotoEntity;", "Ljava/io/Serializable;", "", "toString", "()Ljava/lang/String;", "", TtmlNode.ATTR_ID, "I", "getId", "()I", "setId", "(I)V", "", "imageTime", "J", "getImageTime", "()J", "setImageTime", "(J)V", "imageUrl", "Ljava/lang/String;", "getImageUrl", "setImageUrl", "(Ljava/lang/String;)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class PhotoEntity implements Serializable {
    private int id;
    private long imageTime;
    private String imageUrl = "";

    public final int getId() {
        return this.id;
    }

    public final long getImageTime() {
        return this.imageTime;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setImageTime(long j) {
        this.imageTime = j;
    }

    public final void setImageUrl(String str) {
        r.e(str, "<set-?>");
        this.imageUrl = str;
    }

    public String toString() {
        String jSONString = JSON.toJSONString(this);
        r.d(jSONString, "JSON.toJSONString(this)");
        return jSONString;
    }
}
