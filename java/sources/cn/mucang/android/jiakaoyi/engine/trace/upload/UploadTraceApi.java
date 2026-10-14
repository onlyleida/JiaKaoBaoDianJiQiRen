package cn.mucang.android.jiakaoyi.engine.trace.upload;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.api.upload.UploadResult;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.jiakaoyi.engine.R;
import cn.mucang.android.jiakaoyi.engine.trace.TraceExtraData;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.p002e.XyToken;
import cn.mucang.android.jiakaoyi.framework.p002e.g;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class UploadTraceApi extends FileUploadApi {

    public static class UploadTraceResult extends UploadResult {
        public String clientContext;
        public String id;
    }

    public UploadTraceApi() {
        this("", "", "");
    }

    public UploadTraceResult b(File file, String str, String str2, String str3, String str4, String str5, String str6, TraceExtraData traceExtraData) throws ApiException, IOException, InternalException, HttpException {
        Map<String, String> extraParams = getExtraParams();
        String string = MucangConfig.getContext().getResources().getString(R.string.product);
        extraParams.put("examSiteId", str);
        extraParams.put("mapDataMd5", str2);
        extraParams.put("deviceNum", str3);
        extraParams.put("userId", str4);
        extraParams.put("time", str5);
        extraParams.put("endTime", str6);
        extraParams.put("product", string);
        extraParams.put("trackVersion", "3");
        if (AccountManager.h().l()) {
            extraParams.put("authToken", AccountManager.h().g().getAuthToken());
        } else if (XyToken.a().e() != null) {
            extraParams.put("authToken", XyToken.a().e());
        }
        String str7 = "";
        if (traceExtraData != null) {
            str7 = traceExtraData.xy;
            extraParams.put("traceType", String.valueOf(traceExtraData.getType()));
            extraParams.put("orderNo", traceExtraData.orderNo);
            extraParams.put("costRecordId", traceExtraData.costRecordId);
            extraParams.put("passScore", String.valueOf(traceExtraData.getPassScore()));
            extraParams.put("xy", traceExtraData.xy);
            extraParams.put("studentId", traceExtraData.studentId);
            extraParams.put("xyToken", traceExtraData.xyToken);
            extraParams.put("valid", String.valueOf(traceExtraData.valid));
            extraParams.put("posCode", traceExtraData.posMapCode);
            extraParams.put("clientContext", traceExtraData.traceId);
            extraParams.put("loopTrainCode", traceExtraData.subCode);
            extraParams.put("hasAiGuide", String.valueOf(traceExtraData.guideMark));
            if (n0.g(traceExtraData.kemu)) {
                extraParams.put("kemu", traceExtraData.kemu);
            }
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o("轨迹上报 traceType 缺失：" + str + "-" + str2 + "-" + str4 + "-" + str5);
            StringBuilder sb = new StringBuilder();
            sb.append(w.r.getType());
            sb.append("");
            extraParams.put("traceType", sb.toString());
        }
        Iterator<Map.Entry<String, String>> it = extraParams.entrySet().iterator();
        while (it.hasNext()) {
            if (n0.f(it.next().getValue())) {
                it.remove();
            }
        }
        if (n0.e(str2)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("地图MD5丢失：" + str + ",product:" + string + ",xy:" + str7 + ",version:" + o0.u());
        }
        return (UploadTraceResult) upload(file, FileUploadApi.FileType.File, UploadTraceResult.class);
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://user-data-collection.ttt.mucang.cn" : "https://udc.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    public String getSignKey() {
        return "*#06#iXNqfHM9eJlxcJh9j316gqic";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi
    protected String path() {
        return "/api/open/track/upload";
    }

    public UploadTraceApi(String str, String str2, String str3) {
        super(str, str2, str3);
        super.getExtraParams().putAll(g.b());
    }
}
