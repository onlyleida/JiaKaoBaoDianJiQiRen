package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import com.tencent.open.SocialConstants;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;", "Ljava/io/Serializable;", "config", "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", "(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)V", "getConfig", "()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", SocialConstants.PARAM_APP_DESC, "", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "value", "", "getValue", "()F", "setValue", "(F)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeArgumentModel implements Serializable {
    private final LocalConfig config;
    private String desc;
    private float value;

    public SafeArgumentModel(LocalConfig config) {
        kotlin.jvm.internal.r.e(config, "config");
        this.config = config;
        this.desc = "";
    }

    public final LocalConfig getConfig() {
        return this.config;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final float getValue() {
        return this.value;
    }

    public final void setDesc(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.desc = str;
    }

    public final void setValue(float f2) {
        this.value = f2;
    }
}
