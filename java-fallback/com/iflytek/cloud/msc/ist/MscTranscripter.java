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

    static {
    }

    public MscTranscripter(Context r3, com.iflytek.cloud.b.a r4, HandlerThread r5) {
        super(r3, r5);
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
        this.mResults = new ArrayList();
        this.mUstopRecord = false;
        setParams(r4);
    }

    private void assertSessionTimes() throws SpeechError {
        if (isRecordMode() == false) goto L9;
        if (isRecordMode() == true) goto L7;
        return;
    L7:
        if (isRecording() == false) goto L9;
        return;
    L9:
        if (getMaxSessionTry() != (-1)) goto L11;
        return;
    L11:
        if (getMaxSessionTry() > this.mSessionRetryCount) goto L18;
        DebugLog.LogE("proc_Msg_Session_Begin max session try:" + getMaxSessionTry());
        throw new SpeechError(this.mError);
    }

    private void closeAudioFile() throws IOException {
        AudioAccessor r0 = this.mAccesser;
        if (r0 == null) goto L6;
        r0.close();
        this.mAccesser = null;
        return;
    }

    private int getAudioData() throws SpeechError, IOException {
        AudioAccessor r0 = this.mAccesser;
        if (r0 != null) goto L5;
        return 0;
    L5:
        return r0.getAudio(this.mBuffer);
    }

    private long getDataLength() {
        if (this.mAccesser == null) goto L6;
        DebugLog.LogD("getDataLength len=" + this.mAccesser.getDataLength());
        return this.mAccesser.getDataLength();
    L6:
        DebugLog.LogE("getDataLength file accesser is null.");
        return -1;
    }

    private int getMaxSessionTry() {
        return this.mMaxSessionTry;
    }

    private boolean hasMoreData() {
        DebugLog.LogE("hasMoreData >>> isRecording ? " + isRecording() + " && datalength == " + getDataLength());
        if (isRecording() == false) goto L5;
    L8:
        return true;
    L5:
        if (getDataLength() > this.mLastMscOffset) goto L8;
        return false;
    }

    private boolean isRecordMode() {
        int r0 = this.mAudioSource;
        if ((-1) != r0) goto L5;
    L7:
        return false;
    L5:
        if ((-2) == r0) goto L7;
        return true;
    }

    private boolean isRecording() {
        DebugLog.LogE("isRecording:" + this.mIsRecording);
        return this.mIsRecording;
    }

    private boolean isSessionOn() {
        if (this.mSession.mClientID == null) goto L5;
        return true;
    L5:
        return false;
    }

    private void notifyResult(boolean r4, byte[] r5) throws SpeechError, UnsupportedEncodingException {
        this.mStatusBegin = SystemClock.elapsedRealtime();
        if (r5 == null) goto L8;
        if (r5.length <= 0) goto L8;
        String r1 = new String(r5, "utf-8");
    L11:
        getSessionID();
        this.mResults.add(r1);
        if (this.mListener != null) goto L14;
    L16:
        DebugLog.LogD("msc result time:" + System.currentTimeMillis());
        if (r4 == false) goto L20;
        exit(null);
        return;
    L20:
        return;
    L14:
        if (isRunning() == false) goto L16;
        TranscripterResult r6 = new TranscripterResult(r1);
        com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
        this.mListener.onResult(r6, r4);
    L8:
        if (this.mResults.size() > 0) goto L10;
        r1 = null;
        goto L11
    L10:
        r1 = "";
        goto L11
    }

    private void proc_Msg_Record_Stoped() throws SpeechError, IOException, InterruptedException {
        DebugLog.LogD("recording stop");
        releaseRecord();
        this.mPerflog.a("app_lau");
        if (this.mListener == null) goto L6;
        this.mListener.onEndOfSpeech();
        return;
    }

    private void releaseRecord() {
        PcmRecorder r0 = this.mRecorder;
        if (r0 == null) goto L14;
        r0.stopRecord(getParam().a("record_force_stop", false));
        this.mRecorder = null;
        this.mPerflog.a("rec_close");
        AudioAccessor r1 = this.mAccesser;     // Catch: Exception -> L11
        if (r1 == null) goto L8;
        r1.flush();     // Catch: Exception -> L11
    L8:
        this.mSessionRetryCount = 0;
        if (this.mUseBluetooth == false) goto L14;
        stopBluetooth();
    L11:
        e = move-exception;
        exit(new SpeechError(e));
        return;
    L14:
        this.mIsRecording = false;
    }

    private synchronized void restartSession() throws SpeechError {
        monitor-enter(this);
    L13:
        th = move-exception;
        throw th;
    L4:
        if (this.mIsRestarting == false) goto L7;
        monitor-exit(this);
        return;
    L7:
        assertSessionTimes();     // Catch: Throwable -> L13
        updateUploadBytes();     // Catch: Throwable -> L13
        updateSessionID();     // Catch: Throwable -> L13
        updateSyncID();     // Catch: Throwable -> L13
        this.mSession.sessionEnd("restart");     // Catch: Throwable -> L13
        this.mLastMscOffset = this.mLastServerOffset;     // Catch: Throwable -> L13
        this.mSession.mClientID = null;     // Catch: Throwable -> L13
        if (this.mSessionID == null) goto L10;
        getParam().b("sid", this.mSessionID);     // Catch: Throwable -> L13
        getParam().a(SpeechConstant.IST_AUDIO_UPLOADED, Integer.toString(this.mLastServerOffset), true);     // Catch: Throwable -> L13
        getParam().a(SpeechConstant.IST_SYNC_ID, Integer.toString(this.mSyncID), true);     // Catch: Throwable -> L13
    L10:
        sendMsg(1, a.EnumC0240a.f12252a, false, 0);     // Catch: Throwable -> L13
        this.mIsRestarting = true;     // Catch: Throwable -> L13
        monitor-exit(this);
    }

    private void stopWriteAutio() throws SpeechError {
        this.mSession.pushEndFlag();
        sendMsg(obtainMessage(MSG_WAIT_RESULT, null));
    }

    private void updateCatchLeft() {
        if (isRecordMode() == false) goto L5;
        return;
    L5:
        if (this.mListener != null) goto L7;
        return;
    L7:
        if (this.mAccesser == null) goto L12;
        this.mListener.onEvent(SpeechEvent.EVENT_IST_CACHE_LEFT, this.mAccesser.getCacheLeft(), 0, null);
        return;
    }

    private void updateSessionID() {
        if (this.mSessionID != null) goto L10;
        String r0 = getSessionID();
        this.mSessionID = r0;
        if (r0 != null) goto L7;
        return;
    L7:
        if (this.mListener == null) goto L12;
        Bundle r1 = new Bundle();
        r1.putString(SpeechEvent.KEY_EVENT_SESSION_ID, this.mSessionID);
        this.mListener.onEvent(20001, 0, 0, r1);
        return;
    L12:
        return;
    }

    private void updateSyncID() {
        int r0 = this.mSession.getIntValue(SpeechConstant.IST_SYNC_ID, this.mSyncID);
        DebugLog.LogS("updateSyncID", "syncid=" + r0);
        if (r0 == this.mSyncID) goto L8;
        this.mSyncID = r0;
        if (this.mListener == null) goto L9;
        this.mListener.onEvent(SpeechEvent.EVENT_IST_SYNC_ID, r0, 0, null);
        return;
    L9:
        return;
    }

    private void updateUploadBytes() {
        int r0 = this.mSession.getIntValue(SpeechConstant.IST_AUDIO_UPLOADED, this.mLastServerOffset);
        DebugLog.LogS("updateUploadBytes", "uploadLen=" + r0);
        if (r0 == this.mLastServerOffset) goto L17;
        this.mLastServerOffset = r0;
        if (this.mListener == null) goto L18;
        int r2 = -1;
        if ((-1) != getAudioSource()) goto L10;
        r2 = (int) getDataLength();
    L10:
        if (isRecording() == false) goto L12;
    L14:
        boolean r1 = false;
    L15:
        Bundle r3 = new Bundle();
        r3.putBoolean(SpeechEvent.KEY_EVENT_IST_UPLOAD_COMPLETE, r1);
        this.mListener.onEvent(10006, r0, r2, r3);
        return;
    L12:
        if (getDataLength() != this.mLastServerOffset) goto L14;
        r1 = true;
        goto L15
    L18:
        return;
    }

    public void callbackVolume(byte[] r2, int r3) {
        if (isRunning() == false) goto L6;
        this.mListener.onVolumeChanged(r3, r2);
        return;
    }

    @Override // com.iflytek.cloud.a.f.a
    public void cancel(boolean r4) {
        if (r4 == true) goto L4;
    L8:
        releaseRecord();
        if (getStatus() != a.b.c) goto L11;
        this.mUstopRecord = true;
    L11:
        super.cancel(r4);
        return;
    L4:
        if (isRunning() == false) goto L8;
        if (this.mListener == null) goto L8;
        this.mListener.onError(new SpeechError(ErrorCode.ERROR_INTERRUPT));
        goto L8
    }

    public String getAudioPath() {
        AudioAccessor r0 = this.mAccesser;
        if (r0 != null) goto L5;
        return null;
    L5:
        return r0.getFilePath();
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
        if (TextUtils.isEmpty(this.mSessionID) == false) goto L6;
        this.mSessionID = this.mSession.getSessionID();
    L6:
        return this.mSessionID;
    }

    public int getSyncID() {
        return this.mSyncID;
    }

    public TranscripterResult getTranscriptResult() throws SpeechError {
    L8:
        e = move-exception;
        DebugLog.LogE(e);
        throw new SpeechError(ErrorCode.ERROR_INVALID_RESULT);
    L3:
        if (this.mSession.getResultData() == null) goto L6;
        return new TranscripterResult(new String(this.mSession.getResultData(), "utf-8"));
    L6:
        return null;
    }

    public int getUploadBytes() {
        return this.mLastServerOffset;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError r7) {
        DebugLog.LogD("onSessionEnd");
        releaseRecord();
        mUpflow = this.mSession.getIntValue(a.TAG_UPFLOW);
        mDownflow = this.mSession.getIntValue(a.TAG_DOWNFLOW);
        getSessionID();
        updateUploadBytes();
        updateSessionID();
        updateSyncID();
        if (this.mListener == null) goto L39;
        Bundle r0 = new Bundle();
        r0.putString("sid", this.mSessionID);
        r0.putInt(SpeechConstant.IST_SYNC_ID, this.mSyncID);
        r0.putInt(SpeechConstant.IST_AUDIO_UPLOADED, this.mLastServerOffset);
        r0.putInt("total", (int) getDataLength());
        r0.putString(SpeechConstant.IST_AUDIO_PATH, getAudioPath());
        r0.putSerializable("error", r7);
        this.mListener.onEvent(SpeechEvent.EVENT_SESSION_END, 0, 0, r0);
    L39:
        closeAudioFile();     // Catch: Exception -> L7
    L11:
        if (this.mResults.size() > 0) goto L17;
        if (r7 != null) goto L17;
        if (getParam().a(SpeechConstant.ASR_NOMATCH_ERROR, true) == false) goto L17;
        r7 = new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
    L17:
        if (r7 == null) goto L19;
        this.mPerflog.a("app_ret", r7.getErrorCode(), false);
    L20:
        c r1 = this.mPerflog;
        if (this.mUstopRecord == false) goto L23;
        String r3 = "1";
    L24:
        r1.a("rec_ustop", r3, false);
        this.mSession.setParam("sessinfo", this.mPerflog.a());
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        if (this.mUserCancel == false) goto L27;
        this.mSession.sessionEnd("user abort");
    L30:
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        super.onEnd(r7);
        if (this.mListener != null) goto L33;
        return;
    L33:
        if (this.mUserCancel == false) goto L35;
        DebugLog.LogD("TranscripterListener#onCancel");
        return;
    L35:
        DebugLog.LogD("TranscripterListener#onEnd");
        if (r7 == null) goto L43;
        this.mListener.onError(r7);
        return;
    L43:
        return;
    L27:
        if (r7 == null) goto L29;
        this.mSession.sessionEnd("error" + r7.getErrorCode());
        goto L30
    L29:
        this.mSession.sessionEnd("success");
        goto L30
    L23:
        r3 = "0";
        goto L24
    L19:
        this.mPerflog.a("app_ret", 0, false);
    L7:
        e = move-exception;
        if (r7 != null) goto L11;
        r7 = new SpeechError(e);
        goto L11
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onError(SpeechError r1) {
        exit(r1);
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onMsgProcess(Message r3) throws Throwable, SpeechError {
        super.onMsgProcess(r3);
        if (r3.what != 0) goto L5;
    L7:
        int r0 = r3.what;
        if (r0 != 7) goto L10;
        proc_Msg_Netperf();
        return;
    L10:
        if (r0 != 22) goto L12;
        requestResult();
        return;
    L12:
        if (r0 == MSG_WAIT_RESULT) goto L28;
        if (r0 != 0) goto L15;
        proc_Msg_Start();
        return;
    L15:
        if (r0 != 1) goto L17;
        proc_Msg_Session_Begin();
        return;
    L17:
        if (r0 != 2) goto L19;
        proc_Msg_Record_Data(r3);
        return;
    L19:
        if (r0 != 3) goto L21;
        proc_Msg_Record_Stoped();
        return;
    L21:
        if (r0 != 4) goto L39;
        proc_Msg_Result(r3);
        return;
    L39:
        return;
    L28:
        proc_Msg_Wait_Result();
        return;
    L5:
        if (isRunning() == true) goto L7;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onParseParam() {
        this.mAudioSource = getParam().a(SpeechConstant.AUDIO_SOURCE, 1);
        this.mMaxSessionTry = getParam().a(SpeechConstant.IST_SESSION_TRY, this.mMaxSessionTry);
        int r0 = getParam().a(SpeechConstant.IST_AUDIO_UPLOADED, 0);
        this.mLastServerOffset = r0;
        this.mLastMscOffset = r0;
        this.mSessionID = getParam().a("sid", null);
        this.mFilePath = new String(getParam().a(SpeechConstant.IST_AUDIO_PATH, b.b));
        this.mSyncID = getParam().a(SpeechConstant.IST_SYNC_ID, 0);
        super.onParseParam();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordBuffer(byte[] r5, int r6, int r7) {
        if (r5 == null) goto L32;
        if (r7 > 0) goto L5;
        return;
    L5:
        if (r5.length < r7) goto L38;
        if (r7 > 0) goto L9;
        return;
    L9:
        if (isRunning() == true) goto L11;
        return;
    L11:
        if (this.mFirstRecordAudio == true) goto L30;
        this.mFirstRecordAudio = true;
        this.mPerflog.a("rec_start");
    L30:
    L27:
        e = move-exception;
        DebugLog.LogE(e);
        exit(new SpeechError(e));
        return;
    L14:
        if (this.mAccesser != null) goto L23;
        int r1 = this.mAudioSource;     // Catch: Exception -> L27
        if ((-1) != r1) goto L19;
        this.mAccesser = AudioAccessor.createBufferAccessor();     // Catch: Exception -> L27
        goto L23
    L19:
        if ((-2) != r1) goto L23;
        this.mAccesser = AudioAccessor.createReadOnlyAccessor(this.mFilePath);     // Catch: Exception -> L27
        com.iflytek.cloud.b.a r8 = getParam();     // Catch: Exception -> L27
        r8.a(SpeechConstant.SAMPLE_RATE, this.mAccesser.getAudioInfo(AudioAccessor.AudioKeys.RATE), false);     // Catch: Exception -> L27
    L23:
        this.mAccesser.putAudio(r5, r7);     // Catch: Exception -> L27
        updateCatchLeft();
        if (this.mIsProcRecordDataOn == true) goto L36;
        this.mIsProcRecordDataOn = true;
        sendMsg(obtainMessage(2, null));
        return;
    L36:
        return;
    L38:
        return;
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordReleased() {
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordStarted(boolean r3) {
        this.mPerflog.a("rec_ready");
        this.mIsRecording = r3;
    }

    public void proc_Msg_Netperf() {
        if (isRunning() == false) goto L9;
        int r0 = this.mSession.getIntValue(a.TAG_NETPERF);
        if (this.mListener == null) goto L7;
        this.mListener.onEvent(10001, r0, 0, null);
    L7:
        sendMsg(7, a.EnumC0240a.b, false, 500);
        return;
    }

    protected void proc_Msg_Record_Data(Message r6) throws Exception {
        int r7 = getAudioData();     // Catch: IOException -> L38
    L19:
        e = move-exception;
        this.mError = e;     // Catch: Throwable -> L17
        if (10114 != e.getErrorCode()) goto L30;
        restartSession();     // Catch: Throwable -> L17
        if (hasMoreData() == false) goto L27;
    L25:
        sendMsg(obtainMessage(2, null));
        return;
    L27:
        if (isSessionOn() == false) goto L47;
    L28:
        stopWriteAutio();
        return;
    L47:
        return;
    L30:
        throw e;     // Catch: Throwable -> L17
    L17:
        th = move-exception;
        if (hasMoreData() == false) goto L34;
        sendMsg(obtainMessage(2, null));
    L37:
        throw th;
    L34:
        if (isSessionOn() == false) goto L37;
        stopWriteAutio();
        goto L37
    L5:
        if (isSessionOn() == false) goto L12;
        byte[] r2 = this.mBuffer;     // Catch: Throwable -> L17 SpeechError -> L19
        if (r2 == null) goto L10;
        if (r7 <= 0) goto L10;
        uploadData(r2, r7, false);     // Catch: Throwable -> L17 SpeechError -> L19
        this.mLastMscOffset += r7;     // Catch: Throwable -> L17 SpeechError -> L19
        DebugLog.LogD("LastMscOffset: " + this.mLastMscOffset);     // Catch: Throwable -> L17 SpeechError -> L19
    L10:
        updateUploadBytes();     // Catch: Throwable -> L17 SpeechError -> L19
        updateSessionID();     // Catch: Throwable -> L17 SpeechError -> L19
        updateSyncID();     // Catch: Throwable -> L17 SpeechError -> L19
        updateCatchLeft();     // Catch: Throwable -> L17 SpeechError -> L19
        sendMsg(obtainMessage(22, null), a.EnumC0240a.b, false, 100);     // Catch: Throwable -> L17 SpeechError -> L19
    L12:
        if (hasMoreData() == true) goto L25;
        if (isSessionOn() == true) goto L28;
        return;
    L38:
        e = move-exception;
        DebugLog.LogE(e);
        throw new SpeechError(10105, "Read file Error" + e.getLocalizedMessage());
    }

    void proc_Msg_Result(Message r5) throws SpeechError, InterruptedException, UnsupportedEncodingException {
        int r0 = r5.arg1;
        byte[] r6 = (byte[]) r5.obj;
        if (r0 == 0) goto L12;
        if (r0 == 5) goto L8;
        return;
    L8:
        if (this.mFirstDataArrival == true) goto L10;
        this.mFirstDataArrival = true;
        this.mPerflog.a("app_frs");
    L10:
        this.mPerflog.a("app_lrs");
        notifyResult(true, r6);
        return;
    L12:
        if (this.mFirstDataArrival == true) goto L14;
        this.mFirstDataArrival = true;
        this.mPerflog.a("app_frs");
    L14:
        notifyResult(false, r6);
    }

    protected void proc_Msg_Session_Begin() throws Exception {
        if (isSessionOn() == false) goto L5;
        return;
    L5:
        assertSessionTimes();
        com.iflytek.cloud.msc.util.log.a.a("SDKSessionBegin", null);     // Catch: Throwable -> L21 SpeechError -> L23
        int r5 = this.mSession.sessionBegin(this.mContext, null, this);     // Catch: Throwable -> L21 SpeechError -> L23
        this.mSessionRetryCount++;
        if (r5 != 0) goto L17;
        if (this.mSession.mClientID == null) goto L17;
        this.mIsRestarting = false;
        if (this.mIsFirstSession == false) goto L64;
        this.mIsFirstSession = false;
        if (this.mListener == null) goto L65;
    L34:
        this.mListener.onEvent(SpeechEvent.EVENT_SESSION_BEGIN, 0, 0, null);
        return;
    L65:
        return;
    L64:
        return;
    L17:
        if (isRunning() == true) goto L19;
        return;
    L19:
        if (isRecordMode() == true) goto L39;
    L40:
        sendMsg(1, a.EnumC0240a.f12252a, false, 0);
        return;
    L39:
        sendMsg(1, a.EnumC0240a.b, false, 500);
        return;
    L23:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L21
        int r6 = e.getErrorCode();     // Catch: Throwable -> L21
        this.mError = e;     // Catch: Throwable -> L42
        this.mSessionRetryCount++;
        if (r6 != 0) goto L36;
        if (this.mSession.mClientID == null) goto L36;
        this.mIsRestarting = false;
        if (this.mIsFirstSession == false) goto L67;
        this.mIsFirstSession = false;
        if (this.mListener != null) goto L34;
        return;
    L67:
        return;
    L36:
        if (isRunning() == true) goto L38;
        return;
    L38:
        if (isRecordMode() == false) goto L40;
    L42:
        th = th;
    L43:
        this.mSessionRetryCount++;
        if (r6 != 0) goto L53;
        if (this.mSession.mClientID == null) goto L53;
        this.mIsRestarting = false;
        if (this.mIsFirstSession == false) goto L58;
        this.mIsFirstSession = false;
        if (this.mListener == null) goto L58;
        this.mListener.onEvent(SpeechEvent.EVENT_SESSION_BEGIN, 0, 0, null);
    L58:
        throw th;
    L53:
        if (isRunning() == false) goto L58;
        if (isRecordMode() == false) goto L57;
        sendMsg(1, a.EnumC0240a.b, false, 500);
        goto L58
    L57:
        sendMsg(1, a.EnumC0240a.f12252a, false, 0);
    L21:
        th = th;
        r6 = 0;
        goto L43
    }

    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("start connecting");
        if (SpeechConstant.TYPE_CLOUD.equals(getParam().a(SpeechConstant.ENGINE_TYPE)) == true) goto L5;
    L9:
        int r0 = getParam().a("record_read_rate", 40);
        int r3 = this.mAudioSource;
        if ((-1) != r3) goto L12;
        this.mAccesser = AudioAccessor.createBufferAccessor();
    L17:
        this.mBuffer = new byte[this.mAccesser.getBufferLength()];
        if (this.mAudioSource >= 0) goto L20;
    L27:
        this.mPerflog.a("app_ssb");
        sendMsg(1, a.EnumC0240a.f12252a, false, 0);
        this.mIsRecording = true;
        return;
    L20:
        if (isRunning() == false) goto L27;
        DebugLog.LogD("start  record");
        boolean r1 = getParam().a(SpeechConstant.BLUETOOTH, this.mUseBluetooth);
        this.mUseBluetooth = r1;
        if (r1 == false) goto L24;
        startBluetooth();
    L24:
        this.mRecorder = new PcmRecorder(getSampleRate(), r0, this.mAudioSource);
        this.mPerflog.a("rec_open");
        this.mRecorder.startRecording(this);
        if (this.mListener == null) goto L27;
        this.mListener.onBeginOfSpeech();
        goto L27
    L12:
        if ((-2) != r3) goto L14;
        this.mAccesser = AudioAccessor.createReadOnlyAccessor(this.mFilePath);
        getParam().a(SpeechConstant.SAMPLE_RATE, this.mAccesser.getAudioInfo(AudioAccessor.AudioKeys.RATE), false);
        goto L17
    L14:
        this.mAccesser = AudioAccessor.createWriteReadAccessor(this.mFilePath, this.mSampleRate);
        if (this.mListener == null) goto L17;
        Bundle r2 = new Bundle();
        r2.putString(SpeechConstant.IST_AUDIO_PATH, this.mAccesser.getFilePath());
        this.mListener.onEvent(10004, 0, 0, r2);
        goto L17
    L5:
        if ((-1) != getAudioSource()) goto L7;
    L8:
        j.a(this.mContext);
        goto L9
    L7:
        if ((-2) != getAudioSource()) goto L9;
        goto L8
    }

    protected void proc_Msg_Wait_Result() throws Exception {
        updateUploadBytes();
        updateSessionID();
        updateSyncID();
        int r0 = this.mSession.getIntValue(b.f12289a, -1);
        DebugLog.LogD("onWaiting msc waitTime=" + r0);
        if (r0 >= 0) goto L5;
    L9:
        com.iflytek.cloud.a.f.b.a r1 = com.iflytek.cloud.a.f.b.a.c;
        r1 = requestResult();     // Catch: SpeechError -> L12
    L16:
        int r2 = this.mResultSecondLeft;
        if (r2 < 0) goto L19;
    L20:
        a.timeOutCheck(this.mStatusBegin, r2 + this.mNetTimeOut);
    L21:
        sendMsg(MSG_WAIT_RESULT, a.EnumC0240a.f12252a, false, 500);
        return;
    L19:
        if (com.iflytek.cloud.a.f.b.a.c == r1) goto L21;
    L12:
        e = move-exception;
        if (10114 != e.getErrorCode()) goto L23;
        restartSession();
        goto L16
    L23:
        throw e;
    L5:
        if (r0 == this.mResultSecondLeft) goto L9;
        this.mStatusBegin = System.currentTimeMillis();
        this.mResultSecondLeft = r0;
        if (this.mListener == null) goto L9;
        this.mListener.onEvent(SpeechEvent.EVENT_IST_RESULT_TIME, r0 / 1000, 0, null);
        goto L9
    }

    protected com.iflytek.cloud.a.f.b.a requestResult() throws SpeechError, UnsupportedEncodingException {
        com.iflytek.cloud.a.f.b.a r0 = this.mSession.getStatus();
        if (com.iflytek.cloud.a.f.b.a.c != r0) goto L5;
    L9:
        byte[] r1 = null;
    L10:
        DebugLog.LogD("result:" + r1);
        Message r2 = obtainMessage(4, r0.ordinal(), 0, r1);
        if (hasMessages(4) == false) goto L13;
        sendMsg(r2, a.EnumC0240a.b, false, 0);
    L14:
        return r0;
    L13:
        sendMsg(r2, a.EnumC0240a.f12252a, false, 0);
        goto L14
    L5:
        if (this.mSession.getResultData() == null) goto L9;
        if (this.mSession.getResultData().length <= 0) goto L9;
        r1 = new String(this.mSession.getResultData(), "gb2312").getBytes("utf-8");
        goto L10
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void start() {
        this.mPerflog.a(getParam());
        super.start();
    }

    public synchronized void startTranscripting(TranscripterListener r1) {
        monitor-enter(this);
        this.mListener = r1;     // Catch: Throwable -> L6
        DebugLog.LogD("startTranscripting called");     // Catch: Throwable -> L6
        start();     // Catch: Throwable -> L6
        monitor-exit(this);
        return;
    L6:
        th = move-exception;
        throw th;
    }

    public synchronized boolean stopTranscripting(boolean r3) {
        monitor-enter(this);
        DebugLog.LogD("stopTranscript, current status is :" + getStatus() + " usercancel : " + r3);     // Catch: Throwable -> L7
        this.mPerflog.a("app_stop");     // Catch: Throwable -> L7
        releaseRecord();     // Catch: Throwable -> L7
        this.mUstopRecord = r3;     // Catch: Throwable -> L7
        sendMsg(3);     // Catch: Throwable -> L7
        monitor-exit(this);
        return true;
    L7:
        th = move-exception;
        throw th;
    }

    protected void uploadData(byte[] r3, int r4, boolean r5) throws SpeechError {
        if (this.mFirstDataWrite == true) goto L5;
        this.mFirstDataWrite = true;
        this.mPerflog.a("app_fau");
    L5:
        this.mSession.pushAudioData(r3, r4);
        if (r5 == false) goto L9;
        int r6 = this.mSession.getAudioVolume();
        DebugLog.LogI("QISRAudioWrite volume:" + r6);
        callbackVolume(r3, r6);
        return;
    }
}
