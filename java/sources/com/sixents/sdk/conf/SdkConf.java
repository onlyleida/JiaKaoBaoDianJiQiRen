package com.sixents.sdk.conf;

import com.sixents.sdk.base.IDiffDataCallBack;
import com.sixents.sdk.base.ILogCallBack;
import com.sixents.sdk.base.IStatusCallBack;

/* JADX INFO: loaded from: classes6.dex */
public class SdkConf {
    private String devID;
    private String devType;
    private IDiffDataCallBack diffDataCallBack;
    private String key;
    private int keyType;
    private ILogCallBack logCallBack;
    private int logPrintLevel;
    private String mountPoint;
    private String openApiHost;
    private int openApiPort;
    private String secret;
    private String serverHost;
    private int serverPort;
    private IStatusCallBack statusCallBack;
    private int timeout;

    public static final class LogPrintLevel {
        public static final int SIXENTS_LL_DEBUG = 4;
        public static final int SIXENTS_LL_ERROR = 1;
        public static final int SIXENTS_LL_INFO = 3;
        public static final int SIXENTS_LL_OFF = 0;
        public static final int SIXENTS_LL_WARN = 2;
    }

    public static class SdkConfBuilder {
        private String devID;
        private String devType;
        private IDiffDataCallBack diffDataCallBack;
        private String key;
        private int keyType;
        private ILogCallBack logCallBack;
        private int logPrintLevel;
        private String mountPoint;
        private String openApiHost;
        private int openApiPort;
        private String secret;
        private String serverHost;
        private int serverPort;
        private IStatusCallBack statusCallBack;
        private int timeout;

        public SdkConf build() {
            return new SdkConf(this);
        }

        public SdkConfBuilder devID(String str) {
            this.devID = str;
            return this;
        }

        public SdkConfBuilder devType(String str) {
            this.devType = str;
            return this;
        }

        public SdkConfBuilder diffDataCallBack(IDiffDataCallBack iDiffDataCallBack) {
            this.diffDataCallBack = iDiffDataCallBack;
            return this;
        }

        public SdkConfBuilder key(String str) {
            this.key = str;
            return this;
        }

        public SdkConfBuilder keyType(int i) {
            this.keyType = i;
            return this;
        }

        public SdkConfBuilder logCallBack(ILogCallBack iLogCallBack) {
            this.logCallBack = iLogCallBack;
            return this;
        }

        public SdkConfBuilder logPrintLevel(int i) {
            this.logPrintLevel = i;
            return this;
        }

        public SdkConfBuilder mountPoint(String str) {
            this.mountPoint = str;
            return this;
        }

        public SdkConfBuilder openApiHost(String str) {
            this.openApiHost = str;
            return this;
        }

        public SdkConfBuilder openApiPort(int i) {
            this.openApiPort = i;
            return this;
        }

        public SdkConfBuilder secret(String str) {
            this.secret = str;
            return this;
        }

        public SdkConfBuilder serverHost(String str) {
            this.serverHost = str;
            return this;
        }

        public SdkConfBuilder serverPort(int i) {
            this.serverPort = i;
            return this;
        }

        public SdkConfBuilder statusCallBack(IStatusCallBack iStatusCallBack) {
            this.statusCallBack = iStatusCallBack;
            return this;
        }

        public SdkConfBuilder timeOut(int i) {
            this.timeout = i;
            return this;
        }
    }

    public String getDevID() {
        return this.devID;
    }

    public String getDevType() {
        return this.devType;
    }

    public IDiffDataCallBack getDiffDataCallBack() {
        return this.diffDataCallBack;
    }

    public String getKey() {
        return this.key;
    }

    public int getKeyType() {
        return this.keyType;
    }

    public ILogCallBack getLogCallBack() {
        return this.logCallBack;
    }

    public int getLogPrintLevel() {
        return this.logPrintLevel;
    }

    public String getMountPoint() {
        return this.mountPoint;
    }

    public String getOpenApiHost() {
        return this.openApiHost;
    }

    public int getOpenApiPort() {
        return this.openApiPort;
    }

    public String getSecret() {
        return this.secret;
    }

    public String getServerHost() {
        return this.serverHost;
    }

    public int getServerPort() {
        return this.serverPort;
    }

    public IStatusCallBack getStatusCallBack() {
        return this.statusCallBack;
    }

    public int getTimeout() {
        return this.timeout;
    }

    public void setDevID(String str) {
        this.devID = str;
    }

    public void setDevType(String str) {
        this.devType = str;
    }

    public void setDiffDataCallBack(IDiffDataCallBack iDiffDataCallBack) {
        this.diffDataCallBack = iDiffDataCallBack;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setKeyType(int i) {
        this.keyType = i;
    }

    public void setLogCallBack(ILogCallBack iLogCallBack) {
        this.logCallBack = iLogCallBack;
    }

    public void setLogPrintLevel(int i) {
        this.logPrintLevel = i;
    }

    public void setMountPoint(String str) {
        this.mountPoint = str;
    }

    public void setOpenApiHost(String str) {
        this.openApiHost = str;
    }

    public void setOpenApiPort(int i) {
        this.openApiPort = i;
    }

    public void setSecret(String str) {
        this.secret = str;
    }

    public void setServerHost(String str) {
        this.serverHost = str;
    }

    public void setServerPort(int i) {
        this.serverPort = i;
    }

    public void setStatusCallBack(IStatusCallBack iStatusCallBack) {
        this.statusCallBack = iStatusCallBack;
    }

    public void setTimeout(int i) {
        this.timeout = i;
    }

    private SdkConf(SdkConfBuilder sdkConfBuilder) {
        this.keyType = sdkConfBuilder.keyType;
        this.key = sdkConfBuilder.key;
        this.secret = sdkConfBuilder.secret;
        this.devID = sdkConfBuilder.devID;
        this.devType = sdkConfBuilder.devType;
        this.openApiHost = sdkConfBuilder.openApiHost;
        this.openApiPort = sdkConfBuilder.openApiPort;
        this.serverHost = sdkConfBuilder.serverHost;
        this.serverPort = sdkConfBuilder.serverPort;
        this.mountPoint = sdkConfBuilder.mountPoint;
        this.timeout = sdkConfBuilder.timeout;
        this.logPrintLevel = sdkConfBuilder.logPrintLevel;
        this.diffDataCallBack = sdkConfBuilder.diffDataCallBack;
        this.statusCallBack = sdkConfBuilder.statusCallBack;
        this.logCallBack = sdkConfBuilder.logCallBack;
    }
}
