package cn.mucang.sundial.android.eventbus.event;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;", "", "", "url", "Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "base_release"}, k = 1, mv = {1, 1, 15})
public final class UpdateEvent {
    private final String url;

    public UpdateEvent(String url) {
        r.e(url, "url");
        this.url = url;
    }

    public final String getUrl() {
        return this.url;
    }
}
