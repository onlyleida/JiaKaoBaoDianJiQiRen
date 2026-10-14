package cn.mucang.sundial.android.log.write.end;

import android.util.Log;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.log.LUtils;
import cn.mucang.sundial.android.log.LogType;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.log.db.LogDb;
import cn.mucang.sundial.android.log.db.LogEntity;
import cn.mucang.sundial.android.log.upload.UploadLogApi;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultStopWriter implements StopWriter {
    private static final ExecutorService uploadExe = Executors.newSingleThreadExecutor();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(LogEntity logEntity, LogType logType, CountDownLatch countDownLatch) {
        try {
            doStop(logEntity, logType);
        } catch (Throwable th) {
            try {
                Log.e("StopWriter", "stop error : " + th);
            } finally {
                countDownLatch.countDown();
            }
        }
    }

    private void doStop(LogEntity logEntity, LogType logType) {
        File file = new File(logEntity.getFile());
        if (file.length() <= 0) {
            LogDb.delete(logEntity);
            file.delete();
            SundialLog.normal("日志文件不存在 ,info=" + JSON.toJSONString(logEntity));
        } else if (logType.realTimeUpload) {
            try {
                UploadLogApi.upload(logType, logEntity);
                SundialLog.uploadAll();
            } catch (Throwable th) {
                Log.e("StopWriter", "上传失败 : " + th);
                SundialLog.normal("日志上传失败:" + th.getLocalizedMessage() + " ,info=" + JSON.toJSONString(logEntity));
            }
        }
        LUtils.checkInValid(logType);
    }

    @Override // cn.mucang.sundial.android.log.write.end.StopWriter
    public void onStop(final LogEntity logEntity, final LogType logType) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        uploadExe.execute(new Runnable() { // from class: cn.mucang.sundial.android.log.write.end.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f10359a.b(logEntity, logType, countDownLatch);
            }
        });
        if (u.b()) {
            return;
        }
        try {
            countDownLatch.await();
        } catch (Throwable th) {
            Log.e("StopWriter", "stop error : " + th);
        }
    }
}
