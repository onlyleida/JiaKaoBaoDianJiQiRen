package com.google.mlkit.common.sdkinternal.model;

import android.app.DownloadManager;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.LongSparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzie;
import com.google.android.gms.internal.mlkit_common.zzik;
import com.google.android.gms.internal.mlkit_common.zzld;
import com.google.android.gms.internal.mlkit_common.zzlm;
import com.google.android.gms.internal.mlkit_common.zzlp;
import com.google.android.gms.internal.mlkit_common.zzlx;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.DownloadConditions;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.ModelInfo;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@KeepForSdk
public class RemoteModelDownloadManager {
    private static final GmsLogger zza = new GmsLogger("ModelDownloadManager", "");
    private static final Map zzb = new HashMap();
    private final LongSparseArray zzc = new LongSparseArray();
    private final LongSparseArray zzd = new LongSparseArray();
    private final MlKitContext zze;
    private final DownloadManager zzf;
    private final RemoteModel zzg;
    private final ModelType zzh;
    private final zzlm zzi;
    private final SharedPrefManager zzj;
    private final ModelFileHelper zzk;
    private final ModelInfoRetrieverInterop zzl;
    private final RemoteModelFileManager zzm;
    private DownloadConditions zzn;

    RemoteModelDownloadManager(MlKitContext mlKitContext, RemoteModel remoteModel, ModelFileHelper modelFileHelper, RemoteModelFileManager remoteModelFileManager, ModelInfoRetrieverInterop modelInfoRetrieverInterop, zzlm zzlmVar) {
        this.zze = mlKitContext;
        this.zzh = remoteModel.getModelType();
        this.zzg = remoteModel;
        DownloadManager downloadManager = (DownloadManager) mlKitContext.getApplicationContext().getSystemService("download");
        this.zzf = downloadManager;
        this.zzi = zzlmVar;
        if (downloadManager == null) {
            zza.d("ModelDownloadManager", "Download manager service is not available in the service.");
        }
        this.zzk = modelFileHelper;
        this.zzj = SharedPrefManager.getInstance(mlKitContext);
        this.zzl = modelInfoRetrieverInterop;
        this.zzm = remoteModelFileManager;
    }

    @KeepForSdk
    public static synchronized RemoteModelDownloadManager getInstance(MlKitContext mlKitContext, RemoteModel remoteModel, ModelFileHelper modelFileHelper, RemoteModelFileManager remoteModelFileManager, ModelInfoRetrieverInterop modelInfoRetrieverInterop) {
        Map map;
        map = zzb;
        if (!map.containsKey(remoteModel)) {
            map.put(remoteModel, new RemoteModelDownloadManager(mlKitContext, remoteModel, modelFileHelper, remoteModelFileManager, modelInfoRetrieverInterop, zzlx.zzb("common")));
        }
        return (RemoteModelDownloadManager) map.get(remoteModel);
    }

