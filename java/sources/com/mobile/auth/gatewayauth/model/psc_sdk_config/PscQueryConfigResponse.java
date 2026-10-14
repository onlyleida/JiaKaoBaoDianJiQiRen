package com.mobile.auth.gatewayauth.model.psc_sdk_config;

import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.a;
import com.nirvana.tools.jsoner.JSONUtils;
import com.nirvana.tools.jsoner.JsonType;
import com.nirvana.tools.jsoner.Jsoner;
import java.lang.reflect.Field;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class PscQueryConfigResponse implements Jsoner {
    private String request_id;
    private Result result;

    @Override // com.nirvana.tools.jsoner.Jsoner
    public void fromJson(JSONObject jSONObject) {
        try {
            JSONUtils.fromJson(jSONObject, this, (List<Field>) null);
            if (jSONObject != null) {
                setResult((Result) JSONUtils.fromJson(jSONObject.optJSONObject(SpeechUtility.TAG_RESOURCE_RESULT), (JsonType) new JsonType<Result>() { // from class: com.mobile.auth.gatewayauth.model.psc_sdk_config.PscQueryConfigResponse.1
                }, (List<Field>) null));
            }
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public String getRequest_id() {
        try {
            return this.request_id;
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

    public Result getResult() {
        try {
            return this.result;
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

    public void setRequest_id(String str) {
        try {
            this.request_id = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setResult(Result result) {
        try {
            this.result = result;
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
            JSONObject json = JSONUtils.toJson(this, null);
            try {
                Result result = this.result;
                json.put(SpeechUtility.TAG_RESOURCE_RESULT, result == null ? new JSONObject() : result.toJson());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return json;
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
