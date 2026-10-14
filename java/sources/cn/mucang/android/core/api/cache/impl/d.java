package cn.mucang.android.core.api.cache.impl;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes.dex */
public class d implements cn.mucang.android.core.api.cache.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2346a;
    private cn.mucang.android.core.api.cache.j.a b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f2348e;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d f2349a = new d();

        public d a() throws IOException {
            this.f2349a.g();
            return this.f2349a;
        }

        public b b(String str) {
            this.f2349a.f2346a = str;
            return this;
        }
    }

    private void e() {
        cn.mucang.android.core.api.cache.j.a aVar = this.b;
        if (aVar == null || aVar.isClosed()) {
            try {
                g();
            } catch (IOException e2) {
                t.c("默认替换", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws IOException {
        this.b = cn.mucang.android.core.api.cache.j.a.A(new File(f()), this.c, this.f2347d, this.f2348e);
    }

    @Override // cn.mucang.android.core.api.cache.e
    public cn.mucang.android.core.api.cache.a a(String str) {
        e();
        try {
            cn.mucang.android.core.api.cache.j.a.e eVarX = this.b.x(str);
            if (eVarX == null) {
                return null;
            }
            try {
                JSONObject object = JSON.parseObject(eVarX.getString(0));
                return new cn.mucang.android.core.api.cache.a(new ApiResponse(object.getJSONObject("apiResponse"), object.getString("rawString")), object.getLongValue("checkTime"), object.getLongValue("cacheTime"));
            } catch (JSONException e2) {
                t.m("jin", e2.getMessage());
                remove(str);
                return null;
            }
        } catch (Exception e3) {
            t.c("默认替换", e3);
            return null;
        }
    }

    @Override // cn.mucang.android.core.api.cache.e
    public synchronized void b(String str, cn.mucang.android.core.api.cache.a aVar) {
        ByteArrayInputStream byteArrayInputStream;
        e();
        cn.mucang.android.core.api.cache.j.a aVar2 = this.b;
        if (aVar2 != null) {
            OutputStream outputStream = null;
            try {
                cn.mucang.android.core.api.cache.j.a.c cVarS = aVar2.s(str);
                if (cVarS != null) {
                    OutputStream outputStreamF = cVarS.f(0);
                    try {
                        JSONObject jsonObject = aVar.a().getJsonObject();
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("apiResponse", (Object) jsonObject);
                        jSONObject.put("cacheTime", (Object) Long.valueOf(aVar.b()));
                        jSONObject.put("checkTime", (Object) Long.valueOf(aVar.c()));
                        jSONObject.put("rawString", (Object) aVar.a().getRawString());
                        byteArrayInputStream = new ByteArrayInputStream(jSONObject.toJSONString().getBytes(Charsets.f15811a.name()));
                        try {
                            j.d(byteArrayInputStream, outputStreamF);
                            cVarS.e();
                            outputStream = outputStreamF;
                        } catch (IOException e2) {
                            e = e2;
                            outputStream = outputStreamF;
                            try {
                                t.c("默认替换", e);
                                o.a(outputStream);
                            } catch (Throwable th) {
                                th = th;
                                o.a(outputStream);
                                o.a(byteArrayInputStream);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            outputStream = outputStreamF;
                            o.a(outputStream);
                            o.a(byteArrayInputStream);
                            throw th;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        byteArrayInputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        byteArrayInputStream = null;
                    }
                } else {
                    byteArrayInputStream = null;
                }
                o.a(outputStream);
            } catch (IOException e4) {
                e = e4;
                byteArrayInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                byteArrayInputStream = null;
            }
            o.a(byteArrayInputStream);
        }
    }

    public String f() {
        if (n0.e(this.f2346a) && MucangConfig.getContext() != null) {
            this.f2346a = MucangConfig.getContext().getCacheDir().getAbsolutePath();
        }
        if (n0.e(this.f2346a)) {
            throw new IllegalArgumentException("缓存目录不能为空");
        }
        if (!this.f2346a.endsWith("/")) {
            return this.f2346a;
        }
        String str = this.f2346a;
        return str.substring(0, str.length() - 1);
    }

    @Override // cn.mucang.android.core.api.cache.e
    public synchronized void remove(String str) {
        e();
        try {
            this.b.F(str);
        } catch (IOException e2) {
            t.c("默认替换", e2);
        }
    }

    private d() {
        this.c = 1;
        this.f2347d = 1;
        this.f2348e = 33554432L;
    }
}
