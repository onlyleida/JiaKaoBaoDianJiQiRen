package cn.mucang.android.jiakaoyi.framework.log.l.i;

import android.util.Log;
import cn.mucang.android.jiakaoyi.framework.log.db.LogEntity;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.log.g;
import cn.mucang.android.jiakaoyi.framework.log.i;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import com.alibaba.fastjson.JSON;

/* JADX INFO: loaded from: classes2.dex */
public class b implements c {
    private void b(LogEntity logEntity, i iVar) {
        if (iVar.f3472h) {
            try {
                cn.mucang.android.jiakaoyi.framework.log.k.b.b(iVar, logEntity);
            } catch (Throwable th) {
                Log.e("LogTag", "上传失败 : " + th);
                f.o("日志上传失败:" + th.getLocalizedMessage() + " ,info=" + JSON.toJSONString(logEntity));
            }
        }
        try {
            f.x();
        } catch (Throwable th2) {
            Log.e("LogTag", "全部日志上传失败 : " + q0.d(th2));
            f.o("上传全部日志失败:" + th2.getLocalizedMessage() + " ,info=" + JSON.toJSONString(logEntity));
        }
        g.a(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(LogEntity logEntity, i iVar) {
        try {
            b(logEntity, iVar);
        } catch (Throwable th) {
            Log.e("LogTag", "stop error : " + th);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.i.c
    public void a(final LogEntity logEntity, final i iVar) {
        cn.mucang.android.jiakaoyi.framework.log.k.a.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.l.i.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f3488a.d(logEntity, iVar);
            }
        });
    }
}
