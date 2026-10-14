package com.nirvana.tools.crash;

import android.os.Looper;
import android.util.Log;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
class ThreadUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    private CrashUcSdk mCrashUcSdk;
    private Thread.UncaughtExceptionHandler mOtherExceptionHandler;
    private StackAnalyzer mStackAnalyzer = new StackAnalyzer();
    private OnCrashCallbackProxy onCrashCallbackProxy;

    public ThreadUncaughtExceptionHandler(CrashUcSdk crashUcSdk) {
        this.mCrashUcSdk = crashUcSdk;
    }

    public void initAddSdkConfig(SdkInfo sdkInfo) {
        this.mStackAnalyzer.initAddSdkConfig(sdkInfo);
    }

    boolean isMainThread(Thread thread) {
        return Looper.getMainLooper().getThread().getId() == thread.getId();
    }

    public void register() {
        this.mOtherExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void register(Thread thread) {
        this.mOtherExceptionHandler = thread.getUncaughtExceptionHandler();
        thread.setUncaughtExceptionHandler(this);
    }

    public void setCrashCallback(OnCrashCallbackProxy onCrashCallbackProxy) {
        this.onCrashCallbackProxy = onCrashCallbackProxy;
    }

    void throw2OtherHandler(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mOtherExceptionHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    public void unRegister() {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mOtherExceptionHandler;
        if (uncaughtExceptionHandler != null) {
            Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            boolean zIsMainThread = isMainThread(thread);
            String string = UUID.randomUUID().toString();
            String stackTraceString = Log.getStackTraceString(th);
            SdkInfo sdkInfoCheckJavaCrashInSdk = this.mStackAnalyzer.checkJavaCrashInSdk(stackTraceString);
            if ((zIsMainThread || sdkInfoCheckJavaCrashInSdk == null) ? false : true) {
                OnCrashCallbackProxy onCrashCallbackProxy = this.onCrashCallbackProxy;
                if (onCrashCallbackProxy != null) {
                    onCrashCallbackProxy.onCrashOccurred(thread.getName(), sdkInfoCheckJavaCrashInSdk.getSdkName(), stackTraceString, string, true, CrashSdk.CRASH_TYPE_JAVA);
                }
                HashMap map = new HashMap(1);
                map.put("uuid", string);
                this.mCrashUcSdk.uploadException(sdkInfoCheckJavaCrashInSdk, thread, th, map);
                return;
            }
            if (sdkInfoCheckJavaCrashInSdk != null && !this.mCrashUcSdk.isUcUsable() && this.onCrashCallbackProxy != null) {
                HashMap map2 = new HashMap(1);
                map2.put("uuid", string);
                this.mCrashUcSdk.generateCustomLogUploadItrace(sdkInfoCheckJavaCrashInSdk, thread, th, map2);
                this.onCrashCallbackProxy.onCrashOccurred(thread.getName(), sdkInfoCheckJavaCrashInSdk.getSdkName(), stackTraceString, string, false, CrashSdk.CRASH_TYPE_JAVA);
                this.onCrashCallbackProxy.onCrashUploadFailed(sdkInfoCheckJavaCrashInSdk.getSdkName(), stackTraceString, string);
            }
            throw2OtherHandler(thread, th);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
