package cn.mucang.android.jiakaoyi.teachingk2.res.voice;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends BaseDeviceManagerApi {
    public List<TeachVoiceModel> m(long j, long j2) throws ApiException, InternalException, HttpException {
        return httpGetDataList("/api/open/owner/teach-programme-voice/get-voices.htm?examSiteId=" + j + "&programmeId=" + j2, TeachVoiceModel.class);
    }
}
