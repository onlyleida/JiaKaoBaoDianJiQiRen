package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.UploadPhotoResultResponse;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import cn.mucang.sundial.android.tcp.upload.UploadImageResult;

/* JADX INFO: loaded from: classes5.dex */
public class UploadPhotoResultMessageHandler extends BaseMessageHandler<UploadPhotoResultResponse> {
    private int convertResult(int i) {
        if (i == UploadPhotoResultResponse.Result.SUCCESS.getValue()) {
            return UploadImageResult.SUCCESS;
        }
        if (i == UploadPhotoResultResponse.Result.FACE_ERROR.getValue()) {
            return UploadImageResult.FACE_ERROR;
        }
        return i == UploadPhotoResultResponse.Result.LIVE_ERROR.getValue() ? UploadImageResult.LIVE_ERROR : UploadImageResult.ERROR;
    }

    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(UploadPhotoResultResponse uploadPhotoResultResponse) {
        int result = uploadPhotoResultResponse.getResult();
        t.h(UploadImageManager.TAG, "上传照片应答： " + result);
        SundialLog.com("上传照片应答： " + result);
        try {
            UploadImageManager.getInstance().uploadComplete(convertResult(result), uploadPhotoResultResponse.getExtraMessage());
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
