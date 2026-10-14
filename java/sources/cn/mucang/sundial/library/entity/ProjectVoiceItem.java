package cn.mucang.sundial.library.entity;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/entity/ProjectVoiceItem;", "", "", TtmlNode.ATTR_ID, "I", "getId", "()I", "", "voiceTxt", "Ljava/lang/String;", "getVoiceTxt", "()Ljava/lang/String;", Constant.PROTOCOL_WEBVIEW_NAME, "getName", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ProjectVoiceItem {
    private final int id;
    private final String name;
    private final String voiceTxt;

    public ProjectVoiceItem(String name, int i, String voiceTxt) {
        r.e(name, "name");
        r.e(voiceTxt, "voiceTxt");
        this.name = name;
        this.id = i;
        this.voiceTxt = voiceTxt;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getVoiceTxt() {
        return this.voiceTxt;
    }
}
