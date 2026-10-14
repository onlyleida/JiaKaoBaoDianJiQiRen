package cn.mucang.sundial.android.log.write.end;

import cn.mucang.sundial.android.log.LogType;
import cn.mucang.sundial.android.log.db.LogEntity;

/* JADX INFO: loaded from: classes5.dex */
public interface StopWriter {
    void onStop(LogEntity logEntity, LogType logType);
}
