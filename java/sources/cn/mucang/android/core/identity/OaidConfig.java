package cn.mucang.android.core.identity;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.l0;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0001\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/core/identity/OaidConfig;", "", "key", "", "(Ljava/lang/String;)V", "getKey", "()Ljava/lang/String;", "storage", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "beginInit", "", "endInit", "failInit", "shouldInit", "", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"ApplySharedPref"})
public final class OaidConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2567a;
    private final SharedPreferences b;

    public OaidConfig(String key) {
        r.e(key, "key");
        this.f2567a = key;
        this.b = j0.b(r.m("oaid_config_", key));
    }

    public final void a() {
        this.b.edit().putInt("begin", this.b.getInt("begin", 0) + 1).commit();
    }

    public final void b() {
        this.b.edit().putInt(TtmlNode.END, this.b.getInt(TtmlNode.END, 0) + 1).commit();
        this.b.edit().putInt("fail", 0).commit();
    }

    public final void c() {
        this.b.edit().putInt("fail", this.b.getInt("fail", 0) + 1).commit();
        this.b.edit().putInt(TtmlNode.END, 0).commit();
    }

    public final boolean d() {
        int i = this.b.getInt("begin", 0);
        int i2 = this.b.getInt("fail", 0);
        int i3 = this.b.getInt(TtmlNode.END, 0);
        if (i <= 0 || i2 > 0 || i3 > 0) {
            l0.a("core", "OAID:" + this.f2567a + " 允许初始化");
            return true;
        }
        l0.a("core", "OAID:" + this.f2567a + " crash过，不再初始化");
        return false;
    }
}
