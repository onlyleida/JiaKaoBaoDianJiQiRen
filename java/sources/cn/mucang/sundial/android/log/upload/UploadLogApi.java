package cn.mucang.sundial.android.log.upload;

import android.text.TextUtils;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.sundial.android.log.LUtils;
import cn.mucang.sundial.android.log.LogType;
import cn.mucang.sundial.android.log.db.LogDb;
import cn.mucang.sundial.android.log.db.LogEntity;
import cn.mucang.sundial.android.tcp.data.DataManager;
import com.mobile.auth.gatewayauth.Constant;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class UploadLogApi extends FileUploadApi {
    public UploadLogApi() {
        this("", "", "");
    }

    public static boolean upload(LogType logType, LogEntity logEntity) throws ApiException, IOException, InternalException, HttpException {
        boolean zUpload;
        String file = logEntity.getFile();
        if (n0.e(file)) {
            return false;
        }
        File file2 = new File(file);
        if (!file2.exists() || file2.length() <= 0) {
            LogDb.delete(logEntity);
            file2.delete();
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - logEntity.getStartTime();
        boolean z = true;
        if (!(jCurrentTimeMillis >= 0 && jCurrentTimeMillis < 604800000)) {
            new File(logEntity.getFile()).delete();
            LogDb.delete(logEntity);
            return true;
        }
        if (logEntity.getFile().endsWith(".zip")) {
            zUpload = new UploadLogApi().upload(logEntity);
        } else {
            String str = file2.getAbsolutePath() + ".zip";
            if (LUtils.compressFile(file, str)) {
                logEntity.setFile(str);
                logEntity.setSize(new File(str).length());
                try {
                    if (new UploadLogApi().upload(logEntity)) {
                        file2.delete();
                    } else {
                        z = false;
                    }
                    zUpload = z;
                } catch (Throwable th) {
                    LogDb.update(logEntity);
                    throw th;
                }
            } else {
                zUpload = new UploadLogApi().upload(logEntity);
            }
        }
        if (zUpload) {
            new File(logEntity.getFile()).delete();
            LogDb.delete(logEntity);
        }
        return false;
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://app-log-statistics.ttt.mucang.cn" : "https://app-log-statistics.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        Map<String, String> extraParams = super.getExtraParams();
        String strTrim = DataManager.getInstance().getDeviceInfo().getImei().trim();
        if (!TextUtils.isEmpty(strTrim)) {
            extraParams.put("deviceNum", strTrim);
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

    public UploadLogApi(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    private boolean upload(LogEntity logEntity) throws ApiException, IOException, InternalException, HttpException {
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
}
