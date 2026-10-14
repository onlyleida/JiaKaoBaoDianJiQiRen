package cn.mucang.sundial.android.log.write;

import cn.mucang.sundial.android.log.LUtils;
import cn.mucang.sundial.android.log.LogType;
import cn.mucang.sundial.android.log.prefix.WrapOutput;
import cn.mucang.sundial.android.log.write.end.StopWriter;
import com.alibaba.fastjson.JSON;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class LogDirectory implements LogWriter {
    private static final String TAG = "LogDirectory";
    private final StopWriter stopWriter;
    private final LogType type;
    public final WrapOutput wrapOutput;
    private LogFile writer;

    public LogDirectory(LogType logType, StopWriter stopWriter, WrapOutput wrapOutput) {
        this.type = logType;
        this.stopWriter = stopWriter;
        this.wrapOutput = wrapOutput;
    }

    private void doWrite(String str, long j) throws Throwable {
        this.writer.write(str, j);
        if (this.writer.isFull()) {
            this.writer.stop();
            this.stopWriter.onStop(this.writer.entity, this.type);
            this.writer = null;
        }
    }

    private String fileName() {
        String strDir = LUtils.dir(this.type);
        File file = new File(strDir);
        if (!file.exists()) {
            file.mkdirs();
        }
        return strDir + "/" + LUtils.time() + "." + this.type.suffix;
    }

    private void tryInit(long j) throws Throwable {
        if (this.writer == null) {
            LogFile logFile = new LogFile(fileName(), this.type, j);
            this.writer = logFile;
            logFile.write(this.wrapOutput.text(this.type, LUtils.getBasicInfo(), j), j);
        }
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public long entityId() {
        LogFile logFile = this.writer;
        if (logFile == null) {
            return 0L;
        }
        return logFile.entityId();
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void stop() {
        LogFile logFile = this.writer;
        if (logFile == null) {
            return;
        }
        logFile.stop();
        this.stopWriter.onStop(this.writer.entity, this.type);
        this.writer = null;
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void write(byte[] bArr, String str, long j) throws Throwable {
        tryInit(j);
        doWrite(this.wrapOutput.signal(this.type, bArr, str, j), j);
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void write(Object obj, long j) throws Throwable {
        String jSONString;
        tryInit(j);
        if (obj instanceof String) {
            jSONString = (String) obj;
        } else {
            jSONString = JSON.toJSONString(obj);
        }
        doWrite(this.wrapOutput.text(this.type, jSONString, j), j);
    }
}
