package cn.mucang.android.channel;

import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.android.channel.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J$\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\rH\u0007J.\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\rH\u0007J0\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00112\b\b\u0002\u0010\f\u001a\u00020\rH\u0007¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/channel/McChannelUtil;", "", "()V", "genApkId", "", "read", "Lcn/mucang/android/channel/McChannelInfo;", "apkFile", "Ljava/io/File;", "write", "", "channel", "clearNoneStanderExtras", "", "key", "value", "extraMap", "", "mc-channel"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class McChannelUtil {
    public static final McChannelInfo a(File file) {
        try {
            Result.Companion companion = Result.INSTANCE;
            String rawString = b.a(file);
            if (rawString == null || t.r(rawString)) {
                return null;
            }
            r.d(rawString, "rawString");
            return new McChannelInfo(StringsKt__StringsKt.J0(rawString).toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
            return null;
        }
    }
}
