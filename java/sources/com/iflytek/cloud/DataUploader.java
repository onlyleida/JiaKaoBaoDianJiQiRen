package com.iflytek.cloud;

import android.content.Context;
import com.iflytek.cloud.a.f.e;
import com.iflytek.cloud.a.g.b;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class DataUploader extends e {
    public DataUploader(Context context) {
        super(context);
    }

    @Override // com.iflytek.cloud.a.f.e
    protected boolean d() {
        return true;
    }

    public int uploadData(SpeechListener speechListener, String str, byte[] bArr) {
        try {
            this.c = new b(this.f12265a, this.mSessionParams, a("upload"));
            ((b) this.c).a(new e.a(speechListener), str, bArr);
            return 0;
        } catch (SpeechError e2) {
            int errorCode = e2.getErrorCode();
            DebugLog.LogE(e2);
            return errorCode;
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return ErrorCode.ERROR_UNKNOWN;
        }
    }
}
