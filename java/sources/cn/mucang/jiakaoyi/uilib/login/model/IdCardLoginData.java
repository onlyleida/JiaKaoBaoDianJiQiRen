package cn.mucang.jiakaoyi.uilib.login.model;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "idCardType", "Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;", "idCard", "", "(Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;Ljava/lang/String;)V", "()V", "getIdCard", "()Ljava/lang/String;", "setIdCard", "(Ljava/lang/String;)V", "getIdCardType", "()Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;", "setIdCardType", "(Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;)V", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class IdCardLoginData extends LoginData {
    private String idCard;
    private IdCardType idCardType;

    public IdCardLoginData() {
    }

    public final String getIdCard() {
        return this.idCard;
    }

    public final IdCardType getIdCardType() {
        return this.idCardType;
    }

    public final void setIdCard(String str) {
        this.idCard = str;
    }

    public final void setIdCardType(IdCardType idCardType) {
        this.idCardType = idCardType;
    }

    public IdCardLoginData(IdCardType idCardType, String str) {
        this();
        this.idCardType = idCardType;
        this.idCard = str;
    }
}
