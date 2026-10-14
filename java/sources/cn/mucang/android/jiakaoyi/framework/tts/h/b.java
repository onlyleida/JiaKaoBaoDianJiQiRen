package cn.mucang.android.jiakaoyi.framework.tts.h;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.framework.tts.models.VoicePackEntity;
import cn.mucang.android.jiakaoyi.framework.tts.voice.VoicePackType;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b extends BaseDeviceManagerApi {
    public List<VoicePackEntity> m(VoicePackType voicePackType) throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/resource/get-resource.htm?type=" + voicePackType.type).getList(VoicePackEntity.class);
    }
}
