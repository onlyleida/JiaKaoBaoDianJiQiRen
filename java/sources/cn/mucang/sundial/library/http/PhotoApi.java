package cn.mucang.sundial.library.http;

import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.library.entity.PhotoEntity;
import com.iflytek.cloud.SpeechConstant;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ%\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcn/mucang/sundial/library/http/PhotoApi;", "Lcn/mucang/sundial/library/http/SundialApi;", "", "idCard", SpeechConstant.SUBJECT, "", "Lcn/mucang/sundial/library/entity/PhotoEntity;", "getPhotos", "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class PhotoApi extends SundialApi {
    public final List<PhotoEntity> getPhotos(String idCard, String subject) {
        r.e(idCard, "idCard");
        r.e(subject, "subject");
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        RegisterInfo registerInfo = sundialManager.getRegisterInfo();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        r.d(registerInfo, "registerInfo");
        String deviceCode = registerInfo.getDeviceCode();
        r.d(deviceCode, "registerInfo.deviceCode");
        linkedHashMap.put("deviceGlobalCode", deviceCode);
        linkedHashMap.put("idCard", idCard);
        linkedHashMap.put(SpeechConstant.SUBJECT, subject);
        return httpGetDataList("/api/open/query/class-record-images.htm", PhotoEntity.class, linkedHashMap, PhotoEntity.class);
    }
}
