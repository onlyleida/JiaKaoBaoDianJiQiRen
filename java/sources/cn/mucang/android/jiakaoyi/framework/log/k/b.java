package cn.mucang.android.jiakaoyi.framework.log.k;

import android.text.TextUtils;
import android.util.Log;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.dataprovider.AppDataProvider;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.log.db.LogEntity;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.log.g;
import cn.mucang.android.jiakaoyi.framework.log.i;
import com.mobile.auth.gatewayauth.Constant;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b extends FileUploadApi {
    public b() {
        this("", "", "");
    }

    public static boolean b(i iVar, LogEntity logEntity) throws ApiException, IOException, InternalException, HttpException {
        boolean zC;
        String file = logEntity.getFile();
        if (MucangConfig.v()) {
            Log.e("LogTag", "上传:" + iVar.f3467a + " , " + file);
            StringBuilder sb = new StringBuilder();
            sb.append("开始上传日志:");
            sb.append(file);
            f.o(sb.toString());
        }
        if (n0.e(file)) {
            return false;
        }
        File file2 = new File(file);
        boolean z = true;
        if (!file2.exists() || file2.length() == 0) {
            cn.mucang.android.jiakaoyi.framework.log.db.a.b(logEntity);
            file2.delete();
            if (MucangConfig.v()) {
                Log.e("LogTag", "文件不存在，删掉数据库记录:" + iVar.f3467a + " , " + file);
            }
            return true;
        }
        if (!file.endsWith(".zip") && !g.h(file2)) {
            cn.mucang.android.jiakaoyi.framework.log.db.a.b(logEntity);
            file2.delete();
            if (MucangConfig.v()) {
                Log.e("LogTag", "文件不合格:" + iVar.f3467a + " , " + file);
            }
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - logEntity.getStartTime();
        if (!(jCurrentTimeMillis >= 0 && jCurrentTimeMillis < 604800000)) {
            cn.mucang.android.jiakaoyi.framework.log.db.a.b(logEntity);
            file2.delete();
            if (MucangConfig.v()) {
                Log.e("LogTag", "时间超过7填，不上传:" + iVar.f3467a + " , " + file);
            }
            return true;
        }
        if (logEntity.getFile().endsWith(".zip")) {
            zC = new b().c(logEntity);
        } else {
            String str = file2.getAbsolutePath().replace(".txt", "") + ".zip";
            if (g.b(file, str)) {
                logEntity.setFile(str);
                File file3 = new File(str);
                logEntity.setSize(file3.length());
                try {
                    if (new b().c(logEntity)) {
                        file3.delete();
                    } else {
                        z = false;
                    }
                    zC = z;
                } catch (Throwable th) {
                    cn.mucang.android.jiakaoyi.framework.log.db.a.f(logEntity);
                    file2.delete();
                    throw th;
                }
            } else {
                zC = new b().c(logEntity);
            }
        }
        if (zC) {
            cn.mucang.android.jiakaoyi.framework.log.db.a.b(logEntity);
            file2.delete();
            if (MucangConfig.v()) {
                Log.e("LogTag", "上传成功:" + iVar.f3467a + " , " + file);
            }
        } else {
            if (MucangConfig.v()) {
                Log.e("LogTag", "上传失败:" + iVar.f3467a + " , " + file);
            }
            f.o("上传失败:" + iVar.f3467a + " , " + file);
        }
        return false;
    }

    private boolean c(LogEntity logEntity) throws ApiException, IOException, InternalException, HttpException {
        File file = new File(logEntity.getFile());
        if (!file.exists()) {
            return false;
        }
        Map<String, String> extraParams = getExtraParams();
        extraParams.put(Constant.START_TIME, String.valueOf(logEntity.getStartTime()));
        if (logEntity.getEndTime() > 0) {
            extraParams.put("endTime", String.valueOf(logEntity.getEndTime()));
        }
        extraParams.put("fileName", file.getName());
        extraParams.put("logType", String.valueOf(logEntity.getType()));
        extraParams.put("logTypeName", logEntity.getTypeName());
        uploadFile(new File(logEntity.getFile()));
        return true;
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://app-log-statistics.ttt.mucang.cn" : "https://app-log-statistics.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        Map<String, String> extraParams = super.getExtraParams();
        extraParams.putAll(cn.mucang.android.jiakaoyi.framework.p002e.g.b());
        AppDataProvider appDataProvider = (AppDataProvider) DataProviderRegister.f3433a.a(AppDataProvider.class, null);
        if (appDataProvider != null && !TextUtils.isEmpty(appDataProvider.getLogDeviceNum())) {
            extraParams.put("deviceNum", appDataProvider.getLogDeviceNum());
        }
        return extraParams;
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    public String getSignKey() {
        return "*#06#fJGHdpaHcWxrdUajnXpFcUaJ";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi
    protected String path() {
        return "/api/open/client-upload-log/upload-log.htm";
    }

    public b(String str, String str2, String str3) {
        super(str, str2, str3);
    }
}
