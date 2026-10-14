package cn.mucang.android.jiakaoyi.teachingk2.config;

import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\tj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;", "", "code", "", SocialConstants.PARAM_APP_DESC, "default", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "getCode", "()Ljava/lang/String;", "getDefault", "()Ljava/lang/Object;", "getDesc", "ShowMissBrake", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum JxConfig {
    ShowMissBrake("JX20009", "是否展示误杀上报按钮", Boolean.TRUE);

    private final String code;
    private final Object default;
    private final String desc;

    JxConfig(String str, String str2, Object obj) {
        this.code = str;
        this.desc = str2;
        this.default = obj;
    }

    public final String getCode() {
        return this.code;
    }

    public final Object getDefault() {
        return this.default;
    }

    public final String getDesc() {
        return this.desc;
    }
}
