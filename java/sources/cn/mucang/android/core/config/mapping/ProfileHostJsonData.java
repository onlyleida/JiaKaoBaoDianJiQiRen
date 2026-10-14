package cn.mucang.android.core.config.mapping;

import cn.mucang.android.core.webview.MenuOptions;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;", "Ljava/io/Serializable;", Constant.PROTOCOL_WEBVIEW_NAME, "", "value", "(Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getValue", "setValue", "component1", "component2", MenuOptions.COPY, "equals", "", "other", "", "hashCode", "", "toString", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class ProfileHostJsonData implements Serializable {
    private String name;
    private String value;

    /* JADX WARN: Multi-variable type inference failed */
    public ProfileHostJsonData() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public ProfileHostJsonData(String name, String value) {
        r.e(name, "name");
        r.e(value, "value");
        this.name = name;
        this.value = value;
    }

    public static /* synthetic */ ProfileHostJsonData copy$default(ProfileHostJsonData profileHostJsonData, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = profileHostJsonData.name;
        }
        if ((i & 2) != 0) {
            str2 = profileHostJsonData.value;
        }
        return profileHostJsonData.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getValue() {
        return this.value;
    }

    public final ProfileHostJsonData copy(String name, String value) {
        r.e(name, "name");
        r.e(value, "value");
        return new ProfileHostJsonData(name, value);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileHostJsonData)) {
            return false;
        }
        ProfileHostJsonData profileHostJsonData = (ProfileHostJsonData) other;
        return r.a(this.name, profileHostJsonData.name) && r.a(this.value, profileHostJsonData.value);
    }

    public final String getName() {
        return this.name;
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.value.hashCode();
    }

    public final void setName(String str) {
        r.e(str, "<set-?>");
        this.name = str;
    }

    public final void setValue(String str) {
        r.e(str, "<set-?>");
        this.value = str;
    }

    public String toString() {
        return "ProfileHostJsonData(name=" + this.name + ", value=" + this.value + ')';
    }

    public /* synthetic */ ProfileHostJsonData(String str, String str2, int i, o oVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
    }
}
