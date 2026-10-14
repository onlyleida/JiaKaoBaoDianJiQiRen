package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.MiscUtils;
import cn.mucang.sundial.android.db.entity.PhotoRecord;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.UploadPhotoRequest;
import cn.mucang.sundial.android.tcp.message.training.send.UploadPhotoResponse;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class UploadPhotoMessageHandler extends BaseMessageHandler<UploadPhotoRequest> {
    static /* synthetic */ void a(String str) {
        try {
            MiscUtils.p(500L);
            SundialLog.normal("服务器拉取指定照片：" + str);
            UploadImageManager.getInstance().uploadPhoto(str, true);
        } catch (Exception unused) {
        }
    }

    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(UploadPhotoRequest uploadPhotoRequest) {
        final String photoId = uploadPhotoRequest.getPhotoId();
        PhotoRecord photoRecord = DataManager.getInstance().getPhotoRecord(photoId);
        UploadPhotoResponse uploadPhotoResponse = new UploadPhotoResponse();
        if (photoRecord == null || !new File(photoRecord.getPath()).exists()) {
            uploadPhotoResponse.setResult(1);
        } else if (UploadImageManager.getInstance().isIdle()) {
            uploadPhotoResponse.setResult(0);
            MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.android.tcp.message.handler.c
                @Override // java.lang.Runnable
                public final void run() {
                    UploadPhotoMessageHandler.a(photoId);
                }
            });
        } else {
            uploadPhotoResponse.setResult(9);
        }
        return uploadPhotoResponse;
    }
}
