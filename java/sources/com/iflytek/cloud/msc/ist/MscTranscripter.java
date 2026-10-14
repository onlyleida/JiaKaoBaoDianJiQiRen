package com.iflytek.cloud.msc.ist;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.TranscripterListener;
import com.iflytek.cloud.TranscripterResult;
import com.iflytek.cloud.a.f.a;
import com.iflytek.cloud.a.f.c;
import com.iflytek.cloud.b.b;
import com.iflytek.cloud.msc.util.j;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.record.PcmRecorder;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class MscTranscripter extends a implements PcmRecorder.PcmRecordListener {
    protected static final int MSG_CUSTOM_MIN = 32789;
    private static final int MSG_WAIT_RESULT = 32790;
    private static final int NET_PERF_MSG_DELAY = 500;
    private static final int STATUS_HASRESULT = 0;
    private static final int STATUS_LASTRESULT = 5;
    private static final int STATUS_NORESULT = 2;
    private static final int WAIT_RESULT_PERIOD = 500;
    public static int mDownflow;
    public static int mUpflow;
    private final String KEY_TOTAL_AUDIO;
    private final int SESSION_RETRY_PERIOD;
    private AudioAccessor mAccesser;
    protected int mAudioSource;
    private byte[] mBuffer;
    private SpeechError mError;
    private String mFilePath;
    protected boolean mFirstDataArrival;
    protected boolean mFirstDataWrite;
    protected boolean mFirstRecordAudio;
    private boolean mIsFirstSession;
    private boolean mIsProcRecordDataOn;
    private boolean mIsRecording;
    private boolean mIsRestarting;
    private int mLastMscOffset;
    private int mLastServerOffset;
    protected volatile TranscripterListener mListener;
    private int mMaxSessionTry;
    protected c mPerflog;
    protected PcmRecorder mRecorder;
    private int mResultSecondLeft;
    protected ArrayList<String> mResults;
    protected IstSession mSession;
    private String mSessionID;
    private int mSessionRetryCount;
    private int mSyncID;
    private boolean mUseBluetooth;
    protected boolean mUstopRecord;

    public MscTranscripter(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.mListener = null;
        this.mFirstRecordAudio = false;
        this.mFirstDataWrite = false;
        this.mFirstDataArrival = false;
        this.mUstopRecord = false;
        this.mAudioSource = 1;
        this.mSession = new IstSession();
        this.mRecorder = null;
        this.mResults = null;
        this.mBuffer = null;
        this.mLastMscOffset = 0;
        this.mLastServerOffset = 0;
        this.mResultSecondLeft = -1;
        this.mSessionID = null;
        this.mSyncID = 0;
        this.mFilePath = null;
        this.mAccesser = null;
        this.KEY_TOTAL_AUDIO = "total";
        this.mMaxSessionTry = 1;
        this.SESSION_RETRY_PERIOD = 500;
        this.mIsProcRecordDataOn = false;
        this.mIsRecording = false;
        this.mError = null;
        this.mIsFirstSession = true;
        this.mIsRestarting = false;
        this.mUseBluetooth = false;
        this.mPerflog = new c();
        this.mSessionRetryCount = 0;
        this.mResults = new ArrayList<>();
        this.mUstopRecord = false;
        setParams(aVar);
    }

    private void assertSessionTimes() throws SpeechError {
        if ((!isRecordMode() || (isRecordMode() && !isRecording())) && getMaxSessionTry() != -1 && getMaxSessionTry() <= this.mSessionRetryCount) {
            DebugLog.LogE("proc_Msg_Session_Begin max session try:" + getMaxSessionTry());
            throw new SpeechError(this.mError);
        }
    }

    private void closeAudioFile() throws IOException {
        AudioAccessor audioAccessor = this.mAccesser;
        if (audioAccessor != null) {
            audioAccessor.close();
            this.mAccesser = null;
        }
    }

    private int getAudioData() throws SpeechError, IOException {
        AudioAccessor audioAccessor = this.mAccesser;
        if (audioAccessor != null) {
            return audioAccessor.getAudio(this.mBuffer);
        }
        return 0;
    }

    private long getDataLength() {
        if (this.mAccesser == null) {
            DebugLog.LogE("getDataLength file accesser is null.");
            return -1L;
        }
        DebugLog.LogD("getDataLength len=" + this.mAccesser.getDataLength());
        return this.mAccesser.getDataLength();
    }

    private int getMaxSessionTry() {
        return this.mMaxSessionTry;
    }

    private boolean hasMoreData() {
        DebugLog.LogE("hasMoreData >>> isRecording ? " + isRecording() + " && datalength == " + getDataLength());
        return isRecording() || getDataLength() > ((long) this.mLastMscOffset);
    }

    private boolean isRecordMode() {
        int i = this.mAudioSource;
        return (-1 == i || -2 == i) ? false : true;
    }

    private boolean isRecording() {
        DebugLog.LogE("isRecording:" + this.mIsRecording);
        return this.mIsRecording;
    }

    private boolean isSessionOn() {
        return this.mSession.mClientID != null;
    }

    private void notifyResult(boolean z, byte[] bArr) throws SpeechError, UnsupportedEncodingException {
        String str;
        this.mStatusBegin = SystemClock.elapsedRealtime();
        if (bArr == null || bArr.length <= 0) {
            str = this.mResults.size() <= 0 ? null : "";
        } else {
            str = new String(bArr, "utf-8");
        }
        getSessionID();
        this.mResults.add(str);
        if (this.mListener != null && isRunning()) {
            TranscripterResult transcripterResult = new TranscripterResult(str);
            com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
            this.mListener.onResult(transcripterResult, z);
        }
        DebugLog.LogD("msc result time:" + System.currentTimeMillis());
        if (z) {
            exit(null);
        }
    }

    private void proc_Msg_Record_Stoped() throws InterruptedException, SpeechError, IOException {
        DebugLog.LogD("recording stop");
        releaseRecord();
        this.mPerflog.a("app_lau");
        if (this.mListener != null) {
            this.mListener.onEndOfSpeech();
        }
    }

    private void releaseRecord() {
        PcmRecorder pcmRecorder = this.mRecorder;
        if (pcmRecorder != null) {
            pcmRecorder.stopRecord(getParam().a("record_force_stop", false));
            this.mRecorder = null;
            this.mPerflog.a("rec_close");
            try {
                AudioAccessor audioAccessor = this.mAccesser;
                if (audioAccessor != null) {
                    audioAccessor.flush();
                }
                this.mSessionRetryCount = 0;
                if (this.mUseBluetooth) {
                    stopBluetooth();
                }
            } catch (Exception e2) {
                exit(new SpeechError(e2));
                return;
            }
        }
        this.mIsRecording = false;
    }

    private synchronized void restartSession() throws SpeechError {
        if (this.mIsRestarting) {
            return;
        }
        assertSessionTimes();
        updateUploadBytes();
        updateSessionID();
        updateSyncID();
        this.mSession.sessionEnd("restart");
        this.mLastMscOffset = this.mLastServerOffset;
        this.mSession.mClientID = null;
        if (this.mSessionID != null) {
            getParam().b("sid", this.mSessionID);
            getParam().a(SpeechConstant.IST_AUDIO_UPLOADED, Integer.toString(this.mLastServerOffset), true);
            getParam().a(SpeechConstant.IST_SYNC_ID, Integer.toString(this.mSyncID), true);
        }
        sendMsg(1, a.EnumC0232a.max, false, 0);
        this.mIsRestarting = true;
    }

    private void stopWriteAutio() throws SpeechError {
        this.mSession.pushEndFlag();
        sendMsg(obtainMessage(MSG_WAIT_RESULT, null));
    }

    private void updateCatchLeft() {
        if (isRecordMode() || this.mListener == null || this.mAccesser == null) {
            return;
        }
        this.mListener.onEvent(SpeechEvent.EVENT_IST_CACHE_LEFT, this.mAccesser.getCacheLeft(), 0, null);
    }

    private void updateSessionID() {
        if (this.mSessionID == null) {
            String sessionID = getSessionID();
            this.mSessionID = sessionID;
            if (sessionID == null || this.mListener == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, this.mSessionID);
            this.mListener.onEvent(20001, 0, 0, bundle);
        }
    }

    private void updateSyncID() {
        int intValue = this.mSession.getIntValue(SpeechConstant.IST_SYNC_ID, this.mSyncID);
        DebugLog.LogS("updateSyncID", "syncid=" + intValue);
        if (intValue != this.mSyncID) {
            this.mSyncID = intValue;
            if (this.mListener != null) {
                this.mListener.onEvent(SpeechEvent.EVENT_IST_SYNC_ID, intValue, 0, null);
            }
        }
    }

    private void updateUploadBytes() {
        int intValue = this.mSession.getIntValue(SpeechConstant.IST_AUDIO_UPLOADED, this.mLastServerOffset);
        DebugLog.LogS("updateUploadBytes", "uploadLen=" + intValue);
        if (intValue != this.mLastServerOffset) {
            this.mLastServerOffset = intValue;
            if (this.mListener != null) {
                int dataLength = -1 == getAudioSource() ? (int) getDataLength() : -1;
                boolean z = !isRecording() && getDataLength() == ((long) this.mLastServerOffset);
                Bundle bundle = new Bundle();
                bundle.putBoolean(SpeechEvent.KEY_EVENT_IST_UPLOAD_COMPLETE, z);
                this.mListener.onEvent(10006, intValue, dataLength, bundle);
            }
        }
    }

    public void callbackVolume(byte[] bArr, int i) {
        if (isRunning()) {
            this.mListener.onVolumeChanged(i, bArr);
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    public void cancel(boolean z) {
        if (z && isRunning() && this.mListener != null) {
            this.mListener.onError(new SpeechError(ErrorCode.ERROR_INTERRUPT));
        }
        releaseRecord();
        if (getStatus() == a.b.recording) {
            this.mUstopRecord = true;
        }
        super.cancel(z);
    }

    public String getAudioPath() {
        AudioAccessor audioAccessor = this.mAccesser;
        if (audioAccessor != null) {
            return audioAccessor.getFilePath();
        }
        return null;
    }

    public int getAudioSource() {
        return this.mAudioSource;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return this.mSession.getClientID();
    }

    public c getPerfLog() {
        return this.mPerflog;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        if (TextUtils.isEmpty(this.mSessionID)) {
            this.mSessionID = this.mSession.getSessionID();
        }
        return this.mSessionID;
    }

    public int getSyncID() {
        return this.mSyncID;
    }

    public TranscripterResult getTranscriptResult() throws SpeechError {
        try {
            if (this.mSession.getResultData() != null) {
                return new TranscripterResult(new String(this.mSession.getResultData(), "utf-8"));
            }
            return null;
        } catch (UnsupportedEncodingException e2) {
            DebugLog.LogE(e2);
            throw new SpeechError(ErrorCode.ERROR_INVALID_RESULT);
        }
    }

    public int getUploadBytes() {
        return this.mLastServerOffset;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        DebugLog.LogD("onSessionEnd");
        releaseRecord();
        mUpflow = this.mSession.getIntValue(a.TAG_UPFLOW);
        mDownflow = this.mSession.getIntValue(a.TAG_DOWNFLOW);
        getSessionID();
        updateUploadBytes();
        updateSessionID();
        updateSyncID();
        if (this.mListener != null) {
            Bundle bundle = new Bundle();
            bundle.putString("sid", this.mSessionID);
            bundle.putInt(SpeechConstant.IST_SYNC_ID, this.mSyncID);
            bundle.putInt(SpeechConstant.IST_AUDIO_UPLOADED, this.mLastServerOffset);
            bundle.putInt("total", (int) getDataLength());
            bundle.putString(SpeechConstant.IST_AUDIO_PATH, getAudioPath());
            bundle.putSerializable("error", speechError);
            this.mListener.onEvent(SpeechEvent.EVENT_SESSION_END, 0, 0, bundle);
        }
        try {
            closeAudioFile();
        } catch (Exception e2) {
            if (speechError == null) {
                speechError = new SpeechError(e2);
            }
        }
        if (this.mResults.size() <= 0 && speechError == null && getParam().a(SpeechConstant.ASR_NOMATCH_ERROR, true)) {
            speechError = new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
        }
        if (speechError != null) {
            this.mPerflog.a("app_ret", speechError.getErrorCode(), false);
        } else {
            this.mPerflog.a("app_ret", 0L, false);
        }
        this.mPerflog.a("rec_ustop", this.mUstopRecord ? "1" : "0", false);
        this.mSession.setParam("sessinfo", this.mPerflog.a());
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        if (this.mUserCancel) {
            this.mSession.sessionEnd("user abort");
        } else if (speechError != null) {
            this.mSession.sessionEnd("error" + speechError.getErrorCode());
        } else {
            this.mSession.sessionEnd("success");
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        super.onEnd(speechError);
        if (this.mListener != null) {
            if (this.mUserCancel) {
                DebugLog.LogD("TranscripterListener#onCancel");
                return;
            }
            DebugLog.LogD("TranscripterListener#onEnd");
            if (speechError != null) {
                this.mListener.onError(speechError);
            }
        }
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onError(SpeechError speechError) {
        exit(speechError);
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onMsgProcess(Message message) throws Exception {
        super.onMsgProcess(message);
        if (message.what == 0 || isRunning()) {
            int i = message.what;
            if (i == 7) {
                proc_Msg_Netperf();
                return;
            }
            if (i == 22) {
                requestResult();
                return;
            }
            if (i == MSG_WAIT_RESULT) {
                proc_Msg_Wait_Result();
                return;
            }
            if (i == 0) {
                proc_Msg_Start();
                return;
            }
            if (i == 1) {
                proc_Msg_Session_Begin();
                return;
            }
            if (i == 2) {
                proc_Msg_Record_Data(message);
            } else if (i == 3) {
                proc_Msg_Record_Stoped();
            } else {
                if (i != 4) {
                    return;
                }
                proc_Msg_Result(message);
            }
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onParseParam() {
        this.mAudioSource = getParam().a(SpeechConstant.AUDIO_SOURCE, 1);
        this.mMaxSessionTry = getParam().a(SpeechConstant.IST_SESSION_TRY, this.mMaxSessionTry);
        int iA = getParam().a(SpeechConstant.IST_AUDIO_UPLOADED, 0);
        this.mLastServerOffset = iA;
        this.mLastMscOffset = iA;
        this.mSessionID = getParam().a("sid", (String) null);
        this.mFilePath = new String(getParam().a(SpeechConstant.IST_AUDIO_PATH, b.b));
        this.mSyncID = getParam().a(SpeechConstant.IST_SYNC_ID, 0);
        super.onParseParam();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordBuffer(byte[] bArr, int i, int i2) {
        if (bArr == null || i2 <= 0 || bArr.length < i2 || i2 <= 0 || !isRunning()) {
            return;
        }
        if (!this.mFirstRecordAudio) {
            this.mFirstRecordAudio = true;
            this.mPerflog.a("rec_start");
        }
        try {
            if (this.mAccesser == null) {
                int i3 = this.mAudioSource;
                if (-1 == i3) {
                    this.mAccesser = AudioAccessor.createBufferAccessor();
                } else if (-2 == i3) {
                    this.mAccesser = AudioAccessor.createReadOnlyAccessor(this.mFilePath);
                    getParam().a(SpeechConstant.SAMPLE_RATE, this.mAccesser.getAudioInfo(AudioAccessor.AudioKeys.RATE), false);
                }
            }
            this.mAccesser.putAudio(bArr, i2);
            updateCatchLeft();
            if (this.mIsProcRecordDataOn) {
                return;
            }
            this.mIsProcRecordDataOn = true;
            sendMsg(obtainMessage(2, null));
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            exit(new SpeechError(e2));
        }
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordReleased() {
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordStarted(boolean z) {
        this.mPerflog.a("rec_ready");
        this.mIsRecording = z;
    }

    public void proc_Msg_Netperf() {
        if (isRunning()) {
            int intValue = this.mSession.getIntValue(a.TAG_NETPERF);
            if (this.mListener != null) {
                this.mListener.onEvent(10001, intValue, 0, null);
            }
            sendMsg(7, a.EnumC0232a.normal, false, 500);
        }
    }

    protected void proc_Msg_Record_Data(Message message) throws Exception {
        try {
            int audioData = getAudioData();
            try {
                try {
                    if (isSessionOn()) {
                        byte[] bArr = this.mBuffer;
                        if (bArr != null && audioData > 0) {
                            uploadData(bArr, audioData, false);
                            this.mLastMscOffset += audioData;
                            DebugLog.LogD("LastMscOffset: " + this.mLastMscOffset);
                        }
                        updateUploadBytes();
                        updateSessionID();
                        updateSyncID();
                        updateCatchLeft();
                        sendMsg(obtainMessage(22, null), a.EnumC0232a.normal, false, 100);
                    }
                    if (!hasMoreData()) {
                        if (!isSessionOn()) {
                            return;
                        }
                        stopWriteAutio();
                        return;
                    }
                } catch (SpeechError e2) {
                    this.mError = e2;
                    if (10114 != e2.getErrorCode()) {
                        throw e2;
                    }
                    restartSession();
                    if (!hasMoreData()) {
                        if (!isSessionOn()) {
                            return;
                        }
                    }
                    sendMsg(obtainMessage(2, null));
                }
                sendMsg(obtainMessage(2, null));
            } catch (Throwable th) {
                if (hasMoreData()) {
                    sendMsg(obtainMessage(2, null));
                } else if (isSessionOn()) {
                    stopWriteAutio();
                }
                throw th;
            }
        } catch (IOException e3) {
            DebugLog.LogE(e3);
            throw new SpeechError(10105, "Read file Error" + e3.getLocalizedMessage());
        }
    }

    void proc_Msg_Result(Message message) throws InterruptedException, SpeechError, UnsupportedEncodingException {
        int i = message.arg1;
        byte[] bArr = (byte[]) message.obj;
        if (i == 0) {
            if (!this.mFirstDataArrival) {
                this.mFirstDataArrival = true;
                this.mPerflog.a("app_frs");
            }
            notifyResult(false, bArr);
            return;
        }
        if (i != 5) {
            return;
        }
        if (!this.mFirstDataArrival) {
            this.mFirstDataArrival = true;
            this.mPerflog.a("app_frs");
        }
        this.mPerflog.a("app_lrs");
        notifyResult(true, bArr);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00af  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00bb  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0042, code lost:
    
        if (isRecordMode() != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007b, code lost:
    
        if (isRecordMode() != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007d, code lost:
    
        sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 500);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0083, code lost:
    
        sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0088, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void proc_Msg_Session_Begin() throws java.lang.Exception {
        /*
            r8 = this;
            boolean r0 = r8.isSessionOn()
            if (r0 == 0) goto L7
            return
        L7:
            r8.assertSessionTimes()
            r0 = 10010(0x271a, float:1.4027E-41)
            r1 = 500(0x1f4, float:7.0E-43)
            r2 = 0
            r3 = 1
            r4 = 0
            java.lang.String r5 = "SDKSessionBegin"
            com.iflytek.cloud.msc.util.log.a.a(r5, r2)     // Catch: java.lang.Throwable -> L45 com.iflytek.cloud.SpeechError -> L48
            com.iflytek.cloud.msc.ist.IstSession r5 = r8.mSession     // Catch: java.lang.Throwable -> L45 com.iflytek.cloud.SpeechError -> L48
            android.content.Context r6 = r8.mContext     // Catch: java.lang.Throwable -> L45 com.iflytek.cloud.SpeechError -> L48
            int r5 = r5.sessionBegin(r6, r2, r8)     // Catch: java.lang.Throwable -> L45 com.iflytek.cloud.SpeechError -> L48
            int r6 = r8.mSessionRetryCount
            int r6 = r6 + r3
            r8.mSessionRetryCount = r6
            if (r5 != 0) goto L38
            com.iflytek.cloud.msc.ist.IstSession r5 = r8.mSession
            char[] r5 = r5.mClientID
            if (r5 == 0) goto L38
            r8.mIsRestarting = r4
            boolean r1 = r8.mIsFirstSession
            if (r1 == 0) goto L88
            r8.mIsFirstSession = r4
            com.iflytek.cloud.TranscripterListener r1 = r8.mListener
            if (r1 == 0) goto L88
            goto L6b
        L38:
            boolean r0 = r8.isRunning()
            if (r0 == 0) goto L88
            boolean r0 = r8.isRecordMode()
            if (r0 == 0) goto L83
            goto L7d
        L45:
            r5 = move-exception
            r6 = 0
            goto L8a
        L48:
            r5 = move-exception
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L45
            int r6 = r5.getErrorCode()     // Catch: java.lang.Throwable -> L45
            r8.mError = r5     // Catch: java.lang.Throwable -> L89
            int r5 = r8.mSessionRetryCount
            int r5 = r5 + r3
            r8.mSessionRetryCount = r5
            if (r6 != 0) goto L71
            com.iflytek.cloud.msc.ist.IstSession r5 = r8.mSession
            char[] r5 = r5.mClientID
            if (r5 == 0) goto L71
            r8.mIsRestarting = r4
            boolean r1 = r8.mIsFirstSession
            if (r1 == 0) goto L88
            r8.mIsFirstSession = r4
            com.iflytek.cloud.TranscripterListener r1 = r8.mListener
            if (r1 == 0) goto L88
        L6b:
            com.iflytek.cloud.TranscripterListener r1 = r8.mListener
            r1.onEvent(r0, r4, r4, r2)
            goto L88
        L71:
            boolean r0 = r8.isRunning()
            if (r0 == 0) goto L88
            boolean r0 = r8.isRecordMode()
            if (r0 == 0) goto L83
        L7d:
            com.iflytek.cloud.a.f.a$a r0 = com.iflytek.cloud.a.f.a.EnumC0232a.normal
            r8.sendMsg(r3, r0, r4, r1)
            goto L88
        L83:
            com.iflytek.cloud.a.f.a$a r0 = com.iflytek.cloud.a.f.a.EnumC0232a.max
            r8.sendMsg(r3, r0, r4, r4)
        L88:
            return
        L89:
            r5 = move-exception
        L8a:
            int r7 = r8.mSessionRetryCount
            int r7 = r7 + r3
            r8.mSessionRetryCount = r7
            if (r6 != 0) goto La9
            com.iflytek.cloud.msc.ist.IstSession r6 = r8.mSession
            char[] r6 = r6.mClientID
            if (r6 == 0) goto La9
            r8.mIsRestarting = r4
            boolean r1 = r8.mIsFirstSession
            if (r1 == 0) goto Lc0
            r8.mIsFirstSession = r4
            com.iflytek.cloud.TranscripterListener r1 = r8.mListener
            if (r1 == 0) goto Lc0
            com.iflytek.cloud.TranscripterListener r1 = r8.mListener
            r1.onEvent(r0, r4, r4, r2)
            goto Lc0
        La9:
            boolean r0 = r8.isRunning()
            if (r0 == 0) goto Lc0
            boolean r0 = r8.isRecordMode()
            if (r0 == 0) goto Lbb
            com.iflytek.cloud.a.f.a$a r0 = com.iflytek.cloud.a.f.a.EnumC0232a.normal
            r8.sendMsg(r3, r0, r4, r1)
            goto Lc0
        Lbb:
            com.iflytek.cloud.a.f.a$a r0 = com.iflytek.cloud.a.f.a.EnumC0232a.max
            r8.sendMsg(r3, r0, r4, r4)
        Lc0:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.msc.ist.MscTranscripter.proc_Msg_Session_Begin():void");
    }

    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("start connecting");
        if (SpeechConstant.TYPE_CLOUD.equals(getParam().a(SpeechConstant.ENGINE_TYPE)) && (-1 == getAudioSource() || -2 == getAudioSource())) {
            j.a(this.mContext);
        }
        int iA = getParam().a("record_read_rate", 40);
        int i = this.mAudioSource;
        if (-1 == i) {
            this.mAccesser = AudioAccessor.createBufferAccessor();
        } else if (-2 == i) {
            this.mAccesser = AudioAccessor.createReadOnlyAccessor(this.mFilePath);
            getParam().a(SpeechConstant.SAMPLE_RATE, this.mAccesser.getAudioInfo(AudioAccessor.AudioKeys.RATE), false);
        } else {
            this.mAccesser = AudioAccessor.createWriteReadAccessor(this.mFilePath, this.mSampleRate);
            if (this.mListener != null) {
                Bundle bundle = new Bundle();
                bundle.putString(SpeechConstant.IST_AUDIO_PATH, this.mAccesser.getFilePath());
                this.mListener.onEvent(10004, 0, 0, bundle);
            }
        }
        this.mBuffer = new byte[this.mAccesser.getBufferLength()];
        if (this.mAudioSource >= 0 && isRunning()) {
            DebugLog.LogD("start  record");
            boolean zA = getParam().a(SpeechConstant.BLUETOOTH, this.mUseBluetooth);
            this.mUseBluetooth = zA;
            if (zA) {
                startBluetooth();
            }
            this.mRecorder = new PcmRecorder(getSampleRate(), iA, this.mAudioSource);
            this.mPerflog.a("rec_open");
            this.mRecorder.startRecording(this);
            if (this.mListener != null) {
                this.mListener.onBeginOfSpeech();
            }
        }
        this.mPerflog.a("app_ssb");
        sendMsg(1, a.EnumC0232a.max, false, 0);
        this.mIsRecording = true;
    }

    protected void proc_Msg_Wait_Result() throws Exception {
        updateUploadBytes();
        updateSessionID();
        updateSyncID();
        int intValue = this.mSession.getIntValue(b.f12289a, -1);
        DebugLog.LogD("onWaiting msc waitTime=" + intValue);
        if (intValue >= 0 && intValue != this.mResultSecondLeft) {
            this.mStatusBegin = System.currentTimeMillis();
            this.mResultSecondLeft = intValue;
            if (this.mListener != null) {
                this.mListener.onEvent(SpeechEvent.EVENT_IST_RESULT_TIME, intValue / 1000, 0, null);
            }
        }
        com.iflytek.cloud.a.f.b.a aVarRequestResult = com.iflytek.cloud.a.f.b.a.noResult;
        try {
            aVarRequestResult = requestResult();
        } catch (SpeechError e2) {
            if (10114 != e2.getErrorCode()) {
                throw e2;
            }
            restartSession();
        }
        int i = this.mResultSecondLeft;
        if (i >= 0 || com.iflytek.cloud.a.f.b.a.noResult != aVarRequestResult) {
            a.timeOutCheck(this.mStatusBegin, i + this.mNetTimeOut);
        }
        sendMsg(MSG_WAIT_RESULT, a.EnumC0232a.max, false, 500);
    }

    protected com.iflytek.cloud.a.f.b.a requestResult() throws SpeechError, UnsupportedEncodingException {
        com.iflytek.cloud.a.f.b.a status = this.mSession.getStatus();
        byte[] bytes = (com.iflytek.cloud.a.f.b.a.noResult == status || this.mSession.getResultData() == null || this.mSession.getResultData().length <= 0) ? null : new String(this.mSession.getResultData(), "gb2312").getBytes("utf-8");
        DebugLog.LogD("result:" + bytes);
        Message messageObtainMessage = obtainMessage(4, status.ordinal(), 0, bytes);
        if (hasMessages(4)) {
            sendMsg(messageObtainMessage, a.EnumC0232a.normal, false, 0);
        } else {
            sendMsg(messageObtainMessage, a.EnumC0232a.max, false, 0);
        }
        return status;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void start() {
        this.mPerflog.a(getParam());
        super.start();
    }

    public synchronized void startTranscripting(TranscripterListener transcripterListener) {
        this.mListener = transcripterListener;
        DebugLog.LogD("startTranscripting called");
        start();
    }

    public synchronized boolean stopTranscripting(boolean z) {
        DebugLog.LogD("stopTranscript, current status is :" + getStatus() + " usercancel : " + z);
        this.mPerflog.a("app_stop");
        releaseRecord();
        this.mUstopRecord = z;
        sendMsg(3);
        return true;
    }

    protected void uploadData(byte[] bArr, int i, boolean z) throws SpeechError {
        if (!this.mFirstDataWrite) {
            this.mFirstDataWrite = true;
            this.mPerflog.a("app_fau");
        }
        this.mSession.pushAudioData(bArr, i);
        if (z) {
            int audioVolume = this.mSession.getAudioVolume();
            DebugLog.LogI("QISRAudioWrite volume:" + audioVolume);
            callbackVolume(bArr, audioVolume);
        }
    }
}
