package com.mobile.auth.v;

import android.content.Context;
import com.mobile.auth.gatewayauth.model.pns_vendor_query.UploadRB;
import com.mobile.auth.gatewayauth.network.TopRequestUtils;
import com.mobile.auth.gatewayauth.sdktools.upload.pns.model.PnsUploadRequest;
import com.mobile.auth.gatewayauth.sdktools.upload.pns.model.UploadLogDTO;
import com.mobile.auth.gatewayauth.sdktools.upload.pns.model.UploadMonitorDTO;
import com.mobile.auth.gatewayauth.utils.f;
import com.nirvana.tools.jsoner.JSONUtils;
import com.nirvana.tools.jsoner.JsonType;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b implements com.mobile.auth.gatewayauth.b {
    @Override // com.mobile.auth.gatewayauth.b
    public boolean a(String str) {
        try {
            if (!f.b()) {
                return true;
            }
            PnsUploadRequest pnsUploadRequest = new PnsUploadRequest();
            try {
                pnsUploadRequest.setUploadLogDTOList(JSONUtils.parseJsonArray2JsonerList(str, new JsonType<UploadLogDTO>() { // from class: com.mobile.auth.v.b.1
                }));
                f.a("upload log request = " + pnsUploadRequest.toString());
                JSONObject json = pnsUploadRequest.toJson();
                UploadRB uploadRBFromJson = UploadRB.fromJson(TopRequestUtils.uploadUserTrackInfo(json.toString()));
                com.mobile.auth.o.a aVarA = com.mobile.auth.o.a.a((Context) null);
                if (aVarA != null) {
                    aVarA.a(uploadRBFromJson);
                }
                if (uploadRBFromJson == null || uploadRBFromJson.getAlibaba_aliqin_psc_info_upload_response() == null || uploadRBFromJson.getAlibaba_aliqin_psc_info_upload_response().getResult() == null || !"OK".equals(uploadRBFromJson.getAlibaba_aliqin_psc_info_upload_response().getResult().getCode())) {
                    json.put("uploadResult2_0", "failed");
                    f.a(json.toString());
                    return false;
                }
                json.put("uploadResult2_0", "success");
                f.a(json.toString());
                return true;
            } catch (Exception e2) {
                f.c(com.mobile.auth.gatewayauth.utils.b.b(e2));
                return false;
            }
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

    @Override // com.mobile.auth.gatewayauth.b
    public boolean b(String str) {
        try {
            if (!f.b()) {
                return true;
            }
            PnsUploadRequest pnsUploadRequest = new PnsUploadRequest();
            try {
                pnsUploadRequest.setUploadMonitorDTOList(JSONUtils.parseJsonArray2JsonerList(str, new JsonType<UploadMonitorDTO>() { // from class: com.mobile.auth.v.b.2
                }));
                f.a("upload monitor request = " + pnsUploadRequest.toString());
                JSONObject json = pnsUploadRequest.toJson();
                UploadRB uploadRBFromJson = UploadRB.fromJson(TopRequestUtils.uploadUserTrackInfo(json.toString()));
                com.mobile.auth.o.a aVarA = com.mobile.auth.o.a.a((Context) null);
                if (aVarA != null) {
                    aVarA.a(uploadRBFromJson);
                }
                if (uploadRBFromJson == null || uploadRBFromJson.getAlibaba_aliqin_psc_info_upload_response() == null || uploadRBFromJson.getAlibaba_aliqin_psc_info_upload_response().getResult() == null || !"OK".equals(uploadRBFromJson.getAlibaba_aliqin_psc_info_upload_response().getResult().getCode())) {
                    json.put("uploadResult2_0", "failed");
                    f.a(json.toString());
                    return false;
                }
                json.put("uploadResult2_0", "success");
                f.a(json.toString());
                return true;
            } catch (Exception e2) {
                f.c(com.mobile.auth.gatewayauth.utils.b.b(e2));
                return false;
            }
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
