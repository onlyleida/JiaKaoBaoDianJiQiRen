package com.google.mlkit.common.sdkinternal.model;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
@KeepForSdk
public abstract class LegacyModelMigrator {

    @KeepForSdk
    protected final ModelFileHelper modelFileHelper;
    private final Context zzb;
    private final TaskCompletionSource zza = new TaskCompletionSource();
    private final Executor zzc = MLTaskExecutor.workerThreadExecutor();

    @KeepForSdk
    protected LegacyModelMigrator(Context context, ModelFileHelper modelFileHelper) {
        this.zzb = context;
        this.modelFileHelper = modelFileHelper;
    }

    @KeepForSdk
    protected static void deleteIfEmpty(File file) {
        File[] fileArrListFiles = file.listFiles();
        if ((fileArrListFiles == null || fileArrListFiles.length == 0) && !file.delete()) {
            String strValueOf = String.valueOf(file);
            String.valueOf(strValueOf).length();
            Log.e("MlKitLegacyMigration", "Error deleting model directory ".concat(String.valueOf(strValueOf)));
        }
    }

    @KeepForSdk
    protected static boolean isValidFirebasePersistenceKey(String str) {
        String[] strArrSplit = str.split("\\+", -1);
        if (strArrSplit.length != 2) {
            return false;
        }
        try {
            Base64Utils.decodeUrlSafeNoPadding(strArrSplit[0]);
            Base64Utils.decodeUrlSafeNoPadding(strArrSplit[1]);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    @VisibleForTesting
    @KeepForSdk
    public static void migrateFile(File file, File file2) {
        if (file.exists()) {
            if (!file2.exists() && !file.renameTo(file2)) {
                String strValueOf = String.valueOf(file);
                String strValueOf2 = String.valueOf(file2);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 28 + String.valueOf(strValueOf2).length());
                sb.append("Error moving model file ");
                sb.append(strValueOf);
                sb.append(" to ");
                sb.append(strValueOf2);
                Log.e("MlKitLegacyMigration", sb.toString());
            }
            if (!file.exists() || file.delete()) {
                return;
            }
            String strValueOf3 = String.valueOf(file);
            String.valueOf(strValueOf3).length();
            Log.e("MlKitLegacyMigration", "Error deleting model file ".concat(String.valueOf(strValueOf3)));
        }
    }

    @VisibleForTesting
    @KeepForSdk
    protected abstract String getLegacyModelDirName();

    @VisibleForTesting
    @KeepForSdk
    public File getLegacyRootDir() {
        String legacyModelDirName = getLegacyModelDirName();
        return Build.VERSION.SDK_INT >= 21 ? new File(this.zzb.getNoBackupFilesDir(), legacyModelDirName) : this.zzb.getApplicationContext().getDir(legacyModelDirName, 0);
    }

    @KeepForSdk
    public Task<Void> getMigrationTask() {
        return this.zza.getTask();
    }

    @KeepForSdk
    protected abstract void migrateAllModelDirs(File file);

    @KeepForSdk
    public void start() {
        this.zzc.execute(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.model.zza
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza();
            }
        });
    }

    final /* synthetic */ void zza() {
        File legacyRootDir = getLegacyRootDir();
        File[] fileArrListFiles = legacyRootDir.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                migrateAllModelDirs(file);
            }
            deleteIfEmpty(legacyRootDir);
        }
        this.zza.setResult(null);
    }
}
