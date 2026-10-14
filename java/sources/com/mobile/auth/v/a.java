package com.mobile.auth.v;

import android.text.TextUtils;
import com.mobile.auth.gatewayauth.utils.f;
import com.nirvana.tools.logger.model.ACMRecord;
import com.nirvana.tools.logger.upload.ACMUpload;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a<T extends ACMRecord> implements ACMUpload<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.mobile.auth.gatewayauth.b f13603a;

    public void a(com.mobile.auth.gatewayauth.b bVar) {
        try {
            this.f13603a = bVar;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    protected abstract boolean a(String str);

    @Override // com.nirvana.tools.logger.upload.ACMUpload
    public boolean upload(List<T> list) {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                String content = it.next().getContent();
                if (!TextUtils.isEmpty(content)) {
                    try {
                        jSONArray.put(new JSONObject(content));
                    } catch (Exception e2) {
                        f.c(com.mobile.auth.gatewayauth.utils.b.b(e2));
                    }
                }
            }
            return a(jSONArray.toString());
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }
}
