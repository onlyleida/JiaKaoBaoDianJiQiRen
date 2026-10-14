package cn.mucang.sundial.android.db;

import android.annotation.SuppressLint;
import cn.mucang.android.core.db.b;
import cn.mucang.sundial.android.db.entity.DebugLog;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class SundialLogDb {
    private static final int DB_VERSION = 1;
    private final cn.mucang.android.core.db.a db;
    private final DateFormat timePattern;

    private static class SundialDbHolder {
        private static final SundialLogDb sInstance = new SundialLogDb();

        private SundialDbHolder() {
        }
    }

    public static SundialLogDb getInstance() {
        return SundialDbHolder.sInstance;
    }

    public void clear() {
        getDb().j(DebugLog.class, "1 = 1", null);
    }

    public cn.mucang.android.core.db.a getDb() {
        return this.db;
    }

    public void insert(DebugLog debugLog) {
        if (debugLog.getCreateTime() <= 0) {
            debugLog.setCreateTime(System.currentTimeMillis());
        }
        if (debugLog.getLog4() == null) {
            debugLog.setLog4(this.timePattern.format(Long.valueOf(debugLog.getCreateTime())));
        }
        getDb().u(debugLog);
        Long id = debugLog.getId();
        if (id == null || id.longValue() <= 0 || getDb().e(DebugLog.class) <= SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
            return;
        }
        getDb().j(DebugLog.class, "_id < ?", new String[]{String.valueOf(id.longValue() - 10000)});
    }

    @SuppressLint({"MissingPermission"})
    private SundialLogDb() {
        this.timePattern = new SimpleDateFormat("HH:mm:ss", Locale.getDefault());
        b bVar = new b();
        bVar.d("sundial_log.db");
        bVar.c("sql/sundial_log.sql");
        bVar.e(1);
        this.db = bVar.a();
    }
}
