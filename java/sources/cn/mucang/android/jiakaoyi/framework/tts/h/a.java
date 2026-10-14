package cn.mucang.android.jiakaoyi.framework.tts.h;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.request.e.c;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.framework.tts.TtsConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsSpeaker;
import cn.mucang.android.jiakaoyi.framework.tts.models.SynthEntity;
import cn.mucang.android.jiakaoyi.framework.tts.models.SynthResultModel;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class a extends BaseDeviceManagerApi {
    @Override // cn.mucang.android.core.api.a
    protected c getRequestConfig() {
        return new c(3000L, 3000L, 3000L);
    }

    public SynthResultModel m(String str, o oVar) throws ApiException, InternalException, HttpException {
        TtsSpeaker ttsSpeaker = oVar.m;
        int iE = TtsConfig.e();
        return (SynthResultModel) httpGet("/api/open/voice/get-voice.htm?key=" + str + "&person=" + ttsSpeaker.getVoiceName() + "&speed=" + ((iE < 0 || iE >= ttsSpeaker.getSpeedArray().length) ? 50 : ttsSpeaker.getSpeedArray()[iE]) + "&pitch=50&text=" + oVar.c).getData(SynthResultModel.class);
    }

    public SynthResultModel n(File file, SynthEntity synthEntity, o oVar) throws ApiException, InternalException, HttpException {
        TtsSpeaker ttsSpeaker = oVar.m;
        int iE = TtsConfig.e();
        return (SynthResultModel) httpPost("/api/open/voice/add-voice.htm?key=" + synthEntity.key + "&fileName=" + file.getName() + "&person=" + ttsSpeaker.getVoiceName() + "&speed=" + ((iE < 0 || iE >= ttsSpeaker.getSpeedArray().length) ? 50 : ttsSpeaker.getSpeedArray()[iE]) + "&pitch=50&text=" + oVar.c, file).getData(SynthResultModel.class);
    }
}
