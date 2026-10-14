package com.mobile.auth.gatewayauth.model;

import com.mobile.auth.gatewayauth.a;
import com.mobile.auth.gatewayauth.utils.g;
import com.nirvana.tools.jsoner.JSONUtils;
import com.nirvana.tools.jsoner.Jsoner;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class UStruct implements Jsoner, Serializable {
    private String accessCode;
    private String apiParams;
    private String authSdkCode;
    private String carrierFailedResultData;
    private String carrierSdkCode;
    private String carrierSdkMsg;
    private String carrierTraceId;
    private String carrierUrl;
    private String certifyId;
    private String crashId;
    private String crashThread;
    private String crashType;
    private String endTime;
    private String et;
    private String failRet;
    private Boolean isAnnihilated;
    private String isAuthPageLegal;
    private String isCache;
    private String isCarrierChanged;
    private String isCheckboxHidden;
    private String isChecked;
    private String isCrashDependencied;
    private String isFullScreen;
    private String isSuccess;
    private String isVertical;
    private String requestId;
    private String sessionId;
    private String startTime;
    private String topTraceId;
    private String wholeMS;

    public static final class Builder {
        private String accessCode;
        private Map<String, String> apiParams;
        private String authSdkCode;
        private String carrierSdkCode;
        private String carrierTraceId;
        private String carrierUrl;
        private String certifyId;
        private String crashId;
        private String crashThread;
        private String crashType;
        private long endTime;
        private String et;
        private String failRet;
        private Boolean isAnnihilated;
        private String isAuthPageLegal;
        private String isCarrierChanged;
        private String isCheckboxHidden;
        private String isChecked;
        private String isCrashDependencied;
        private String isFullScreen;
        private boolean isSuccess;
        private String isVertical;
        private String requestId;
        private String sessionId;
        private long startTime;
        private String topTraceId;

        private Builder() {
            this.isSuccess = true;
        }

        static /* synthetic */ String access$000(Builder builder) {
            try {
                return builder.requestId;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$100(Builder builder) {
            try {
                return builder.sessionId;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$1000(Builder builder) {
            try {
                return builder.isCheckboxHidden;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$1100(Builder builder) {
            try {
                return builder.isCarrierChanged;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$1200(Builder builder) {
            try {
                return builder.isAuthPageLegal;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$1300(Builder builder) {
            try {
                return builder.accessCode;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ boolean access$1400(Builder builder) {
            try {
                return builder.isSuccess;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return false;
                } catch (Throwable th2) {
                    a.a(th2);
                    return false;
                }
            }
        }

        static /* synthetic */ String access$1500(Builder builder) {
            try {
                return builder.failRet;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ long access$1600(Builder builder) {
            try {
                return builder.startTime;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return -1L;
                } catch (Throwable th2) {
                    a.a(th2);
                    return -1L;
                }
            }
        }

        static /* synthetic */ long access$1700(Builder builder) {
            try {
                return builder.endTime;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return -1L;
                } catch (Throwable th2) {
                    a.a(th2);
                    return -1L;
                }
            }
        }

        static /* synthetic */ Map access$1800(Builder builder) {
            try {
                return builder.apiParams;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$1900(Builder builder) {
            try {
                return builder.isCrashDependencied;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$200(Builder builder) {
            try {
                return builder.authSdkCode;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$2000(Builder builder) {
            try {
                return builder.et;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$2100(Builder builder) {
            try {
                return builder.certifyId;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ Boolean access$2200(Builder builder) {
            try {
                return builder.isAnnihilated;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$2300(Builder builder) {
            try {
                return builder.crashId;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$2400(Builder builder) {
            try {
                return builder.crashType;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$2500(Builder builder) {
            try {
                return builder.crashThread;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$300(Builder builder) {
            try {
                return builder.carrierTraceId;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$400(Builder builder) {
            try {
                return builder.carrierSdkCode;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$500(Builder builder) {
            try {
                return builder.topTraceId;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$600(Builder builder) {
            try {
                return builder.carrierUrl;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$700(Builder builder) {
            try {
                return builder.isFullScreen;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$800(Builder builder) {
            try {
                return builder.isVertical;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String access$900(Builder builder) {
            try {
                return builder.isChecked;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder accessCode(String str) {
            try {
                this.accessCode = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder authSdkCode(String str) {
            try {
                this.authSdkCode = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public UStruct build() {
            try {
                return new UStruct(this);
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder carrierSdkCode(String str) {
            try {
                this.carrierSdkCode = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder carrierTraceId(String str) {
            try {
                this.carrierTraceId = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder carrierUrl(String str) {
            try {
                this.carrierUrl = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder certifyId(String str) {
            try {
                this.certifyId = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder crashId(String str) {
            try {
                this.crashId = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder crashThread(String str) {
            try {
                this.crashThread = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder crashType(String str) {
            try {
                this.crashType = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder endTime(long j) {
            try {
                this.endTime = j;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder et(String str) {
            try {
                this.et = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder failRet(String str) {
            try {
                this.failRet = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isAnnihilated(boolean z) {
            try {
                this.isAnnihilated = Boolean.valueOf(z);
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isAuthPageLegal(String str) {
            try {
                this.isAuthPageLegal = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isCarrierChanged(String str) {
            try {
                this.isCarrierChanged = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isCheckboxHidden(String str) {
            try {
                this.isCheckboxHidden = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isChecked(String str) {
            try {
                this.isChecked = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isCrashDependencied(String str) {
            try {
                this.isCrashDependencied = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isFullScreen(String str) {
            try {
                this.isFullScreen = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isSuccess(boolean z) {
            try {
                this.isSuccess = z;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder isVertical(String str) {
            try {
                this.isVertical = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder putApiParams(String str, String str2) {
            try {
                if (this.apiParams == null) {
                    this.apiParams = new HashMap(5);
                }
                this.apiParams.put(str, str2);
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder requestId(String str) {
            try {
                this.requestId = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder sessionId(String str) {
            try {
                this.sessionId = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder startTime(long j) {
            try {
                this.startTime = j;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Builder topTraceId(String str) {
            try {
                this.topTraceId = str;
                return this;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }
    }

    public UStruct(MonitorStruct monitorStruct) {
        this.requestId = monitorStruct.getRequestId();
        this.sessionId = monitorStruct.getSessionId();
        this.authSdkCode = monitorStruct.getAuthSdkCode();
        this.carrierTraceId = monitorStruct.getCarrierTraceId();
        this.carrierSdkCode = monitorStruct.getCarrierSdkCode();
        this.topTraceId = monitorStruct.getTopTraceId();
        this.accessCode = monitorStruct.getAccessCode();
        this.isSuccess = String.valueOf(monitorStruct.isSuccess());
        this.failRet = monitorStruct.getFailRet();
        this.startTime = g.a(monitorStruct.getStartTime());
        this.endTime = g.a(monitorStruct.getEndTime());
        this.wholeMS = String.valueOf(monitorStruct.getEndTime() - monitorStruct.getStartTime());
        this.apiParams = monitorStruct.getApiParams() == null ? null : new JSONObject(monitorStruct.getApiParams()).toString();
        this.carrierFailedResultData = monitorStruct.getCarrierFailedResultData();
        this.carrierSdkMsg = monitorStruct.getCarrierSdkMsg();
        this.isCache = monitorStruct.isCache();
        this.certifyId = monitorStruct.getCertifyId();
    }

    private UStruct(Builder builder) {
        this.requestId = Builder.access$000(builder);
        this.sessionId = Builder.access$100(builder);
        this.authSdkCode = Builder.access$200(builder);
        this.carrierTraceId = Builder.access$300(builder);
        this.carrierSdkCode = Builder.access$400(builder);
        this.topTraceId = Builder.access$500(builder);
        this.carrierUrl = Builder.access$600(builder);
        this.isFullScreen = Builder.access$700(builder);
        this.isVertical = Builder.access$800(builder);
        this.isChecked = Builder.access$900(builder);
        this.isCheckboxHidden = Builder.access$1000(builder);
        this.isCarrierChanged = Builder.access$1100(builder);
        this.isAuthPageLegal = Builder.access$1200(builder);
        this.accessCode = Builder.access$1300(builder);
        this.isSuccess = String.valueOf(Builder.access$1400(builder));
        this.failRet = Builder.access$1500(builder);
        this.startTime = g.a(Builder.access$1600(builder));
        this.endTime = g.a(Builder.access$1700(builder));
        this.wholeMS = String.valueOf(Builder.access$1700(builder) - Builder.access$1600(builder));
        this.apiParams = Builder.access$1800(builder) == null ? null : new JSONObject(Builder.access$1800(builder)).toString();
        this.isCrashDependencied = Builder.access$1900(builder);
        this.et = Builder.access$2000(builder);
        this.certifyId = Builder.access$2100(builder);
        this.isAnnihilated = Builder.access$2200(builder);
        this.crashId = Builder.access$2300(builder);
        this.crashType = Builder.access$2400(builder);
        this.crashThread = Builder.access$2500(builder);
    }

    public static Builder newUStruct() {
        try {
            return new Builder();
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    @Override // com.nirvana.tools.jsoner.Jsoner
    public void fromJson(JSONObject jSONObject) {
        try {
            JSONUtils.fromJson(jSONObject, this, (List<Field>) null);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public String getAccessCode() {
        try {
            return this.accessCode;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getApiParams() {
        try {
            return this.apiParams;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getAuthSdkCode() {
        try {
            return this.authSdkCode;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCarrierFailedResultData() {
        try {
            return this.carrierFailedResultData;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCarrierSdkCode() {
        try {
            return this.carrierSdkCode;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCarrierSdkMsg() {
        try {
            return this.carrierSdkMsg;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCarrierTraceId() {
        try {
            return this.carrierTraceId;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCarrierUrl() {
        try {
            return this.carrierUrl;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCertifyId() {
        try {
            return this.certifyId;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCrashId() {
        try {
            return this.crashId;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCrashThread() {
        try {
            return this.crashThread;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getCrashType() {
        try {
            return this.crashType;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getEndTime() {
        try {
            return this.endTime;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getEt() {
        try {
            return this.et;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getFailRet() {
        try {
            return this.failRet;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsAuthPageLegal() {
        try {
            return this.isAuthPageLegal;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsCache() {
        try {
            return this.isCache;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsCarrierChanged() {
        try {
            return this.isCarrierChanged;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsCheckboxHidden() {
        try {
            return this.isCheckboxHidden;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsChecked() {
        try {
            return this.isChecked;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsCrashDependencied() {
        try {
            return this.isCrashDependencied;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsFullScreen() {
        try {
            return this.isFullScreen;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsSuccess() {
        try {
            return this.isSuccess;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getIsVertical() {
        try {
            return this.isVertical;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getRequestId() {
        try {
            return this.requestId;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getSessionId() {
        try {
            return this.sessionId;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getStartTime() {
        try {
            return this.startTime;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getTopTraceId() {
        try {
            return this.topTraceId;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getWholeMS() {
        try {
            return this.wholeMS;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public boolean isAnnihilated() {
        try {
            return this.isAnnihilated.booleanValue();
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
    }

    public void setAccessCode(String str) {
        try {
            this.accessCode = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setApiParams(String str) {
        try {
            this.apiParams = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setAuthSdkCode(String str) {
        try {
            this.authSdkCode = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setCarrierFailedResultData(String str) {
        try {
            this.carrierFailedResultData = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setCarrierSdkCode(String str) {
        try {
            this.carrierSdkCode = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setCarrierSdkMsg(String str) {
        try {
            this.carrierSdkMsg = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setCarrierTraceId(String str) {
        try {
            this.carrierTraceId = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setCarrierUrl(String str) {
        try {
            this.carrierUrl = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setEndTime(String str) {
        try {
            this.endTime = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setEt(String str) {
        try {
            this.et = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setFailRet(String str) {
        try {
            this.failRet = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsAuthPageLegal(String str) {
        try {
            this.isAuthPageLegal = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsCache(String str) {
        try {
            this.isCache = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsCarrierChanged(String str) {
        try {
            this.isCarrierChanged = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsCheckboxHidden(String str) {
        try {
            this.isCheckboxHidden = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsChecked(String str) {
        try {
            this.isChecked = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsCrashDependencied(String str) {
        try {
            this.isCrashDependencied = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsFullScreen(String str) {
        try {
            this.isFullScreen = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsSuccess(String str) {
        try {
            this.isSuccess = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setIsVertical(String str) {
        try {
            this.isVertical = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setRequestId(String str) {
        try {
            this.requestId = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setSessionId(String str) {
        try {
            this.sessionId = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setStartTime(String str) {
        try {
            this.startTime = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setTopTraceId(String str) {
        try {
            this.topTraceId = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setWholeMS(String str) {
        try {
            this.wholeMS = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    @Override // com.nirvana.tools.jsoner.Jsoner
    public JSONObject toJson() {
        try {
            return JSONUtils.toJson(this, null, true);
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }
}
