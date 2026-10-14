package cn.mucang.sundial.android.log.write;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.LUtils;
import cn.mucang.sundial.android.log.LogType;
import cn.mucang.sundial.android.log.db.LogDb;
import cn.mucang.sundial.android.log.db.LogEntity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class LogFile implements LogWriter {
    private static final String TAG = "LogFileTag";
    private int currentIndex;
    public final LogEntity entity;
    public final String fileName;
    private final long startTime;
    public final LogType type;
    private FileOutputStream writer;

    public LogFile(String str, LogType logType, long j) throws IOException {
        this.fileName = str;
        this.writer = new FileOutputStream(str);
        this.startTime = j;
        this.type = logType;
        LogEntity logEntityAdd = LogDb.add(logType, str);
        this.entity = logEntityAdd;
        if (logEntityAdd == null) {
            throw new RuntimeException("log开始失败");
        }
    }

    private void update(File file, long j) {
        this.entity.setFile(file.getAbsolutePath());
        this.entity.setEndTime(j);
        this.entity.setSize(file.length());
        this.entity.setState(1);
        LogDb.update(this.entity);
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public long entityId() {
        return this.entity.getId().longValue();
    }

    public boolean isFull() {
        return this.currentIndex >= this.type.size || System.currentTimeMillis() - this.startTime > ((long) this.type.interval);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x005c A[PHI: r2 r5
      0x005c: PHI (r2v6 java.io.File) = (r2v5 java.io.File), (r2v9 java.io.File) binds: [B:15:0x00b2, B:8:0x0053] A[DONT_GENERATE, DONT_INLINE]
      0x005c: PHI (r5v3 long) = (r5v2 long), (r5v5 long) binds: [B:15:0x00b2, B:8:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:576)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:602)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void stop() {
        File file;
        long jCurrentTimeMillis;
        File file2;
        FileOutputStream fileOutputStream = this.writer;
        if (fileOutputStream == null) {
            return;
        }
        try {
            fileOutputStream.flush();
            o.a(this.writer);
            file = new File(this.fileName);
            File parentFile = file.getParentFile();
            jCurrentTimeMillis = System.currentTimeMillis();
            file2 = new File(parentFile, LUtils.time(this.entity.getStartTime()) + "-" + LUtils.time(jCurrentTimeMillis) + ".zip");
            if (LUtils.compressFile(this.fileName, file2.getAbsolutePath())) {
                file.delete();
                update(file2, jCurrentTimeMillis);
            } else {
                update(file, jCurrentTimeMillis);
            }
        } catch (Throwable th) {
            try {
                t.d(TAG, th.getMessage());
                o.a(this.writer);
                file = new File(this.fileName);
                File parentFile2 = file.getParentFile();
                jCurrentTimeMillis = System.currentTimeMillis();
                file2 = new File(parentFile2, LUtils.time(this.entity.getStartTime()) + "-" + LUtils.time(jCurrentTimeMillis) + ".zip");
                if (!LUtils.compressFile(this.fileName, file2.getAbsolutePath())) {
                    update(file, jCurrentTimeMillis);
                }
            } catch (Throwable th2) {
                o.a(this.writer);
                File file3 = new File(this.fileName);
                File parentFile3 = file3.getParentFile();
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                File file4 = new File(parentFile3, LUtils.time(this.entity.getStartTime()) + "-" + LUtils.time(jCurrentTimeMillis2) + ".zip");
                if (LUtils.compressFile(this.fileName, file4.getAbsolutePath())) {
                    file3.delete();
                    update(file4, jCurrentTimeMillis2);
                } else {
                    update(file3, jCurrentTimeMillis2);
                }
                this.writer = null;
                throw th2;
            }
        }
        this.writer = null;
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void write(byte[] bArr, String str, long j) throws Throwable {
        this.writer.write(bArr, 0, bArr.length);
        this.writer.flush();
        this.currentIndex += bArr.length;
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void write(Object obj, long j) throws Throwable {
        if (MucangConfig.v()) {
            t.h("LogFile-" + this.type.dirName, "" + obj);
        }
        if (obj instanceof String) {
            write(((String) obj).getBytes(), null, j);
        }
    }
}
