package cn.mucang.android.jiakaoyi.framework.log.db;

import cn.mucang.android.core.db.e;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.log.i;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static LogEntity a(i iVar, String str) {
        LogEntity logEntity = new LogEntity();
        logEntity.setStartTime(System.currentTimeMillis());
        logEntity.setFile(str);
        logEntity.setState(0);
        logEntity.setType(iVar.f3470f);
        logEntity.setTypeName(iVar.f3467a);
        logEntity.setDirName(iVar.b);
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            cn.mucang.android.jiakaoyi.framework.f.a.a().u(logEntity);
        }
        if (logEntity.getId().longValue() > 0) {
            return logEntity;
        }
        return null;
    }

    public static int b(LogEntity logEntity) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (logEntity.getId() == null) {
                return 0;
            }
            return cn.mucang.android.jiakaoyi.framework.f.a.a().h(logEntity.getClass(), logEntity.getId().longValue());
        }
    }

    public static LogEntity c(long j) {
        LogEntity logEntity;
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            logEntity = (LogEntity) cn.mucang.android.jiakaoyi.framework.f.a.a().m(LogEntity.class, j);
        }
        return logEntity;
    }

    public static List<LogEntity> d(int i) {
        List<LogEntity> listY;
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            listY = cn.mucang.android.jiakaoyi.framework.f.a.a().y(LogEntity.class, e.d("select * from t_log where type=? order by start_time asc", String.valueOf(i)));
        }
        return listY;
    }

    public static List<LogEntity> e(long j, long j2, int i) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            try {
                List<LogEntity> listY = j < j2 ? cn.mucang.android.jiakaoyi.framework.f.a.a().y(LogEntity.class, e.d("select * from t_log where start_time<=? and start_time>=? and type=? and state=?", String.valueOf(j2), String.valueOf(j), String.valueOf(i), String.valueOf(1))) : cn.mucang.android.jiakaoyi.framework.f.a.a().y(LogEntity.class, e.d("select * from t_log where state=?", String.valueOf(1)));
                if (g.d(listY)) {
                    return listY;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void f(LogEntity logEntity) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            cn.mucang.android.jiakaoyi.framework.f.a.a().E(logEntity);
        }
    }
}
