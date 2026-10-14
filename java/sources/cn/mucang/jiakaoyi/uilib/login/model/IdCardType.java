package cn.mucang.jiakaoyi.uilib.login.model;

import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;", "", "type", "", SocialConstants.PARAM_APP_DESC, "", "(Ljava/lang/String;IILjava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getType", "()I", "ID_CARD", "PASSPORT", "OFFICER_ID", "OTHER", "MOBILE", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum IdCardType {
    ID_CARD(0, "身份证"),
    PASSPORT(1, "护照"),
    OFFICER_ID(2, "军官证"),
    OTHER(3, "其他"),
    MOBILE(4, "手机号");


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String desc;
    private final int type;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.model.IdCardType$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType$Companion;", "", "()V", "getType", "Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;", "type", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final IdCardType a(int i) {
            for (IdCardType idCardType : IdCardType.values()) {
                if (idCardType.getType() == i) {
                    return idCardType;
                }
            }
            return IdCardType.OTHER;
        }
    }

    IdCardType(int i, String str) {
        this.type = i;
        this.desc = str;
    }

    public static final IdCardType getType(int i) {
        return INSTANCE.a(i);
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getType() {
        return this.type;
    }
}
