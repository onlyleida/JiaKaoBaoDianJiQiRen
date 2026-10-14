package com.iflytek.speech;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.speech.aidl.ISpeechUnderstander;

/* JADX INFO: loaded from: classes4.dex */
public class SpeechUnderstanderAidl extends SpeechModuleAidl<ISpeechUnderstander> {
    public SpeechUnderstanderAidl(Context context, InitListener initListener) {
        super(context, initListener, UtilityConfig.ACTION_SPEECH_UNDERSTANDER);
    }

    public int cancel(SpeechUnderstanderListener speechUnderstanderListener) {
        I i = this.mService;
        if (i == 0) {
            return 21003;
        }
        if (speechUnderstanderListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        try {
            ((ISpeechUnderstander) i).cancel(speechUnderstanderListener);
            return 0;
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        } catch (Exception e3) {
            e3.printStackTrace();
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public /* bridge */ /* synthetic */ boolean destory() {
        return super.destory();
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public /* bridge */ /* synthetic */ Intent getIntent() {
        return super.getIntent();
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    @Override // com.iflytek.speech.SpeechModuleAidl
    public /* bridge */ /* synthetic */ boolean isActionInstalled(Context context, String str) {
        return super.isActionInstalled(context, str);
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public /* bridge */ /* synthetic */ boolean isAvailable() {
        return super.isAvailable();
    }

    public boolean isUnderstanding() {
        try {
            I i = this.mService;
            if (i != 0) {
                return ((ISpeechUnderstander) i).isUnderstanding();
            }
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return false;
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public int setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int startUnderstanding(SpeechUnderstanderListener speechUnderstanderListener) {
        I i = this.mService;
        if (i == 0) {
            return 21003;
        }
        if (speechUnderstanderListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        try {
            ((ISpeechUnderstander) i).startUnderstanding(getIntent(), speechUnderstanderListener);
            return 0;
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        } catch (Exception e3) {
            e3.printStackTrace();
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
    }

    public int stopUnderstanding(SpeechUnderstanderListener speechUnderstanderListener) {
        I i = this.mService;
        if (i == 0) {
            return 21003;
        }
        if (speechUnderstanderListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        try {
            ((ISpeechUnderstander) i).stopUnderstanding(speechUnderstanderListener);
            return 0;
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        } catch (Exception e3) {
            e3.printStackTrace();
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
    }

    public int writeAudio(byte[] bArr, int i, int i2) {
        if (SpeechUtility.getUtility().getServiceVersion() < 44) {
            return ErrorCode.ERROR_VERSION_LOWER;
        }
        if (this.mService == 0) {
            return 21003;
        }
        try {
            ((ISpeechUnderstander) this.mService).writeAudio(getIntent(), bArr, i, i2);
            return 0;
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return 0;
        } catch (Exception e3) {
            e3.printStackTrace();
            return 0;
        }
    }
}
