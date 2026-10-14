package cn.mucang.android.channel;

import kotlin.Metadata;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.mucang.android.channel.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0012\u001a\u00020\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003J\u0018\u0010\u0014\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0017\u001a\u00020\u0016J\u0018\u0010\u0014\u001a\u00020\u00182\b\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u0014\u001a\u00020\u00192\b\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0017\u001a\u00020\u0019J\u0018\u0010\u0014\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0017\u001a\u00020\rJ\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bJ\b\u0010\u001c\u001a\u0004\u0018\u00010\u0003J\b\u0010\u001d\u001a\u00020\u0003H\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\b\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/channel/McChannelInfo;", "", "rawString", "", "(Ljava/lang/String;)V", "apkId", "getApkId", "()Ljava/lang/String;", "channel", "getChannel", "jsonObject", "Lorg/json/JSONObject;", "lastMarkTime", "", "getLastMarkTime", "()J", "markTime", "getMarkTime", "clearNoneStanderExtras", "", "getExtraValue", "key", "", "defaultValue", "", "", "getExtras", "", "getOriginJsonString", "toString", "Builder", "Companion", "mc-channel"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class McChannelInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2318a;
    private JSONObject b;

    public McChannelInfo(String str) {
        boolean z;
        if (str != null) {
            try {
                z = str.length() == 0;
            } catch (Exception unused) {
                return;
            }
        }
        if (z) {
            return;
        }
        this.f2318a = str;
        this.b = new JSONObject(str);
    }

    public final String a() {
        return b("mc_channel");
    }

    public final String b(String str) {
        JSONObject jSONObject = this.b;
        if (jSONObject == null || jSONObject == null) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    public String toString() {
        String str = this.f2318a;
        return str == null ? "" : str;
    }
}
