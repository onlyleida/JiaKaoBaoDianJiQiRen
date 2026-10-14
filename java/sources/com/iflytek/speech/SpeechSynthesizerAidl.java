package com.iflytek.speech;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.speech.aidl.ISpeechSynthesizer;

/* JADX INFO: loaded from: classes4.dex */
public class SpeechSynthesizerAidl extends SpeechModuleAidl<ISpeechSynthesizer> {
    public SpeechSynthesizerAidl(Context context, InitListener initListener) {
        super(context, initListener, UtilityConfig.ACTION_SPEECH_SYNTHESIZER);
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public boolean destory() {
        this.mService = null;
        return super.destory();
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public /* bridge */ /* synthetic */ Intent getIntent() {
        return super.getIntent();
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public String getParameter(String str) {
        int serviceVersion;
        if (!str.equals(SpeechConstant.LOCAL_SPEAKERS)) {
            return super.getParameter(str);
        }
        try {
            if (SpeechUtility.getUtility() != null && (serviceVersion = SpeechUtility.getUtility().getServiceVersion()) >= 44 && (serviceVersion < 10000 || serviceVersion >= 10013)) {
                return ((ISpeechSynthesizer) this.mService).getLocalSpeakerList();
            }
            return null;
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return "20999";
        }
    }

    @Override // com.iflytek.speech.SpeechModuleAidl
    public /* bridge */ /* synthetic */ boolean isActionInstalled(Context context, String str) {
        return super.isActionInstalled(context, str);
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public /* bridge */ /* synthetic */ boolean isAvailable() {
        return super.isAvailable();
    }

    public boolean isSpeaking() {
        try {
            I i = this.mService;
            if (i != 0) {
                return ((ISpeechSynthesizer) i).isSpeaking();
            }
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return false;
    }

    public int pauseSpeaking(SynthesizerListener synthesizerListener) {
        I i = this.mService;
        if (i == 0) {
            return 21003;
        }
        if (synthesizerListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        try {
            return ((ISpeechSynthesizer) i).pauseSpeaking(synthesizerListener);
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        } catch (Exception e3) {
            e3.printStackTrace();
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
    }

    public int resumeSpeaking(SynthesizerListener synthesizerListener) {
        I i = this.mService;
        if (i == 0) {
            return 21003;
        }
        if (synthesizerListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        try {
            return ((ISpeechSynthesizer) i).resumeSpeaking(synthesizerListener);
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        } catch (Exception e3) {
            e3.printStackTrace();
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
    }

    @Override // com.iflytek.speech.SpeechModuleAidl, com.iflytek.speech.ISpeechModule
    public int setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int startSpeaking(String str, SynthesizerListener synthesizerListener) {
        if (this.mService == 0) {
            return 21003;
        }
        if (synthesizerListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        try {
            Intent intent = getIntent();
            intent.putExtra("text", str);
            return ((ISpeechSynthesizer) this.mService).startSpeaking(intent, synthesizerListener);
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        } catch (Exception e3) {
            e3.printStackTrace();
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
    }

    public int stopSpeaking(SynthesizerListener synthesizerListener) {
        I i = this.mService;
        if (i == 0) {
            return 21003;
        }
        if (synthesizerListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        try {
            return ((ISpeechSynthesizer) i).stopSpeaking(synthesizerListener);
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        } catch (Exception e3) {
            e3.printStackTrace();
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
    }

    public int synthesizeToUrl(String str, SynthesizerListener synthesizerListener) {
        if (this.mService == 0) {
            return 21003;
        }
        if (synthesizerListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        try {
            Intent intent = getIntent();
            intent.putExtra("text", str);
            return ((ISpeechSynthesizer) this.mService).synthesizeToUrl(intent, synthesizerListener);
        } catch (RemoteException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        } catch (Exception e3) {
            e3.printStackTrace();
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
    }
}
