package cn.mucang.jiakaoyi.uilib.login.model;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/AnyLoginData;", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "value", "", "(Ljava/lang/String;)V", "()V", "getValue", "()Ljava/lang/String;", "setValue", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AnyLoginData extends LoginData {
    private String value;

    public AnyLoginData() {
    }

    public final String getValue() {
        return this.value;
    }

    public final void setValue(String str) {
        this.value = str;
    }

    public AnyLoginData(String str) {
        this();
        this.value = str;
    }
}
