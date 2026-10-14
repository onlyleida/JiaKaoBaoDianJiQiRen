package f.a.a.a.stat_api;

import android.content.Context;
import com.amap.api.fence.GeoFence;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: f.a.a.a.q.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH&J.\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\bH&J.\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\bH&J\b\u0010\u0010\u001a\u00020\u0003H&¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/core/stat_api/StatReporter;", "", "onEvent", "", "group", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "properties", "", "duration", "", "onPause", "context", "Landroid/content/Context;", "componentName", "onResume", "uploadLogs", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface StatReporter {
    void a(Context context, String str, Map<String, ? extends Object> map);

    void b(Context context, String str, Map<String, ? extends Object> map);

    void c();

    void d(String str, String str2, Map<String, ? extends Object> map, long j);
}
