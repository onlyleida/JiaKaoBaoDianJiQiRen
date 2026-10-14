package com.mobile.auth.q;

import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.e.e;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.manager.RequestCallback;
import com.mobile.auth.gatewayauth.model.MonitorStruct;
import com.tencent.open.SocialConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c extends com.mobile.auth.gatewayauth.manager.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f13567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mobile.auth.gatewayauth.manager.d f13568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mobile.auth.o.a f13569f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f13570g;

    public c(Context context, com.mobile.auth.gatewayauth.manager.d dVar) {
        Context applicationContext = context.getApplicationContext();
        this.f13570g = applicationContext;
        this.f13567d = a.a(applicationContext);
        this.f13568e = dVar;
        this.f13569f = dVar.a();
    }

    static /* synthetic */ com.mobile.auth.o.a a(c cVar) {
        try {
            return cVar.f13569f;
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

    private void a(RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
        try {
            a(str, str2, str3, false, monitorStruct);
            requestCallback.onError(com.mobile.auth.gatewayauth.manager.base.c.a().d(com.mobile.auth.gatewayauth.utils.a.a(str, str2)).a(b(str, ResultCode.CODE_GET_MASK_FAIL)).c(str3).b(str2).a());
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(c cVar, RequestCallback requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
        try {
            cVar.a((RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c>) requestCallback, str, str2, str3, monitorStruct);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(c cVar, String str, String str2, String str3, boolean z, MonitorStruct monitorStruct) {
        try {
            cVar.a(str, str2, str3, z, monitorStruct);
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
                monitorStruct.setVendorKey(Constant.VENDOR_CMCC);
                com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.q.c.4
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            c.a(c.this).a(c.d(c.this).a(monitorStruct), monitorStruct.getUrgency());
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

    static /* synthetic */ long b(c cVar) {
        try {
            return cVar.c;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1L;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1L;
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
                case "102203":
                    return "600025";
                case "102101":
                case "102103":
                    return Constant.CODE_ERROR_NO_MOBILE_NETWORK_FAIL;
                case "102507":
                case "200023":
                case "200024":
                    return ResultCode.CODE_ERROR_FUNCTION_TIME_OUT;
                case "200027":
                case "200022":
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

    private void b(RequestCallback<com.mobile.auth.gatewayauth.manager.a.c, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
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

    static /* synthetic */ void b(c cVar, RequestCallback requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
        try {
            cVar.c(requestCallback, str, str2, str3, monitorStruct);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ a c(c cVar) {
        try {
            return cVar.f13567d;
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

    private void c(RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
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

    static /* synthetic */ void c(c cVar, RequestCallback requestCallback, String str, String str2, String str3, MonitorStruct monitorStruct) {
        try {
            cVar.b(requestCallback, str, str2, str3, monitorStruct);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ com.mobile.auth.gatewayauth.manager.d d(c cVar) {
        try {
            return cVar.f13568e;
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
    public void a(long j) {
        try {
            super.a(j);
            this.f13567d.a(this.c);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public void a(String str, String str2) {
        try {
            super.a(str, str2);
            this.f13567d.a(str);
            this.f13567d.b(str2);
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
        try {
            com.mobile.auth.e.a.a(z);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public void c() {
        try {
            this.f13567d.b();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public synchronized void d(final RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, com.mobile.auth.gatewayauth.manager.a.b bVar) {
        try {
            final MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.putApiParam("timeout", String.valueOf(this.c));
            monitorStruct.setSessionId(bVar.c());
            monitorStruct.setRequestId(bVar.b());
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setAction(Constant.ACTION_CMCC_LOGIN_CODE);
            if (!TextUtils.isEmpty(this.f13370a) && !TextUtils.isEmpty(this.b)) {
                this.f13567d.a(new e() { // from class: com.mobile.auth.q.c.1
                    /* JADX WARN: Code duplicated, block: B:19:0x006a  */
                    /* JADX WARN: Code duplicated, block: B:20:0x006b A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:4:0x0008, B:5:0x000d, B:8:0x001b, B:17:0x0038, B:21:0x006f, B:23:0x007f, B:24:0x00a4, B:20:0x006b, B:10:0x0021, B:12:0x0027, B:13:0x002c, B:15:0x0032), top: B:32:0x0008 }] */
                    /* JADX WARN: Code duplicated, block: B:23:0x007f A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:4:0x0008, B:5:0x000d, B:8:0x001b, B:17:0x0038, B:21:0x006f, B:23:0x007f, B:24:0x00a4, B:20:0x006b, B:10:0x0021, B:12:0x0027, B:13:0x002c, B:15:0x0032), top: B:32:0x0008 }] */
                    /* JADX WARN: Code duplicated, block: B:24:0x00a4 A[Catch: all -> 0x00b2, TRY_LEAVE, TryCatch #0 {all -> 0x00b2, blocks: (B:4:0x0008, B:5:0x000d, B:8:0x001b, B:17:0x0038, B:21:0x006f, B:23:0x007f, B:24:0x00a4, B:20:0x006b, B:10:0x0021, B:12:0x0027, B:13:0x002c, B:15:0x0032), top: B:32:0x0008 }] */
                    @Override // com.mobile.auth.e.e
                    public void a(int i, JSONObject jSONObject) {
                        String str;
                        String strOptString;
                        String strOptString2;
                        if (jSONObject == null) {
                            try {
                                jSONObject = new JSONObject();
                            } catch (Throwable th) {
                                try {
                                    com.mobile.auth.gatewayauth.a.a(th);
                                    return;
                                } catch (Throwable th2) {
                                    com.mobile.auth.gatewayauth.a.a(th2);
                                    return;
                                }
                            }
                        }
                        String strOptString3 = jSONObject.optString("resultCode");
                        String string = "";
                        if (jSONObject.has("resultDesc")) {
                            strOptString = jSONObject.optString("resultDesc");
                        } else {
                            if (!jSONObject.has(SocialConstants.PARAM_APP_DESC)) {
                                if (jSONObject.has("resultString")) {
                                    strOptString = jSONObject.optString("resultString");
                                } else {
                                    str = "";
                                }
                                String strOptString4 = jSONObject.optString("traceId");
                                strOptString2 = jSONObject.optString("securityphone");
                                com.mobile.auth.o.a aVarA = c.a(c.this);
                                String[] strArr = new String[7];
                                strArr[0] = "cmcc：";
                                strArr[1] = "getLoginInfo:code=";
                                strArr[2] = strOptString3;
                                strArr[3] = ",msg=";
                                strArr[4] = str;
                                strArr[5] = ",json=";
                                if (jSONObject == null) {
                                    string = jSONObject.toString();
                                }
                                strArr[6] = string;
                                aVarA.a(strArr);
                                monitorStruct.setCarrierTraceId(strOptString4);
                                if (!TextUtils.isEmpty(strOptString2)) {
                                    c.a(c.this, requestCallback, strOptString3, str, jSONObject.toString(), monitorStruct);
                                    return;
                                }
                                requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.C0256a.a().a(strOptString2).a());
                                monitorStruct.setPhoneNumber(strOptString2);
                                c.a(c.this, strOptString3, "", "", true, monitorStruct);
                            }
                            strOptString = jSONObject.optString(SocialConstants.PARAM_APP_DESC);
                        }
                        str = strOptString;
                        String strOptString5 = jSONObject.optString("traceId");
                        strOptString2 = jSONObject.optString("securityphone");
                        com.mobile.auth.o.a aVarA2 = c.a(c.this);
                        String[] strArr2 = new String[7];
                        strArr2[0] = "cmcc：";
                        strArr2[1] = "getLoginInfo:code=";
                        strArr2[2] = strOptString3;
                        strArr2[3] = ",msg=";
                        strArr2[4] = str;
                        strArr2[5] = ",json=";
                        if (jSONObject == null) {
                            string = jSONObject.toString();
                        }
                        strArr2[6] = string;
                        aVarA2.a(strArr2);
                        monitorStruct.setCarrierTraceId(strOptString5);
                        if (!TextUtils.isEmpty(strOptString2)) {
                            c.a(c.this, requestCallback, strOptString3, str, jSONObject.toString(), monitorStruct);
                            return;
                        }
                        requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.C0256a.a().a(strOptString2).a());
                        monitorStruct.setPhoneNumber(strOptString2);
                        c.a(c.this, strOptString3, "", "", true, monitorStruct);
                    }
                }, -1);
                return;
            }
            a(requestCallback, ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, ResultCode.MSG_ERROR_ANALYZE_SDK_INFO, "", monitorStruct);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.a
    public synchronized void e(final RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, final com.mobile.auth.gatewayauth.manager.a.b bVar) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b() { // from class: com.mobile.auth.q.c.2
                @Override // com.mobile.auth.gatewayauth.utils.b.AbstractRunnableC0261b
                protected void a() {
                    try {
                        final MonitorStruct monitorStruct = new MonitorStruct();
                        monitorStruct.putApiParam("timeout", String.valueOf(c.b(c.this)));
                        monitorStruct.setSessionId(bVar.c());
                        monitorStruct.setRequestId(bVar.b());
                        monitorStruct.setStartTime(System.currentTimeMillis());
                        monitorStruct.setAction(Constant.ACTION_CMCC_LOGIN_TOKEN);
                        c.c(c.this).a(new e() { // from class: com.mobile.auth.q.c.2.1
                            /* JADX WARN: Code duplicated, block: B:19:0x0071  */
                            /* JADX WARN: Code duplicated, block: B:20:0x0072 A[Catch: all -> 0x00ce, TryCatch #1 {all -> 0x00ce, blocks: (B:4:0x000a, B:5:0x000f, B:8:0x001d, B:17:0x003a, B:21:0x0076, B:23:0x0081, B:24:0x00be, B:20:0x0072, B:10:0x0023, B:12:0x0029, B:13:0x002e, B:15:0x0034), top: B:34:0x000a }] */
                            /* JADX WARN: Code duplicated, block: B:23:0x0081 A[Catch: all -> 0x00ce, TryCatch #1 {all -> 0x00ce, blocks: (B:4:0x000a, B:5:0x000f, B:8:0x001d, B:17:0x003a, B:21:0x0076, B:23:0x0081, B:24:0x00be, B:20:0x0072, B:10:0x0023, B:12:0x0029, B:13:0x002e, B:15:0x0034), top: B:34:0x000a }] */
                            /* JADX WARN: Code duplicated, block: B:24:0x00be A[Catch: all -> 0x00ce, TRY_LEAVE, TryCatch #1 {all -> 0x00ce, blocks: (B:4:0x000a, B:5:0x000f, B:8:0x001d, B:17:0x003a, B:21:0x0076, B:23:0x0081, B:24:0x00be, B:20:0x0072, B:10:0x0023, B:12:0x0029, B:13:0x002e, B:15:0x0034), top: B:34:0x000a }] */
                            @Override // com.mobile.auth.e.e
                            public void a(int i, JSONObject jSONObject) {
                                String str;
                                String strOptString;
                                String strOptString2;
                                if (jSONObject == null) {
                                    try {
                                        jSONObject = new JSONObject();
                                    } catch (Throwable th) {
                                        try {
                                            com.mobile.auth.gatewayauth.a.a(th);
                                            return;
                                        } catch (Throwable th2) {
                                            com.mobile.auth.gatewayauth.a.a(th2);
                                            return;
                                        }
                                    }
                                }
                                String strOptString3 = jSONObject.optString("resultCode");
                                String string = "";
                                if (jSONObject.has("resultDesc")) {
                                    strOptString = jSONObject.optString("resultDesc");
                                } else {
                                    if (!jSONObject.has(SocialConstants.PARAM_APP_DESC)) {
                                        if (jSONObject.has("resultString")) {
                                            strOptString = jSONObject.optString("resultString");
                                        } else {
                                            str = "";
                                        }
                                        String strOptString4 = jSONObject.optString("traceId");
                                        strOptString2 = jSONObject.optString("token");
                                        monitorStruct.setCarrierTraceId(strOptString4);
                                        com.mobile.auth.o.a aVarA = c.a(c.this);
                                        String[] strArr = new String[7];
                                        strArr[0] = "cmcc：";
                                        strArr[1] = "getLoginToken:code=";
                                        strArr[2] = strOptString3;
                                        strArr[3] = ",msg=";
                                        strArr[4] = str;
                                        strArr[5] = ",json=";
                                        if (jSONObject == null) {
                                            string = jSONObject.toString();
                                        }
                                        strArr[6] = string;
                                        aVarA.a(strArr);
                                        if (!TextUtils.isEmpty(strOptString2)) {
                                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                            c.b(c.this, requestCallback, strOptString3, str, jSONObject.toString(), monitorStruct);
                                        } else {
                                            monitorStruct.setAccessCode(jSONObject.optString("token"));
                                            c.a(c.this, strOptString3, "", "", true, monitorStruct);
                                            requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.C0256a.a().b(jSONObject.optString("token")).a(System.currentTimeMillis() + 120000).a());
                                        }
                                    }
                                    strOptString = jSONObject.optString(SocialConstants.PARAM_APP_DESC);
                                }
                                str = strOptString;
                                String strOptString5 = jSONObject.optString("traceId");
                                strOptString2 = jSONObject.optString("token");
                                monitorStruct.setCarrierTraceId(strOptString5);
                                com.mobile.auth.o.a aVarA2 = c.a(c.this);
                                String[] strArr2 = new String[7];
                                strArr2[0] = "cmcc：";
                                strArr2[1] = "getLoginToken:code=";
                                strArr2[2] = strOptString3;
                                strArr2[3] = ",msg=";
                                strArr2[4] = str;
                                strArr2[5] = ",json=";
                                if (jSONObject == null) {
                                    string = jSONObject.toString();
                                }
                                strArr2[6] = string;
                                aVarA2.a(strArr2);
                                if (!TextUtils.isEmpty(strOptString2)) {
                                    AnonymousClass2 anonymousClass3 = AnonymousClass2.this;
                                    c.b(c.this, requestCallback, strOptString3, str, jSONObject.toString(), monitorStruct);
                                } else {
                                    monitorStruct.setAccessCode(jSONObject.optString("token"));
                                    c.a(c.this, strOptString3, "", "", true, monitorStruct);
                                    requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.C0256a.a().b(jSONObject.optString("token")).a(System.currentTimeMillis() + 120000).a());
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
            });
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
            monitorStruct.setAction(Constant.ACTION_CMCC_AUTH_TOKEN);
            if (!TextUtils.isEmpty(this.f13370a) && !TextUtils.isEmpty(this.b)) {
                this.f13567d.b(new e() { // from class: com.mobile.auth.q.c.3
                    /* JADX WARN: Code duplicated, block: B:18:0x004a A[Catch: all -> 0x00ab, TryCatch #1 {all -> 0x00ab, blocks: (B:4:0x0008, B:5:0x000d, B:7:0x001b, B:16:0x0038, B:18:0x004a, B:19:0x009d, B:9:0x0021, B:11:0x0027, B:12:0x002c, B:14:0x0032), top: B:29:0x0008 }] */
                    /* JADX WARN: Code duplicated, block: B:19:0x009d A[Catch: all -> 0x00ab, TRY_LEAVE, TryCatch #1 {all -> 0x00ab, blocks: (B:4:0x0008, B:5:0x000d, B:7:0x001b, B:16:0x0038, B:18:0x004a, B:19:0x009d, B:9:0x0021, B:11:0x0027, B:12:0x002c, B:14:0x0032), top: B:29:0x0008 }] */
                    @Override // com.mobile.auth.e.e
                    public void a(int i, JSONObject jSONObject) {
                        String str;
                        String strOptString;
                        String strOptString2;
                        String strOptString3;
                        if (jSONObject == null) {
                            try {
                                jSONObject = new JSONObject();
                            } catch (Throwable th) {
                                try {
                                    com.mobile.auth.gatewayauth.a.a(th);
                                    return;
                                } catch (Throwable th2) {
                                    com.mobile.auth.gatewayauth.a.a(th2);
                                    return;
                                }
                            }
                        }
                        String strOptString4 = jSONObject.optString("resultCode");
                        if (jSONObject.has("resultDesc")) {
                            strOptString = jSONObject.optString("resultDesc");
                        } else {
                            if (!jSONObject.has(SocialConstants.PARAM_APP_DESC)) {
                                if (jSONObject.has("resultString")) {
                                    strOptString = jSONObject.optString("resultString");
                                } else {
                                    str = "";
                                }
                                strOptString2 = jSONObject.optString("traceId");
                                strOptString3 = jSONObject.optString("token");
                                if (!TextUtils.isEmpty(strOptString3)) {
                                    c.c(c.this, requestCallback, strOptString4, str, jSONObject.toString(), monitorStruct);
                                    return;
                                }
                                c.a(c.this).a("cmcc：", "getAccessCode:", jSONObject.toString());
                                monitorStruct.setCarrierTraceId(strOptString2);
                                monitorStruct.setAccessCode(strOptString3);
                                c.a(c.this, strOptString4, "", "", true, monitorStruct);
                                requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.c.a().a(strOptString3).a(System.currentTimeMillis() + 120000).a());
                            }
                            strOptString = jSONObject.optString(SocialConstants.PARAM_APP_DESC);
                        }
                        str = strOptString;
                        strOptString2 = jSONObject.optString("traceId");
                        strOptString3 = jSONObject.optString("token");
                        if (!TextUtils.isEmpty(strOptString3)) {
                            c.c(c.this, requestCallback, strOptString4, str, jSONObject.toString(), monitorStruct);
                            return;
                        }
                        c.a(c.this).a("cmcc：", "getAccessCode:", jSONObject.toString());
                        monitorStruct.setCarrierTraceId(strOptString2);
                        monitorStruct.setAccessCode(strOptString3);
                        c.a(c.this, strOptString4, "", "", true, monitorStruct);
                        requestCallback.onSuccess(com.mobile.auth.gatewayauth.manager.a.c.a().a(strOptString3).a(System.currentTimeMillis() + 120000).a());
                    }
                }, -1);
                return;
            }
            b(requestCallback, ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, ResultCode.MSG_ERROR_ANALYZE_SDK_INFO, "", monitorStruct);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
