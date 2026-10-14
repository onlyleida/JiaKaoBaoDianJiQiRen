package cn.mucang.sundial.library.sdk.coach;

import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/LoginType;", "", "", "typeId", "Ljava/lang/String;", "getTypeId", "()Ljava/lang/String;", SocialConstants.PARAM_APP_DESC, "getDesc", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "ID_CARD", "QR_CODE", "FACE", "SWITCH_LOGIN", "MOBILE", "MOBILE_OR_IDCARD", "TAIZHOU", "library_release"}, k = 1, mv = {1, 1, 15})
public enum LoginType {
    ID_CARD("账号登录", "1"),
    QR_CODE("扫码登录", "2"),
    FACE("人脸识别登录", Constants.VIA_TO_TYPE_QZONE),
    SWITCH_LOGIN("学员切换登录", "5"),
    MOBILE("手机号登录", "7"),
    MOBILE_OR_IDCARD("任意账号登录", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO),
    TAIZHOU("计时账号登录", Constants.VIA_SHARE_TYPE_INFO);

    private final String desc;
    private final String typeId;

    LoginType(String str, String str2) {
        this.desc = str;
        this.typeId = str2;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getTypeId() {
        return this.typeId;
    }
}