    private final Task zzj(long j) {
        this.zze.getApplicationContext().registerReceiver(zzm(j), new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), null, MLTaskExecutor.getInstance().getHandler());
        return zzk(j).getTask();
    }

    private final synchronized TaskCompletionSource zzk(long j) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.zzd.get(j);
        if (taskCompletionSource != null) {
            return taskCompletionSource;
        }
        TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
        this.zzd.put(j, taskCompletionSource2);
        return taskCompletionSource2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MlKitException zzl(Long l) {
        DownloadManager downloadManager = this.zzf;
        Cursor cursorQuery = null;
        if (downloadManager != null && l != null) {
            cursorQuery = downloadManager.query(new DownloadManager.Query().setFilterById(l.longValue()));
        }
        int i = 13;
        String string = "Model downloading failed";
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("reason"));
            if (i2 == 1006) {
                i = 101;
                string = "Model downloading failed due to insufficient space on the device.";
            } else {
                StringBuilder sb = new StringBuilder(84);
                sb.append("Model downloading failed due to error code: ");
                sb.append(i2);
                sb.append(" from Android DownloadManager");
                string = sb.toString();
            }
        }
        return new MlKitException(string, i);
    }

    private final synchronized zzd zzm(long j) {
        zzd zzdVar = (zzd) this.zzc.get(j);
        if (zzdVar != null) {
            return zzdVar;
        }
        zzd zzdVar2 = new zzd(this, j, zzk(j), null);
        this.zzc.put(j, zzdVar2);
        return zzdVar2;
    }

    private final synchronized Long zzn(DownloadManager.Request request, ModelInfo modelInfo) {
        DownloadManager downloadManager = this.zzf;
        if (downloadManager == null) {
            return null;
        }
        long jEnqueue = downloadManager.enqueue(request);
        GmsLogger gmsLogger = zza;
        StringBuilder sb = new StringBuilder(53);
        sb.append("Schedule a new downloading task: ");
        sb.append(jEnqueue);
        gmsLogger.d("ModelDownloadManager", sb.toString());
        this.zzj.setDownloadingModelInfo(jEnqueue, modelInfo);
        this.zzi.zzf(zzlp.zzg(), this.zzg, zzie.NO_ERROR, false, modelInfo.getModelType(), zzik.SCHEDULED);
        return Long.valueOf(jEnqueue);
    }

    private final synchronized Long zzo(ModelInfo modelInfo, DownloadConditions downloadConditions) throws MlKitException {
        Preconditions.checkNotNull(downloadConditions, "DownloadConditions can not be null");
        String downloadingModelHash = this.zzj.getDownloadingModelHash(this.zzg);
        Integer downloadingModelStatusCode = getDownloadingModelStatusCode();
        if (downloadingModelHash != null && downloadingModelHash.equals(modelInfo.getModelHash()) && downloadingModelStatusCode != null) {
            Integer downloadingModelStatusCode2 = getDownloadingModelStatusCode();
            if (downloadingModelStatusCode2 == null || (downloadingModelStatusCode2.intValue() != 8 && downloadingModelStatusCode2.intValue() != 16)) {
                zzlm zzlmVar = this.zzi;
                zzld zzldVarZzg = zzlp.zzg();
                RemoteModel remoteModel = this.zzg;
                zzlmVar.zzf(zzldVarZzg, remoteModel, zzie.NO_ERROR, false, remoteModel.getModelType(), zzik.DOWNLOADING);
            }
            zza.d("ModelDownloadManager", "New model is already in downloading, do nothing.");
            return null;
        }
        GmsLogger gmsLogger = zza;
        gmsLogger.d("ModelDownloadManager", "Need to download a new model.");
        removeOrCancelDownload();
        DownloadManager.Request request = new DownloadManager.Request(modelInfo.getModelUri());
        if (this.zzk.modelExistsLocally(modelInfo.getModelNameForPersist(), modelInfo.getModelType())) {
            gmsLogger.d("ModelDownloadManager", "Model update is enabled and have a previous downloaded model, use download condition");
            this.zzi.zzf(zzlp.zzg(), this.zzg, zzie.NO_ERROR, false, modelInfo.getModelType(), zzik.UPDATE_AVAILABLE);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            request.setRequiresCharging(downloadConditions.isChargingRequired());
        }
        if (downloadConditions.isWifiRequired()) {
            request.setAllowedNetworkTypes(2);
        }
        return zzn(request, modelInfo);
    }

    @KeepForSdk
    public Task<Void> ensureModelDownloaded() {
        MlKitException mlKitException;
        ModelInfo modelInfoZzg;
        this.zzi.zzf(zzlp.zzg(), this.zzg, zzie.NO_ERROR, false, ModelType.UNKNOWN, zzik.EXPLICITLY_REQUESTED);
        Long lZzo = null;
        try {
            modelInfoZzg = zzg();
            mlKitException = null;
        } catch (MlKitException e2) {
            mlKitException = e2;
            modelInfoZzg = null;
        }
        try {
            Integer downloadingModelStatusCode = getDownloadingModelStatusCode();
            Long downloadingId = getDownloadingId();
            if (!modelExistsLocally() && (downloadingModelStatusCode == null || downloadingModelStatusCode.intValue() != 8)) {
                if (downloadingModelStatusCode != null && downloadingModelStatusCode.intValue() == 16) {
                    MlKitException mlKitExceptionZzl = zzl(downloadingId);
                    removeOrCancelDownload();
                    return Tasks.forException(mlKitExceptionZzl);
                }
                if (downloadingModelStatusCode == null || (!(downloadingModelStatusCode.intValue() == 4 || downloadingModelStatusCode.intValue() == 2 || downloadingModelStatusCode.intValue() == 1) || downloadingId == null || getDownloadingModelHash() == null)) {
                    if (modelInfoZzg != null) {
                        lZzo = zzo(modelInfoZzg, this.zzn);
                    }
                    return lZzo == null ? Tasks.forException(new MlKitException("Failed to schedule the download task", 13, mlKitException)) : zzj(lZzo.longValue());
                }
                zzlm zzlmVar = this.zzi;
                zzld zzldVarZzg = zzlp.zzg();
                RemoteModel remoteModel = this.zzg;
                zzlmVar.zzf(zzldVarZzg, remoteModel, zzie.NO_ERROR, false, remoteModel.getModelType(), zzik.DOWNLOADING);
                return zzj(downloadingId.longValue());
            }
            if (modelInfoZzg != null) {
                Long lZzo2 = zzo(modelInfoZzg, this.zzn);
                if (lZzo2 != null) {
                    return zzj(lZzo2.longValue());
                }
                zza.i("ModelDownloadManager", "Didn't schedule download for the updated model");
            }
            return Tasks.forResult(null);
        } catch (MlKitException e3) {
            return Tasks.forException(new MlKitException("Failed to ensure the model is downloaded.", 13, e3));
        }
    }

    @KeepForSdk
    public synchronized ParcelFileDescriptor getDownloadedFile() {
        Long downloadingId = getDownloadingId();
        DownloadManager downloadManager = this.zzf;
        ParcelFileDescriptor parcelFileDescriptorOpenDownloadedFile = null;
        if (downloadManager == null || downloadingId == null) {
            return null;
        }
        try {
            parcelFileDescriptorOpenDownloadedFile = downloadManager.openDownloadedFile(downloadingId.longValue());
        } catch (FileNotFoundException unused) {
            zza.e("ModelDownloadManager", "Downloaded file is not found");
        }
        return parcelFileDescriptorOpenDownloadedFile;
    }

    @KeepForSdk
    public synchronized Long getDownloadingId() {
        return this.zzj.getDownloadingModelId(this.zzg);
    }

    @KeepForSdk
    public synchronized String getDownloadingModelHash() {
        return this.zzj.getDownloadingModelHash(this.zzg);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0041 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[Catch: all -> 0x0090, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x000e, B:18:0x0043, B:34:0x006e, B:41:0x008d, B:40:0x0078, B:9:0x0027, B:11:0x002d, B:21:0x0048, B:23:0x004f, B:25:0x0056, B:27:0x005c, B:29:0x0064), top: B:48:0x0001, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0048 A[Catch: all -> 0x003c, TRY_ENTER, TryCatch #3 {all -> 0x003c, blocks: (B:9:0x0027, B:11:0x002d, B:21:0x0048, B:23:0x004f, B:25:0x0056, B:27:0x005c, B:29:0x0064), top: B:53:0x0027, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x006d  */
    @KeepForSdk
    public synchronized Integer getDownloadingModelStatusCode() {
        Integer numValueOf;
        Long downloadingId = getDownloadingId();
        DownloadManager downloadManager = this.zzf;
        if (downloadManager != null && downloadingId != null) {
            Cursor cursorQuery = downloadManager.query(new DownloadManager.Query().setFilterById(downloadingId.longValue()));
            if (cursorQuery == null) {
                numValueOf = null;
                if (numValueOf == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                if (numValueOf.intValue() != 2) {
                }
                cursorQuery.close();
                return num;
            }
            try {
                if (cursorQuery.moveToFirst()) {
                    numValueOf = Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex("status")));
                } else {
                    numValueOf = null;
                }
                if (numValueOf == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                Integer num = (numValueOf.intValue() != 2 || numValueOf.intValue() == 4 || numValueOf.intValue() == 1 || numValueOf.intValue() == 8 || numValueOf.intValue() == 16) ? numValueOf : null;
                cursorQuery.close();
                return num;
            } catch (Throwable th) {
                try {
                    cursorQuery.close();
                } catch (Throwable th2) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    } catch (Exception unused) {
                    }
                }
                throw th;
            }
            throw th;
        }
        return null;
    }

    @KeepForSdk
    public int getFailureReason(Long l) {
        int columnIndex;
        DownloadManager downloadManager = this.zzf;
        Cursor cursorQuery = null;
        if (downloadManager != null && l != null) {
            cursorQuery = downloadManager.query(new DownloadManager.Query().setFilterById(l.longValue()));
        }
        if (cursorQuery == null || !cursorQuery.moveToFirst() || (columnIndex = cursorQuery.getColumnIndex("reason")) == -1) {
            return 0;
        }
        return cursorQuery.getInt(columnIndex);
    }

    @KeepForSdk
    public boolean isModelDownloadedAndValid() throws MlKitException {
        try {
            if (modelExistsLocally()) {
                return true;
            }
        } catch (MlKitException unused) {
            zza.d("ModelDownloadManager", "Failed to check if the model exist locally.");
        }
        Long downloadingId = getDownloadingId();
        String downloadingModelHash = getDownloadingModelHash();
        if (downloadingId == null || downloadingModelHash == null) {
            zza.d("ModelDownloadManager", "No new model is downloading.");
            removeOrCancelDownload();
            return false;
        }
        Integer downloadingModelStatusCode = getDownloadingModelStatusCode();
        GmsLogger gmsLogger = zza;
        String strValueOf = String.valueOf(downloadingModelStatusCode);
        String.valueOf(strValueOf).length();
        gmsLogger.d("ModelDownloadManager", "Download Status code: ".concat(String.valueOf(strValueOf)));
        if (downloadingModelStatusCode != null) {
            return Objects.equal(downloadingModelStatusCode, 8) && zzi(downloadingModelHash) != null;
        }
        removeOrCancelDownload();
        return false;
    }

    @KeepForSdk
    public boolean modelExistsLocally() throws MlKitException {
        return this.zzk.modelExistsLocally(this.zzg.getUniqueModelNameForPersist(), this.zzh);
    }

    @KeepForSdk
    public synchronized void removeOrCancelDownload() throws MlKitException {
        Long downloadingId = getDownloadingId();
        if (this.zzf != null && downloadingId != null) {
            zza.d("ModelDownloadManager", "Cancel or remove existing downloading task: ".concat(downloadingId.toString()));
            if (this.zzf.remove(downloadingId.longValue()) > 0 || getDownloadingModelStatusCode() == null) {
                this.zzk.deleteTempFilesInPrivateFolder(this.zzg.getUniqueModelNameForPersist(), this.zzg.getModelType());
                this.zzj.clearDownloadingModelInfo(this.zzg);
            }
        }
    }

    @KeepForSdk
    public void setDownloadConditions(DownloadConditions downloadConditions) {
        Preconditions.checkNotNull(downloadConditions, "DownloadConditions can not be null");
        this.zzn = downloadConditions;
    }

    @KeepForSdk
    public synchronized void updateLatestModelHashAndType(String str) throws MlKitException {
        this.zzj.setLatestModelHash(this.zzg, str);
        removeOrCancelDownload();
    }

    final synchronized ModelInfo zzg() throws MlKitException {
        boolean z;
        boolean zModelExistsLocally = modelExistsLocally();
        if (zModelExistsLocally) {
            zzlm zzlmVar = this.zzi;
            zzld zzldVarZzg = zzlp.zzg();
            RemoteModel remoteModel = this.zzg;
            zzlmVar.zzf(zzldVarZzg, remoteModel, zzie.NO_ERROR, false, remoteModel.getModelType(), zzik.LIVE);
        }
        ModelInfoRetrieverInterop modelInfoRetrieverInterop = this.zzl;
        if (modelInfoRetrieverInterop == null) {
            throw new MlKitException("Please include com.google.mlkit:linkfirebase sdk as your dependency when you try to download from Firebase.", 14);
        }
        ModelInfo modelInfoRetrieveRemoteModelInfo = modelInfoRetrieverInterop.retrieveRemoteModelInfo(this.zzg);
        if (modelInfoRetrieveRemoteModelInfo == null) {
            return null;
        }
        MlKitContext mlKitContext = this.zze;
        RemoteModel remoteModel2 = this.zzg;
        String modelHash = modelInfoRetrieveRemoteModelInfo.getModelHash();
        SharedPrefManager sharedPrefManager = SharedPrefManager.getInstance(mlKitContext);
        boolean zEquals = modelHash.equals(sharedPrefManager.getIncompatibleModelHash(remoteModel2));
        boolean z2 = false;
        if (zEquals && CommonUtils.getAppVersion(mlKitContext.getApplicationContext()).equals(sharedPrefManager.getPreviousAppVersion())) {
            zza.e("ModelDownloadManager", "The model is incompatible with TFLite and the app is not upgraded, do not download");
            z = false;
        } else {
            z = true;
        }
        if (!zModelExistsLocally) {
            this.zzj.clearLatestModelHash(this.zzg);
        }
        boolean z3 = !modelInfoRetrieveRemoteModelInfo.getModelHash().equals(SharedPrefManager.getInstance(this.zze).getLatestModelHash(this.zzg));
        if (!z) {
            z2 = z3;
        } else if (!zModelExistsLocally || z3) {
            return modelInfoRetrieveRemoteModelInfo;
        }
        if (zModelExistsLocally && (z2 ^ z)) {
            return null;
        }
        String modelName = this.zzg.getModelName();
        StringBuilder sb = new StringBuilder(String.valueOf(modelName).length() + 46);
        sb.append("The model ");
        sb.append(modelName);
        sb.append(" is incompatible with TFLite runtime");
        throw new MlKitException(sb.toString(), 100);
    }

    public final File zzi(String str) throws MlKitException {
        GmsLogger gmsLogger = zza;
        gmsLogger.d("ModelDownloadManager", "Model downloaded successfully");
        this.zzi.zzf(zzlp.zzg(), this.zzg, zzie.NO_ERROR, true, this.zzh, zzik.SUCCEEDED);
        ParcelFileDescriptor downloadedFile = getDownloadedFile();
        if (downloadedFile == null) {
            removeOrCancelDownload();
            return null;
        }
        gmsLogger.d("ModelDownloadManager", "moving downloaded model from external storage to private folder.");
        try {
            return this.zzm.moveModelToPrivateFolder(downloadedFile, str, this.zzg);
        } finally {
            removeOrCancelDownload();
        }
    }
}
