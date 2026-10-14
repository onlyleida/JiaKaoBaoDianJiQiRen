package com.mobile.auth.gatewayauth.model.psc_certify_id;

import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.a;
import com.nirvana.tools.jsoner.JSONUtils;
import com.nirvana.tools.jsoner.JsonType;
import com.nirvana.tools.jsoner.Jsoner;
import com.nirvana.tools.jsoner.JsonerTag;
import java.lang.reflect.Field;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class GetCertifyIdTopResponse implements Jsoner {

    @JsonerTag(keyName = "request_id")
    private String requestId;

    @JsonerTag(keyName = SpeechUtility.TAG_RESOURCE_RESULT)
    private GetCertifyIdResult result;

    @Override // com.nirvana.tools.jsoner.Jsoner
    public void fromJson(JSONObject jSONObject) {
        try {
            JSONUtils.fromJson(jSONObject, this, (List<Field>) null);
            if (jSONObject != null) {
                setResult((GetCertifyIdResult) JSONUtils.fromJson(jSONObject.optJSONObject(SpeechUtility.TAG_RESOURCE_RESULT), (JsonType) new JsonType<GetCertifyIdResult>() { // from class: com.mobile.auth.gatewayauth.model.psc_certify_id.GetCertifyIdTopResponse.1
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

    public GetCertifyIdResult getResult() {
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

    public void setResult(GetCertifyIdResult getCertifyIdResult) {
        try {
            this.result = getCertifyIdResult;
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
            JSONObject jSONObject = new JSONObject();
            try {
                GetCertifyIdResult getCertifyIdResult = this.result;
                jSONObject.put(SpeechUtility.TAG_RESOURCE_RESULT, getCertifyIdResult == null ? new JSONObject() : getCertifyIdResult.toJson());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return jSONObject;
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
