package com.mobile.auth.s;

import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.manager.RequestCallback;
import com.mobile.auth.gatewayauth.manager.base.c;
import com.mobile.auth.gatewayauth.manager.d;
import com.mobile.auth.gatewayauth.model.MonitorStruct;
import com.mobile.auth.gatewayauth.model.cucctoken.CUCCTokenRB;
import com.mobile.auth.x.b;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.mobile.auth.gatewayauth.manager.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f13585d = b.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mobile.auth.o.a f13586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f13587f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f13588g;

    public a(Context context, d dVar) {
        this.f13588g = context.getApplicationContext();
        this.f13587f = dVar;
        this.f13586e = dVar.a();
    }

    static /* synthetic */ com.mobile.auth.o.a a(a aVar) {
        try {
            return aVar.f13586e;
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

    private String a(String str, String str2, String str3) {
        try {
            if ("1".equals(str) && !TextUtils.isEmpty(str3) && str3.contains("请求超时")) {
                return ResultCode.CODE_ERROR_FUNCTION_TIME_OUT;
            }
            return ("1".equals(str) && !TextUtils.isEmpty(str3) && (str3.contains("移动网络未开启") || str3.contains(ResultCode.CUCC_MSG_ERROR_NET_ERROR))) ? ResultCode.CODE_ERROR_NO_MOBILE_NETWORK_FAIL : str2;
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

    private synchronized void a(final RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, c> requestCallback, final MonitorStruct monitorStruct, final String str) {
        try {
            this.f13585d.a((int) this.c, new com.mobile.auth.x.a() { // from class: com.mobile.auth.s.a.1
                @Override // com.mobile.auth.x.a
                public void a(String str2) {
                    a aVar;
                    RequestCallback requestCallback2;
                    String strValueOf;
                    String resultMsg;
                    MonitorStruct monitorStruct2;
                    String str3;
                    try {
                        a.a(a.this).a("cucc：", "getLoginInfo:", str2);
                        CUCCTokenRB cUCCTokenRBFromJson = null;
                        try {
                            if (!TextUtils.isEmpty(str2)) {
                                cUCCTokenRBFromJson = CUCCTokenRB.fromJson(str2);
                            }
                        } catch (Exception e2) {
                            a.a(a.this).d("CUCCValidManager init exception:", com.mobile.auth.gatewayauth.utils.b.b(e2));
                        }
                        if (cUCCTokenRBFromJson == null) {
                            a.a(a.this, requestCallback, Constant.CODE_ERROR_UNKNOWN_FAIL, "JSON转换失败", str2, monitorStruct, str);
                            return;
                        }
                        monitorStruct.setCarrierTraceId(cUCCTokenRBFromJson.getTraceId());
                        if (cUCCTokenRBFromJson.getResultCode() != 0 || cUCCTokenRBFromJson.getResultData() == null) {
                            aVar = a.this;
                            requestCallback2 = requestCallback;
                            strValueOf = String.valueOf(cUCCTokenRBFromJson.getResultCode());
                            resultMsg = cUCCTokenRBFromJson.getResultMsg();
                            monitorStruct2 = monitorStruct;
                            str3 = str;
                        } else {
                            String mobile = cUCCTokenRBFromJson.getResultData().getMobile();
                            String accessCode = cUCCTokenRBFromJson.getResultData().getAccessCode();
                            long expires = cUCCTokenRBFromJson.getResultData().getExpires();
                            if (!TextUtils.isEmpty(mobile) && !TextUtils.isEmpty(accessCode)) {
                                requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.C0256a.a().a(mobile).c(Constant.CUCC_PROTOCOL).d(Constant.CUCC_PROTOCOL_URL).b(accessCode).a(System.currentTimeMillis() + (expires * 1000)).a());
                                monitorStruct.setAccessCode(accessCode);
                                monitorStruct.setPhoneNumber(mobile);
                                a.a(a.this, String.valueOf(cUCCTokenRBFromJson.getResultCode()), "", "", true, monitorStruct);
                                return;
                            }
                            aVar = a.this;
                            requestCallback2 = requestCallback;
                            strValueOf = String.valueOf(cUCCTokenRBFromJson.getResultCode());
                            resultMsg = cUCCTokenRBFromJson.getResultMsg();
                            monitorStruct2 = monitorStruct;
                            str3 = str;
                        }
                        a.a(aVar, requestCallback2, strValueOf, resultMsg, str2, monitorStruct2, str3);
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

    private void a(RequestCallback<com.mobile.auth.gatewayauth.manager.a.c, c> requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
        try {
            a(str, str2, str3, false, monitorStruct);
            requestCallback.onError(c.a().d(com.mobile.auth.gatewayauth.utils.a.a(str, str2)).a(a(str, ResultCode.CODE_GET_TOKEN_FAIL, str2)).b(str2).c(str3).a());
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, c> requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct, String str4) {
        try {
            a(str, str2, str3, false, monitorStruct);
            requestCallback.onError(c.a().d(com.mobile.auth.gatewayauth.utils.a.a(str, str2)).a(a(str, str4, str2)).b(str2).c(str3).a());
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
            aVar.a((RequestCallback<com.mobile.auth.gatewayauth.manager.a.c, c>) requestCallback, str, str2, str3, monitorStruct);
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
            aVar.a((RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, c>) requestCallback, str, str2, str3, monitorStruct, str4);
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
                monitorStruct.setVendorKey(Constant.VENDOR_CUCC);
                com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.s.a.4
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
            return aVar.f13587f;
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
    public void a(String str, String str2) {
        try {
            super.a(str, str2);
            this.f13585d.a(this.f13588g, str, str2);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
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
    public synchronized void d(RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, c> requestCallback, com.mobile.auth.gatewayauth.manager.a.b bVar) {
        try {
            MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.putApiParam("timeout", String.valueOf(this.c));
            monitorStruct.setSessionId(bVar.c());
            monitorStruct.setRequestId(bVar.b());
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setAction(Constant.ACTION_CUCC_LOGIN_CODE);
            monitorStruct.setUrgency(1);
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
    public synchronized void e(final RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, c> requestCallback, com.mobile.auth.gatewayauth.manager.a.b bVar) {
        try {
            MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.putApiParam("timeout", String.valueOf(this.c));
            monitorStruct.setSessionId(bVar.c());
            monitorStruct.setRequestId(bVar.b());
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setAction(Constant.ACTION_CUCC_LOGIN_TOKEN);
            a(new RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, c>() { // from class: com.mobile.auth.s.a.2
                public void a(com.mobile.auth.gatewayauth.manager.a.C0256a c0256a) {
                    try {
                        requestCallback.onSuccess(c0256a);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                public void a(c cVar) {
                    try {
                        requestCallback.onError(cVar);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                public /* synthetic */ void onError(c cVar) {
                    try {
                        a(cVar);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.a.C0256a c0256a) {
                    try {
                        a(c0256a);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            }, monitorStruct, ResultCode.CODE_GET_TOKEN_FAIL);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public synchronized void f(final RequestCallback<com.mobile.auth.gatewayauth.manager.a.c, c> requestCallback, com.mobile.auth.gatewayauth.manager.a.b bVar) {
        try {
            final MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.putApiParam("timeout", String.valueOf(this.c));
            monitorStruct.setSessionId(bVar.c());
            monitorStruct.setRequestId(bVar.b());
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setAction(Constant.ACTION_CUCC_AUTH_TOKEN);
            this.f13585d.b((int) this.c, new com.mobile.auth.x.a() { // from class: com.mobile.auth.s.a.3
                @Override // com.mobile.auth.x.a
                public void a(String str) {
                    a aVar;
                    RequestCallback requestCallback2;
                    String strValueOf;
                    String resultMsg;
                    MonitorStruct monitorStruct2;
                    try {
                        a.a(a.this).a("cucc：", "getVerifyInfo:", str);
                        CUCCTokenRB cUCCTokenRBFromJson = null;
                        try {
                            if (!TextUtils.isEmpty(str)) {
                                cUCCTokenRBFromJson = CUCCTokenRB.fromJson(str);
                            }
                        } catch (Exception e2) {
                            a.a(a.this).d("CUCCValidManager init exception:", com.mobile.auth.gatewayauth.utils.b.b(e2));
                        }
                        if (cUCCTokenRBFromJson == null) {
                            a.a(a.this, requestCallback, Constant.CODE_ERROR_UNKNOWN_FAIL, "JSON转换失败", str, monitorStruct);
                            return;
                        }
                        monitorStruct.setCarrierTraceId(cUCCTokenRBFromJson.getTraceId());
                        if (cUCCTokenRBFromJson.getResultCode() != 0 || cUCCTokenRBFromJson.getResultData() == null) {
                            aVar = a.this;
                            requestCallback2 = requestCallback;
                            strValueOf = String.valueOf(cUCCTokenRBFromJson.getResultCode());
                            resultMsg = cUCCTokenRBFromJson.getResultMsg();
                            monitorStruct2 = monitorStruct;
                        } else {
                            String accessCode = cUCCTokenRBFromJson.getResultData().getAccessCode();
                            long expires = cUCCTokenRBFromJson.getResultData().getExpires();
                            if (!TextUtils.isEmpty(accessCode)) {
                                monitorStruct.setAccessCode(accessCode);
                                a.a(a.this, String.valueOf(cUCCTokenRBFromJson.getResultCode()), "", "", true, monitorStruct);
                                requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.c.a().a(accessCode).a(System.currentTimeMillis() + (expires * 1000)).a());
                                return;
                            } else {
                                aVar = a.this;
                                requestCallback2 = requestCallback;
                                strValueOf = String.valueOf(cUCCTokenRBFromJson.getResultCode());
                                resultMsg = cUCCTokenRBFromJson.getResultMsg();
                                monitorStruct2 = monitorStruct;
                            }
                        }
                        a.a(aVar, requestCallback2, strValueOf, resultMsg, str, monitorStruct2);
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
