package cn.mucang.sundial.android.log.db;

import cn.mucang.android.core.db.e;
import cn.mucang.android.core.utils.g;
import cn.mucang.sundial.android.log.Consts;
import cn.mucang.sundial.android.log.LogType;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class LogDb {
    public static LogEntity add(LogType logType, String str) {
        LogEntity logEntity = new LogEntity();
        logEntity.setStartTime(System.currentTimeMillis());
        logEntity.setFile(str);
        logEntity.setState(0);
        logEntity.setType(logType.type);
        logEntity.setTypeName(logType.typeName);
        logEntity.setDirName(logType.dirName);
        synchronized (Consts.DbLock) {
            JDb.db().u(logEntity);
        }
        if (logEntity.getId().longValue() > 0) {
            return logEntity;
        }
        return null;
    }

    public static void delete(LogEntity logEntity) {
        synchronized (Consts.DbLock) {
            JDb.db().h(logEntity.getClass(), logEntity.getId().longValue());
        }
    }

    public static List<LogEntity> list(long j, int i) {
        synchronized (Consts.DbLock) {
            List<LogEntity> listY = JDb.db().y(LogEntity.class, e.d("select * from t_log where start_time<=? and end_time>=? and type=? and state=?", String.valueOf(j), String.valueOf(j), String.valueOf(i), String.valueOf(1)));
            if (g.d(listY)) {
                return listY;
            }
            List listY2 = JDb.db().y(LogEntity.class, e.d("select * from t_log where start_time<=? and type=? order by start_time desc", String.valueOf(j), String.valueOf(i)));
            if (!g.d(listY2)) {
                return null;
            }
            return Collections.singletonList(listY2.get(0));
        }
    }

    public static void update(LogEntity logEntity) {
        synchronized (Consts.DbLock) {
            JDb.db().E(logEntity);
        }
    }

    public static List<LogEntity> list(int i) {
        List<LogEntity> listY;
        synchronized (Consts.DbLock) {
            listY = JDb.db().y(LogEntity.class, e.d("select * from t_log where type=? order by start_time asc", String.valueOf(i)));
        }
        return listY;
    }
}
