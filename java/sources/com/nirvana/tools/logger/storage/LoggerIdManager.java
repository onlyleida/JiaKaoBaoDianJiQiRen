package com.nirvana.tools.logger.storage;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.nirvana.tools.core.AppUtils;
import com.nirvana.tools.core.CryptUtil;
import com.nirvana.tools.logger.UmaaidSdk;
import com.nirvana.tools.logger.utils.UTSharedPreferencesHelper;
import com.ut.device.UTDevice;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public class LoggerIdManager {
    public static final String AUTH_APP_INFO = "AUTH_APP_INFO";
    private static final String KEY_UNIQUE_ID = "uniqueId";
    private static final String SP_FILE_NAME = "nirvana.tools.logger";
    private Context mContext;
    private FileStorage mFileStorage;

    public LoggerIdManager(Context context) {
        this.mContext = context;
        if (UmaaidSdk.isUmAaidSdkAble()) {
            UmaaidSdk.init(context);
        }
    }

    private String generateUniqueId(Context context) {
        try {
            return CryptUtil.md5Hex(UUID.randomUUID().toString() + AppUtils.getPackageName(context) + AppUtils.getSign(context) + System.currentTimeMillis());
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String getUmaaid(Context context) {
        if (UmaaidSdk.isUmAaidSdkAble()) {
            return UmaaidSdk.getAaid(context);
        }
        return null;
    }

    public String getUniqueId() {
        if (this.mFileStorage == null) {
            this.mFileStorage = Build.VERSION.SDK_INT >= 29 ? new FileStorageForQ(this.mContext) : new FileStorage(this.mContext);
        }
        String strFirstFileName = (String) UTSharedPreferencesHelper.get(this.mContext, AUTH_APP_INFO, KEY_UNIQUE_ID, "");
        if (TextUtils.isEmpty(strFirstFileName)) {
            strFirstFileName = this.mFileStorage.firstFileName(FileStorage.DIR_UNIQUE_ID);
            if (TextUtils.isEmpty(strFirstFileName)) {
                strFirstFileName = generateUniqueId(this.mContext);
                this.mFileStorage.createNewFile(FileStorage.DIR_UNIQUE_ID, strFirstFileName, false);
            }
            UTSharedPreferencesHelper.put(this.mContext, AUTH_APP_INFO, KEY_UNIQUE_ID, strFirstFileName);
        }
        return strFirstFileName;
    }

    public String getUtdid(Context context) {
        try {
            if (Class.forName("com.ut.device.UTDevice") != null) {
                return UTDevice.getUtdid(context);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
