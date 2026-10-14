package cn.mucang.jiakaoyi.uilib.login.model;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import com.mucang.android.jiakaoyi.uilib.R;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ID_CARD' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "", SocialConstants.PARAM_APP_DESC, "", "typeId", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getTypeId", "ID_CARD", "QR_CODE", "FACE", "SWITCH_LOGIN", "MOBILE", "MOBILE_OR_IDCARD", "COACH_QR_CODE", "TAIZHOU", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginType {
    private static final /* synthetic */ LoginType[] $VALUES;
    public static final LoginType COACH_QR_CODE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final LoginType FACE;
    public static final LoginType ID_CARD;
    public static final LoginType MOBILE;
    public static final LoginType MOBILE_OR_IDCARD;
    public static final LoginType QR_CODE;
    public static final LoginType SWITCH_LOGIN;
    public static final LoginType TAIZHOU;
    private final String desc;
    private final String typeId;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.model.LoginType$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/LoginType$Companion;", "", "()V", "findByName", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "loginMethod", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final LoginType a(String str) {
            LoginType[] loginTypeArrValues = LoginType.values();
            int length = loginTypeArrValues.length;
            int i = 0;
            while (i < length) {
                LoginType loginType = loginTypeArrValues[i];
                i++;
                if (r.a(loginType.name(), str)) {
                    return loginType;
                }
            }
            return null;
        }
    }

    private static final /* synthetic */ LoginType[] $values() {
        return new LoginType[]{ID_CARD, QR_CODE, FACE, SWITCH_LOGIN, MOBILE, MOBILE_OR_IDCARD, COACH_QR_CODE, TAIZHOU};
    }

    static {
        String strA = k0.a(R.string.uilib_account_login);
        r.d(strA, "getString(R.string.uilib_account_login)");
        ID_CARD = new LoginType("ID_CARD", 0, strA, "1");
        String strA2 = k0.a(R.string.uilib_qr_code_login);
        r.d(strA2, "getString(R.string.uilib_qr_code_login)");
        QR_CODE = new LoginType("QR_CODE", 1, strA2, "2");
        String strA3 = k0.a(R.string.uilib_face_login);
        r.d(strA3, "getString(R.string.uilib_face_login)");
        FACE = new LoginType("FACE", 2, strA3, Constants.VIA_TO_TYPE_QZONE);
        String strA4 = k0.a(R.string.uilib_switch_login);
        r.d(strA4, "getString(R.string.uilib_switch_login)");
        SWITCH_LOGIN = new LoginType("SWITCH_LOGIN", 3, strA4, "5");
        String strA5 = k0.a(R.string.uilib_mobile_login);
        r.d(strA5, "getString(R.string.uilib_mobile_login)");
        MOBILE = new LoginType("MOBILE", 4, strA5, "7");
        String strA6 = k0.a(R.string.uilib_mobile_or_idcard_login);
        r.d(strA6, "getString(R.string.uilib_mobile_or_idcard_login)");
        MOBILE_OR_IDCARD = new LoginType("MOBILE_OR_IDCARD", 5, strA6, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
        String strA7 = k0.a(R.string.uilib_coach_qrcode_login);
        r.d(strA7, "getString(R.string.uilib_coach_qrcode_login)");
        COACH_QR_CODE = new LoginType("COACH_QR_CODE", 6, strA7, Constants.VIA_SHARE_TYPE_MINI_PROGRAM);
        String strA8 = k0.a(R.string.uilib_taizhou_login);
        r.d(strA8, "getString(R.string.uilib_taizhou_login)");
        TAIZHOU = new LoginType("TAIZHOU", 7, strA8, Constants.VIA_SHARE_TYPE_INFO);
        $VALUES = $values();
        INSTANCE = new Companion(null);
    }

    private LoginType(String str, int i, String str2, String str3) {
        super(str, i);
        this.desc = str2;
        this.typeId = str3;
    }

    public static LoginType valueOf(String str) {
        return (LoginType) Enum.valueOf(LoginType.class, str);
    }

    public static LoginType[] values() {
        return (LoginType[]) $VALUES.clone();
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getTypeId() {
        return this.typeId;
    }
}
