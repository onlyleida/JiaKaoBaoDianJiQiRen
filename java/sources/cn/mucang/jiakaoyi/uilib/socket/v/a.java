package cn.mucang.jiakaoyi.uilib.socket.v;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.com.p;
import cn.mucang.jiakaoyi.uilib.socket.model.SocketInfo;
import cn.mucang.jiakaoyi.uilib.socket.model.SocketLoginRequestModel;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class a extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "http://lukaoyi-central.ttt.mucang.cn" : "https://1234.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#iJejkYeMfUWcmnNzhZaQh4aT";
    }

    public SocketInfo m(SocketLoginRequestModel socketLoginRequestModel) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("deviceNo", socketLoginRequestModel.deviceNo));
        arrayList.add(new MucangNameValuePair("sid", String.valueOf(socketLoginRequestModel.sid)));
        arrayList.add(new MucangNameValuePair("ip", String.valueOf(socketLoginRequestModel.ip)));
        arrayList.add(new MucangNameValuePair("version", String.valueOf(5)));
        arrayList.add(new MucangNameValuePair("isRobot", String.valueOf(AppUtils.k())));
        arrayList.add(new MucangNameValuePair("protocolVer", String.valueOf(p.a())));
        return (SocketInfo) (socketLoginRequestModel.isForGps ? httpPost("/api/open/auth/login-gps.htm", arrayList) : httpPost("/api/open/auth/login.htm", arrayList)).getData(SocketInfo.class);
    }
}
