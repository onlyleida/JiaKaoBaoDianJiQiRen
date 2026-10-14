package cn.mucang.android.jiakaoyi.framework.log;

import android.os.SystemClock;
import android.util.Log;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.db.LogEntity;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<i, cn.mucang.android.jiakaoyi.framework.log.l.h> f3465a = new HashMap();
    private static final Runnable b;
    private static boolean c;

    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MucangConfig.v()) {
                Log.e("LogTag", "检查时间或者容量是否达到要求");
            }
            Iterator it = f.f3465a.entrySet().iterator();
            while (it.hasNext()) {
                ((cn.mucang.android.jiakaoyi.framework.log.l.h) ((Map.Entry) it.next()).getValue()).a();
            }
            u.d(this, 30000L);
        }
    }

    static {
        cn.mucang.android.jiakaoyi.framework.log.l.i.b bVar = new cn.mucang.android.jiakaoyi.framework.log.l.i.b();
        cn.mucang.android.jiakaoyi.framework.log.j.a aVar = new cn.mucang.android.jiakaoyi.framework.log.j.a();
        for (i iVar : i.b()) {
            f3465a.put(iVar, new cn.mucang.android.jiakaoyi.framework.log.l.f(new cn.mucang.android.jiakaoyi.framework.log.l.e(iVar, bVar, aVar), iVar));
        }
        b = new a();
        c = false;
    }

    private static cn.mucang.android.jiakaoyi.framework.log.l.h A(i iVar) {
        j();
        return f3465a.get(iVar);
    }

    public static void b(Object obj) {
        try {
            A(i.p).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error signal ::" + th);
        }
    }

    public static void c(Object obj) {
        try {
            A(i.q).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error signal ::" + th);
        }
    }

    public static void d(Object obj) {
        try {
            A(i.m).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error com :" + obj + ":" + th);
        }
    }

    public static void e(Object obj) {
        try {
            A(i.o).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error signal ::" + th);
        }
    }

    public static void f(Object obj) {
        try {
            A(i.j).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error com :" + obj + ":" + th);
        }
    }

    public static void g(Object obj) {
        try {
            A(i.s).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error faceLogin :" + obj + ":" + th);
        }
    }

    public static void h(Object obj) {
        try {
            A(i.t).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error signal ::" + th);
        }
    }

    public static void i(Object obj) {
        try {
            A(i.k).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error hp :" + obj + ":" + th);
        }
    }

    private static synchronized void j() {
        if (c) {
            return;
        }
        c = true;
        u.c(b);
    }

    static /* synthetic */ void k(LogEntity logEntity, String str) {
        try {
            cn.mucang.android.jiakaoyi.framework.log.k.b.b(i.l, logEntity);
            o(str + ":关键点日志上传成功:" + logEntity.getFile());
        } catch (Throwable th) {
            o(str + " : 上传关键点信号日志失败 : " + q0.d(th));
        }
    }

    static /* synthetic */ void l(long j, long j2, i iVar) {
        try {
            List<LogEntity> listE = cn.mucang.android.jiakaoyi.framework.log.db.a.e(j, j2, iVar.f3470f);
            if (cn.mucang.android.core.utils.g.b(listE) && j == 0) {
                y(iVar);
                return;
            }
            for (LogEntity logEntity : listE) {
                cn.mucang.android.jiakaoyi.framework.log.l.h hVarA = A(iVar);
                if (hVarA != null && hVarA.entityId() == logEntity.getId().longValue()) {
                    return;
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.k.b.b(iVar, logEntity);
                }
            }
        } catch (Throwable th) {
            Log.e("TAG", "error = " + th.getMessage());
        }
    }

    static /* synthetic */ void m(i iVar) {
        try {
            List<LogEntity> listD = cn.mucang.android.jiakaoyi.framework.log.db.a.d(iVar.f3470f);
            if (cn.mucang.android.core.utils.g.b(listD)) {
                y(iVar);
                return;
            }
            for (LogEntity logEntity : listD) {
                cn.mucang.android.jiakaoyi.framework.log.l.h hVarA = A(iVar);
                if (hVarA == null || hVarA.entityId() != logEntity.getId().longValue()) {
                    cn.mucang.android.jiakaoyi.framework.log.k.b.b(iVar, logEntity);
                }
            }
        } catch (Throwable th) {
            Log.e("TAG", "error = " + th.getMessage());
        }
    }

    static /* synthetic */ void n(final String str) {
        try {
            cn.mucang.android.jiakaoyi.framework.log.l.h hVarA = A(i.l);
            long jEntityId = hVarA.entityId();
            o("上传关键点原始信号日志当前id : " + jEntityId);
            if (jEntityId == 0) {
                while (jEntityId == 0) {
                    SystemClock.sleep(100L);
                    jEntityId = hVarA.entityId();
                }
                jEntityId--;
            } else {
                hVarA.stop();
            }
            while (jEntityId == hVarA.entityId()) {
                SystemClock.sleep(100L);
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                long j = jEntityId - ((long) i);
                arrayList.add(Long.valueOf(j));
                o("上传关键点原始信号日志最终id : " + j);
            }
            ArrayList<LogEntity> arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                long jLongValue = ((Long) it.next()).longValue();
                if (jLongValue > 0) {
                    try {
                        LogEntity logEntityC = cn.mucang.android.jiakaoyi.framework.log.db.a.c(jLongValue);
                        if (logEntityC != null && logEntityC.getId().longValue() != hVarA.entityId()) {
                            arrayList2.add(logEntityC);
                        }
                    } catch (Throwable th) {
                        o("获取日志entity失败 : " + q0.d(th));
                    }
                }
            }
            if (cn.mucang.android.core.utils.g.b(arrayList2)) {
                o("上传关键点原始信号日志失败 : 没有找到需要上传的日志");
                return;
            }
            for (final LogEntity logEntity : arrayList2) {
                cn.mucang.android.jiakaoyi.framework.log.k.a.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.k(logEntity, str);
                    }
                });
            }
        } catch (Throwable th2) {
            o("关键点原始日志上传失败:" + q0.d(th2));
        }
    }

    public static void o(Object obj) {
        try {
            A(i.i).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error normal :" + obj + ":" + th);
        }
    }

    public static void p(Object obj) {
        try {
            A(i.r).write(obj, System.currentTimeMillis());
        } catch (Throwable unused) {
        }
    }

    public static void q(Object obj) {
        try {
            A(i.n).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error signal ::" + th);
        }
    }

    public static void r(Object obj) {
        try {
            A(i.l).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error signal ::" + th);
        }
    }

    public static void s(byte[] bArr, String str) {
        try {
            A(i.l).write(bArr, str, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e("LogsTag", "error signal ::" + th);
        }
    }

    public static void t() {
        Iterator<Map.Entry<i, cn.mucang.android.jiakaoyi.framework.log.l.h>> it = f3465a.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().stop();
        }
    }

    public static void u(long j, long j2) {
        if (j <= j2) {
            for (i iVar : i.b()) {
                if (iVar != i.u) {
                    w(iVar, j, j2);
                }
            }
        }
    }

    public static void v(final i iVar) {
        cn.mucang.android.jiakaoyi.framework.log.k.a.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.b
            @Override // java.lang.Runnable
            public final void run() {
                f.m(iVar);
            }
        });
    }

    public static void w(final i iVar, final long j, final long j2) {
        cn.mucang.android.jiakaoyi.framework.log.k.a.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.d
            @Override // java.lang.Runnable
            public final void run() {
                f.l(j, j2, iVar);
            }
        });
    }

    public static void x() throws ApiException, IOException, InternalException, HttpException {
        i[] iVarArrB = i.b();
        if (MucangConfig.v()) {
            Log.e("LogTag", "上传全部");
        }
        for (i iVar : iVarArrB) {
            if (iVar.f3472h) {
                List<LogEntity> listD = cn.mucang.android.jiakaoyi.framework.log.db.a.d(iVar.f3470f);
                if (listD != null) {
                    for (int size = listD.size() - 1; size >= 0; size--) {
                        if (listD.get(size).getId().longValue() == A(iVar).entityId()) {
                            listD.remove(size);
                        }
                    }
                }
                if (cn.mucang.android.core.utils.g.b(listD)) {
                    MucangConfig.v();
                    y(iVar);
                } else {
                    for (LogEntity logEntity : listD) {
                        if (MucangConfig.v()) {
                            Log.e("LogTag", "上传entity : " + logEntity.getFile());
                        }
                        if (logEntity.getId().longValue() != A(iVar).entityId()) {
                            try {
                                cn.mucang.android.jiakaoyi.framework.log.k.b.b(iVar, logEntity);
                            } catch (Throwable th) {
                                if (MucangConfig.v()) {
                                    Log.e("LogTag", logEntity.getFile() + "文件上传失败:" + q0.d(th));
                                }
                                o("文件上传失败 : " + logEntity.getFile() + " , " + q0.d(th));
                            }
                        }
                    }
                }
            }
        }
    }

    private static void y(i iVar) {
        File[] fileArrListFiles;
        File file = new File(g.d(iVar));
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length == 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            try {
                if (file2.exists() && file2.length() != 0) {
                    if (MucangConfig.v()) {
                        Log.e("LogTag", "上传文件 : " + file2.getAbsolutePath());
                    }
                    String strB = A(iVar).b();
                    if (strB == null || !strB.equals(file2.getAbsolutePath())) {
                        LogEntity logEntity = new LogEntity();
                        logEntity.setDirName(iVar.b);
                        logEntity.setTypeName(iVar.f3467a);
                        logEntity.setType(iVar.f3470f);
                        logEntity.setFile(file2.getAbsolutePath());
                        logEntity.setSize(file2.length());
                        logEntity.setState(0);
                        String name = file2.getName();
                        if (name.endsWith(".zip")) {
                            String strReplace = name.replace(".zip", "");
                            logEntity.setStartTime(g.c(strReplace.substring(0, 19)));
                            if (strReplace.length() > 19) {
                                String strReplace2 = strReplace.substring(20).replace(".", "").replace("txt", "");
                                if (n0.g(strReplace2)) {
                                    try {
                                        logEntity.setEndTime(g.c(strReplace2));
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                        } else {
                            if (name.endsWith("." + iVar.f3471g)) {
                                logEntity.setStartTime(g.c(name.replace("." + iVar.f3471g, "")));
                            }
                        }
                        cn.mucang.android.jiakaoyi.framework.log.k.b.b(iVar, logEntity);
                    }
                }
            } catch (Throwable th) {
                if (MucangConfig.v()) {
                    Log.e("LogTag", "文件上传失败:" + q0.d(th));
                }
                o("文件上传失败 : " + file2.getAbsolutePath() + " , " + q0.d(th));
            }
        }
    }

    public static void z(final String str) {
        if (f3465a.isEmpty()) {
            o("上传关键点原始信号日志 : " + str);
            new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.c
                @Override // java.lang.Runnable
                public final void run() {
                    f.n(str);
                }
            }).start();
        }
    }
}
