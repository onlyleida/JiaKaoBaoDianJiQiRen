package cn.mucang.jiakaoyi.uilib.activate;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;", "Ljava/io/Serializable;", "()V", "data", "", "getData", "()Ljava/lang/String;", "setData", "(Ljava/lang/String;)V", TtmlNode.ATTR_ID, "getId", "setId", "url", "getUrl", "setUrl", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BindDeviceInfo implements Serializable {
    private String data;
    private String id;
    private String url;

    public final String getData() {
        return this.data;
    }

    public final String getId() {
        return this.id;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setData(String str) {
        this.data = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }
}
