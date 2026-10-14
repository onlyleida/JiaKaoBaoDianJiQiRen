package cn.mucang.android.jiakaoyi.framework.base.model;

import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "", "(Ljava/lang/String;I)V", SocialConstants.PARAM_SEND_MSG, "", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "buildMsg", "Loading", "Fail", "Success", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum LoadingState {
    Loading,
    Fail,
    Success;

    private String msg = "";

    LoadingState() {
    }

    public final LoadingState buildMsg(String msg) {
        r.e(msg, "msg");
        this.msg = msg;
        return this;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final void setMsg(String str) {
        r.e(str, "<set-?>");
        this.msg = str;
    }
}
