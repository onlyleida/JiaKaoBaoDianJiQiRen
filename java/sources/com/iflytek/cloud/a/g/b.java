package com.iflytek.cloud.a.g;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechListener;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class b extends com.iflytek.cloud.a.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SpeechListener f12270a;
    private com.iflytek.cloud.a.g.a b;
    private String c;

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[] f12271a;
        private String b;

        public a(byte[] bArr, String str) {
            this.f12271a = null;
            this.b = "";
            this.f12271a = bArr;
            this.b = str;
        }

        public String a() {
            return this.b;
        }

        public byte[] b() {
            return this.f12271a;
        }
    }

    public b(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.f12270a = null;
        this.b = new com.iflytek.cloud.a.g.a();
        this.c = null;
        setParams(aVar);
    }

    public void a(SpeechListener speechListener) {
        this.f12270a = speechListener;
        sendMsg(11);
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return null;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        return null;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        super.onEnd(speechError);
        if (this.f12270a == null || this.mUserCancel) {
            return;
        }
        this.f12270a.onCompleted(speechError);
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onMsgProcess(Message message) throws Throwable {
        byte[] bArrA;
        super.onMsgProcess(message);
        if (SpeechUtility.getUtility() == null) {
            DebugLog.LogE("MscCommon process while utility is null!");
            exit(new SpeechError(ErrorCode.ERROR_LOGIN));
            return;
        }
        switch (message.what) {
            case 10:
                a aVar = (a) message.obj;
                if (aVar.b() == null || aVar.b().length <= 0) {
                    throw new SpeechError(ErrorCode.ERROR_EMPTY_UTTERANCE);
                }
                bArrA = this.b.a(this.mContext, aVar.a(), aVar.b(), this);
                break;
            case 11:
                bArrA = this.b.a(this.mContext, this);
                break;
            case 12:
                String str = (String) message.obj;
                if (TextUtils.isEmpty(str)) {
                    throw new SpeechError(ErrorCode.ERROR_EMPTY_UTTERANCE);
                }
                setStatus(com.iflytek.cloud.a.f.a.b.waitresult);
                bArrA = this.b.a(this.mContext, this, str);
                break;
            default:
                bArrA = null;
                break;
        }
        if (bArrA == null) {
            throw new SpeechError(ErrorCode.ERROR_INVALID_RESULT);
        }
        if (this.f12270a != null && !this.mUserCancel) {
            this.f12270a.onBufferReceived(bArrA);
        }
        exit(null);
    }

    public void a(SpeechListener speechListener, String str) {
        setStatus(com.iflytek.cloud.a.f.a.b.start);
        this.c = "sch";
        this.f12270a = speechListener;
        sendMsg(obtainMessage(12, str));
    }

    public b(Context context, com.iflytek.cloud.b.a aVar) {
        super(context);
        this.f12270a = null;
        this.b = new com.iflytek.cloud.a.g.a();
        this.c = null;
        setParams(aVar);
    }

    public void a(SpeechListener speechListener, String str, byte[] bArr) {
        this.c = "uup";
        this.f12270a = speechListener;
        sendMsg(obtainMessage(10, new a(bArr, str)));
    }

    public SpeechError a(String str, String str2) {
        SpeechError e2;
        this.c = "auth";
        try {
            com.iflytek.cloud.a.g.a.a(this.mContext, str, str2, this);
            e2 = null;
        } catch (SpeechError e3) {
            e2 = e3;
            DebugLog.LogE(e2);
            DebugLog.LogD(getTag() + " occur Error = " + e2.toString());
        } catch (IOException e4) {
            DebugLog.LogE(e4);
            e2 = new SpeechError(ErrorCode.ERROR_FILE_ACCESS);
            DebugLog.LogD(getTag() + " occur Error = " + e2.toString());
        } catch (Exception e5) {
            DebugLog.LogE(e5);
            e2 = new SpeechError(21003);
            DebugLog.LogD(getTag() + " occur Error = " + e2.toString());
        }
        return e2;
    }
}
