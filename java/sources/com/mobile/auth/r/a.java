package com.mobile.auth.r;

import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.a.c;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.manager.RequestCallback;
import com.mobile.auth.gatewayauth.manager.d;
import com.mobile.auth.gatewayauth.model.MonitorStruct;
import com.mobile.auth.gatewayauth.model.ctcctoken.CTCCTokenRet;
import com.mobile.auth.gatewayauth.model.ctcctoken.Data;
import com.mobile.auth.gatewayauth.utils.b;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.mobile.auth.gatewayauth.manager.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f13576d = new c() { // from class: com.mobile.auth.r.a.1
        @Override // com.mobile.auth.a.c
        public void a(String str, String str2) {
            try {
                a.a(a.this).a(str, str2);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }

        @Override // com.mobile.auth.a.c
        public void a(String str, String str2, Throwable th) {
            try {
                if (th != null) {
                    a.a(a.this).c(str, str2, b.b(th));
                } else {
                    a.a(a.this).c(str, str2);
                }
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                }
            }
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mobile.auth.o.a f13577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f13578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f13579g;

    public a(Context context, d dVar) {
        this.f13579g = context.getApplicationContext();
        this.f13578f = dVar;
        this.f13577e = dVar.a();
    }

    static /* synthetic */ com.mobile.auth.o.a a(a aVar) {
        try {
            return aVar.f13577e;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private synchronized void a(final RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, final MonitorStruct monitorStruct, final String str) {
        try {
            com.mobile.auth.a.a.a((int) this.c, (int) this.c, (int) this.c, this.f13576d);
            com.mobile.auth.a.a.a(this.f13579g, this.f13370a, this.b, new com.mobile.auth.a.b() { // from class: com.mobile.auth.r.a.2
                @Override // com.mobile.auth.a.b
                public void a(String str2) {
                    a aVar;
                    RequestCallback requestCallback2;
                    String strValueOf;
                    String msg;
                    MonitorStruct monitorStruct2;
                    String str3;
                    try {
                        a.a(a.this).a("ctcc：", "getLoginInfo:", str2);
                        if (TextUtils.isEmpty(str2)) {
                            a.a(a.this, requestCallback, Constant.CODE_ERROR_UNKNOWN_FAIL, "CTCC 获得的手机授权码结果为空", "", monitorStruct, str);
                            return;
                        }
                        try {
                            CTCCTokenRet cTCCTokenRetFromJson = CTCCTokenRet.fromJson(str2);
                            if (cTCCTokenRetFromJson != null) {
                                monitorStruct.setCarrierTraceId(cTCCTokenRetFromJson.getReqId());
                                if (cTCCTokenRetFromJson.getResult() != 0 || cTCCTokenRetFromJson.getData() == null) {
                                    aVar = a.this;
                                    requestCallback2 = requestCallback;
                                    strValueOf = String.valueOf(cTCCTokenRetFromJson.getResult());
                                    msg = cTCCTokenRetFromJson.getMsg();
                                    monitorStruct2 = monitorStruct;
                                    str3 = str;
                                } else {
                                    Data data = cTCCTokenRetFromJson.getData();
                                    String number = data.getNumber();
                                    String accessCode = data.getAccessCode();
                                    if (!TextUtils.isEmpty(number)) {
                                        requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.C0256a.a().a(number).c(Constant.CTCC_PROTOCOL).d(Constant.CTCC_PROTOCOL_URL).b(accessCode).a(System.currentTimeMillis() + ((long) (data.getExpiredTime() * 1000))).a());
                                        monitorStruct.setPhoneNumber(number);
                                        monitorStruct.setAccessCode(accessCode);
                                        a.a(a.this, String.valueOf(cTCCTokenRetFromJson.getResult()), "", "", true, monitorStruct);
                                        return;
                                    }
                                    aVar = a.this;
                                    requestCallback2 = requestCallback;
                                    strValueOf = String.valueOf(cTCCTokenRetFromJson.getResult());
                                    msg = cTCCTokenRetFromJson.getMsg();
                                    monitorStruct2 = monitorStruct;
                                    str3 = str;
                                }
                                a.a(aVar, requestCallback2, strValueOf, msg, str2, monitorStruct2, str3);
                            }
                        } catch (Exception e2) {
                            a.a(a.this).d("CTCCValidManager init exception:", b.b(e2));
                            a.a(a.this, requestCallback, Constant.CODE_ERROR_UNKNOWN_FAIL, "JSON转换失败", str2, monitorStruct, str);
                        }
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(RequestCallback<com.mobile.auth.gatewayauth.manager.a.c, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
        try {
            a(str, str2, str3, false, monitorStruct);
            requestCallback.onError(com.mobile.auth.gatewayauth.manager.base.c.a().d(com.mobile.auth.gatewayauth.utils.a.a(str, str2)).a(b(str, ResultCode.CODE_GET_TOKEN_FAIL)).b(str2).c(str3).a());
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct, String str4) {
        try {
            a(str, str2, str3, false, monitorStruct);
            requestCallback.onError(com.mobile.auth.gatewayauth.manager.base.c.a().d(com.mobile.auth.gatewayauth.utils.a.a(str, str2)).a(b(str, str4)).b(str2).c(str3).a());
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(a aVar, RequestCallback requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
        try {
            aVar.a((RequestCallback<com.mobile.auth.gatewayauth.manager.a.c, com.mobile.auth.gatewayauth.manager.base.c>) requestCallback, str, str2, str3, monitorStruct);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(a aVar, RequestCallback requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct, String str4) {
        try {
            aVar.a((RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c>) requestCallback, str, str2, str3, monitorStruct, str4);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(a aVar, String str, String str2, String str3, boolean z, MonitorStruct monitorStruct) {
        try {
            aVar.a(str, str2, str3, z, monitorStruct);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(String str, String str2, String str3, boolean z, final MonitorStruct monitorStruct) {
        if (monitorStruct != null) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                monitorStruct.setCarrierSdkCode(str);
                monitorStruct.setSuccess(z);
                monitorStruct.setEndTime(jCurrentTimeMillis);
                if (!z) {
                    monitorStruct.setCarrierSdkMsg(str2);
                    monitorStruct.setFailRet(com.mobile.auth.gatewayauth.utils.a.a(str, str2));
                    monitorStruct.setCarrierFailedResultData(str3);
                }
                monitorStruct.setUrgency(1);
                monitorStruct.setVendorKey(Constant.VENDOR_CTCC);
                b.a(new Runnable() { // from class: com.mobile.auth.r.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            a.a(a.this).a(a.b(a.this).a(monitorStruct), monitorStruct.getUrgency());
                        } catch (Throwable th) {
                            try {
                                com.mobile.auth.gatewayauth.a.a(th);
                            } catch (Throwable th2) {
                                com.mobile.auth.gatewayauth.a.a(th2);
                            }
                        }
                    }
                });
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    static /* synthetic */ d b(a aVar) {
        try {
            return aVar.f13578f;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private String b(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            try {
                Integer numValueOf = Integer.valueOf(Integer.parseInt(str));
                if (numValueOf.intValue() >= 10000 && numValueOf.intValue() <= 40000) {
                    return str2;
                }
            } catch (Exception unused) {
            }
            switch (str) {
                case "-10002":
                    return "600025";
                case "80000":
                case "80005":
                case "80800":
                case "-8003":
                case "-720002":
                    return ResultCode.CODE_ERROR_FUNCTION_TIME_OUT;
                case "-8100":
                case "80003":
                case "80004":
                case "-8004":
                    return Constant.CODE_ERROR_NO_MOBILE_NETWORK_FAIL;
                default:
                    return str2;
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public void a(boolean z) {
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public void c() {
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public synchronized void d(RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, com.mobile.auth.gatewayauth.manager.a.b bVar) {
        try {
            MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.putApiParam("timeout", String.valueOf(this.c));
            monitorStruct.setSessionId(bVar.c());
            monitorStruct.setRequestId(bVar.b());
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setAction(Constant.ACTION_CTCC_LOGIN_CODE);
            a(requestCallback, monitorStruct, ResultCode.CODE_GET_MASK_FAIL);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public synchronized void e(RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, com.mobile.auth.gatewayauth.manager.a.b bVar) {
        try {
            MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.putApiParam("timeout", String.valueOf(this.c));
            monitorStruct.setSessionId(bVar.c());
            monitorStruct.setRequestId(bVar.b());
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setAction(Constant.ACTION_CTCC_LOGIN_TOKEN);
            a(requestCallback, monitorStruct, ResultCode.CODE_GET_TOKEN_FAIL);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public synchronized void f(final RequestCallback<com.mobile.auth.gatewayauth.manager.a.c, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, com.mobile.auth.gatewayauth.manager.a.b bVar) {
        try {
            final MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.putApiParam("timeout", String.valueOf(this.c));
            monitorStruct.setSessionId(bVar.c());
            monitorStruct.setRequestId(bVar.b());
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setAction(Constant.ACTION_CTCC_AUTH_TOKEN);
            com.mobile.auth.a.a.a((int) this.c, (int) this.c, (int) this.c, this.f13576d);
            com.mobile.auth.a.a.a(this.f13579g, this.f13370a, this.b, new com.mobile.auth.a.b() { // from class: com.mobile.auth.r.a.3
                @Override // com.mobile.auth.a.b
                public void a(String str) {
                    a aVar;
                    RequestCallback requestCallback2;
                    String strValueOf;
                    String msg;
                    MonitorStruct monitorStruct2;
                    try {
                        a.a(a.this).a("ctcc：", "getVerifyInfo:", str);
                        if (TextUtils.isEmpty(str)) {
                            a.a(a.this, requestCallback, Constant.CODE_ERROR_UNKNOWN_FAIL, "CTCC 获得认证Token结果为空", "", monitorStruct);
                            return;
                        }
                        try {
                            CTCCTokenRet cTCCTokenRetFromJson = CTCCTokenRet.fromJson(str);
                            if (cTCCTokenRetFromJson != null) {
                                monitorStruct.setCarrierTraceId(cTCCTokenRetFromJson.getReqId());
                                if (cTCCTokenRetFromJson.getResult() != 0 || cTCCTokenRetFromJson.getData() == null) {
                                    aVar = a.this;
                                    requestCallback2 = requestCallback;
                                    strValueOf = String.valueOf(cTCCTokenRetFromJson.getResult());
                                    msg = cTCCTokenRetFromJson.getMsg();
                                    monitorStruct2 = monitorStruct;
                                } else {
                                    Data data = cTCCTokenRetFromJson.getData();
                                    String accessCode = data.getAccessCode();
                                    if (!TextUtils.isEmpty(accessCode)) {
                                        monitorStruct.setAccessCode(accessCode);
                                        a.a(a.this, String.valueOf(cTCCTokenRetFromJson.getResult()), cTCCTokenRetFromJson.getMsg(), "", true, monitorStruct);
                                        requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.c.a().a(accessCode).a(System.currentTimeMillis() + ((long) (data.getExpiredTime() * 1000))).a());
                                        return;
                                    } else {
                                        aVar = a.this;
                                        requestCallback2 = requestCallback;
                                        strValueOf = String.valueOf(cTCCTokenRetFromJson.getResult());
                                        msg = cTCCTokenRetFromJson.getMsg();
                                        monitorStruct2 = monitorStruct;
                                    }
                                }
                                a.a(aVar, requestCallback2, strValueOf, msg, str, monitorStruct2);
                            }
                        } catch (Exception e2) {
                            a.a(a.this).d("CTCCValidManager init exception:", b.b(e2));
                            a.a(a.this, requestCallback, Constant.CODE_ERROR_UNKNOWN_FAIL, "JSON转换失败", str, monitorStruct);
                        }
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
