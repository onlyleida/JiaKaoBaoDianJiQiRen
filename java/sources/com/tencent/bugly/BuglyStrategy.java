package com.tencent.bugly;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BuglyStrategy {
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f13657f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13658g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13659h;
    private String i;
    private a u;
    private boolean j = true;
    private boolean k = true;
    private boolean l = false;
    private boolean m = false;
    private boolean n = true;
    private Class<?> o = null;
    private boolean p = true;
    private boolean q = true;
    private boolean r = true;
    private boolean s = true;
    private boolean t = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f13654a = 31;
    protected boolean b = false;
    private boolean v = false;

    public static class a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 100000;

        public synchronized Map<String, String> onCrashHandleStart(int i, String str, String str2, String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i, String str, String str2, String str3) {
            return null;
        }
    }

    public synchronized String getAppChannel() {
        String str = this.f13655d;
        if (str != null) {
            return str;
        }
        return com.tencent.bugly.crashreport.common.info.a.b().k;
    }

    public synchronized String getAppPackageName() {
        String str = this.f13656e;
        if (str != null) {
            return str;
        }
        return com.tencent.bugly.crashreport.common.info.a.b().c;
    }

    public synchronized long getAppReportDelay() {
        return this.f13657f;
    }

    public synchronized String getAppVersion() {
        String str = this.c;
        if (str != null) {
            return str;
        }
        return com.tencent.bugly.crashreport.common.info.a.b().i;
    }

    public synchronized int getCallBackType() {
        return this.f13654a;
    }

    public synchronized boolean getCloseErrorCallback() {
        return this.b;
    }

    public synchronized a getCrashHandleCallback() {
        return this.u;
    }

    public synchronized String getDeviceID() {
        return this.f13659h;
    }

    public synchronized String getDeviceModel() {
        return this.i;
    }

    public synchronized String getLibBuglySOFilePath() {
        return this.f13658g;
    }

    public synchronized Class<?> getUserInfoActivity() {
        return this.o;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.p;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.k;
    }

    public synchronized boolean isEnableCatchAnrTrace() {
        return this.l;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.j;
    }

    public boolean isEnableRecordAnrMainStack() {
        return this.m;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.n;
    }

    public boolean isMerged() {
        return this.v;
    }

    public boolean isReplaceOldChannel() {
        return this.q;
    }

    public synchronized boolean isUploadProcess() {
        return this.r;
    }

    public synchronized boolean isUploadSpotCrash() {
        return this.s;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.t;
    }

    public synchronized BuglyStrategy setAppChannel(String str) {
        this.f13655d = str;
        return this;
    }

    public synchronized BuglyStrategy setAppPackageName(String str) {
        this.f13656e = str;
        return this;
    }

    public synchronized BuglyStrategy setAppReportDelay(long j) {
        this.f13657f = j;
        return this;
    }

    public synchronized BuglyStrategy setAppVersion(String str) {
        this.c = str;
        return this;
    }

    public synchronized BuglyStrategy setBuglyLogUpload(boolean z) {
        this.p = z;
        return this;
    }

    public synchronized void setCallBackType(int i) {
        this.f13654a = i;
    }

    public synchronized void setCloseErrorCallback(boolean z) {
        this.b = z;
    }

    public synchronized BuglyStrategy setCrashHandleCallback(a aVar) {
        this.u = aVar;
        return this;
    }

    public synchronized BuglyStrategy setDeviceID(String str) {
        this.f13659h = str;
        return this;
    }

    public synchronized BuglyStrategy setDeviceModel(String str) {
        this.i = str;
        return this;
    }

    public synchronized BuglyStrategy setEnableANRCrashMonitor(boolean z) {
        this.k = z;
        return this;
    }

    public void setEnableCatchAnrTrace(boolean z) {
        this.l = z;
    }

    public synchronized BuglyStrategy setEnableNativeCrashMonitor(boolean z) {
        this.j = z;
        return this;
    }

    public void setEnableRecordAnrMainStack(boolean z) {
        this.m = z;
    }

    public synchronized BuglyStrategy setEnableUserInfo(boolean z) {
        this.n = z;
        return this;
    }

    public synchronized BuglyStrategy setLibBuglySOFilePath(String str) {
        this.f13658g = str;
        return this;
    }

    @Deprecated
    public void setMerged(boolean z) {
        this.v = z;
    }

    public synchronized BuglyStrategy setRecordUserInfoOnceADay(boolean z) {
        this.t = z;
        return this;
    }

    public void setReplaceOldChannel(boolean z) {
        this.q = z;
    }

    public synchronized BuglyStrategy setUploadProcess(boolean z) {
        this.r = z;
        return this;
    }

    public synchronized void setUploadSpotCrash(boolean z) {
        this.s = z;
    }

    public synchronized BuglyStrategy setUserInfoActivity(Class<?> cls) {
        this.o = cls;
        return this;
    }
}
