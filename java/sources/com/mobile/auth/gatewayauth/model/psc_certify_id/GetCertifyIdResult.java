package com.mobile.auth.gatewayauth.model.psc_certify_id;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
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
public class GetCertifyIdResult implements Jsoner {

    @JsonerTag(keyName = "code")
    private String code;

    @JsonerTag(keyName = ErrorDialogParams.EXTRA_MESSAGE)
    private String message;

    @JsonerTag(keyName = "module")
    private GetCertifyIdTopData module;

    @Override // com.nirvana.tools.jsoner.Jsoner
    public void fromJson(JSONObject jSONObject) {
        try {
            JSONUtils.fromJson(jSONObject, this, (List<Field>) null);
            if (jSONObject != null) {
                setData((GetCertifyIdTopData) JSONUtils.fromJson(jSONObject.optJSONObject("module"), (JsonType) new JsonType<GetCertifyIdTopData>() { // from class: com.mobile.auth.gatewayauth.model.psc_certify_id.GetCertifyIdResult.1
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

    public String getCode() {
        try {
            return this.code;
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

    public GetCertifyIdTopData getData() {
        try {
            return this.module;
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

    public String getMessage() {
        try {
            return this.message;
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

    public void setCode(String str) {
        try {
            this.code = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setData(GetCertifyIdTopData getCertifyIdTopData) {
        try {
            this.module = getCertifyIdTopData;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setMessage(String str) {
        try {
            this.message = str;
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
                GetCertifyIdTopData getCertifyIdTopData = this.module;
                json.put("module", getCertifyIdTopData == null ? new JSONObject() : getCertifyIdTopData.toJson());
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
