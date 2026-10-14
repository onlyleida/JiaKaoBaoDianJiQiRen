package cn.mucang.android.jiakaoyi.mapcollect.migrate;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class o extends cn.mucang.android.jiakaoyi.framework.p002e.n {
    @Override // cn.mucang.android.core.api.a
    protected cn.mucang.android.core.api.request.e.c getRequestConfig() {
        return new cn.mucang.android.core.api.request.e.c(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
    }

    public boolean m(String str, Gps gps, Gps gps2, Long l) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", str));
        arrayList.add(new MucangNameValuePair("oldLat", String.valueOf(gps.latitude)));
        arrayList.add(new MucangNameValuePair("oldLon", String.valueOf(gps.longitude)));
        arrayList.add(new MucangNameValuePair("newLat", String.valueOf(gps2.latitude)));
        arrayList.add(new MucangNameValuePair("newLon", String.valueOf(gps2.longitude)));
        arrayList.add(new MucangNameValuePair("newBaseStationId", String.valueOf(l)));
        return httpPost("/api/open/base-station/move.htm", arrayList).isSuccess();
    }
}
