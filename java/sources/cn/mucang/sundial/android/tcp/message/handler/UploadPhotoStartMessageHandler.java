package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.PacketResponseObserver;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.UploadPhotoStartResponse;
import cn.mucang.sundial.android.tcp.message.training.send.UploadPhotoPacketRequest;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import cn.mucang.sundial.android.tcp.upload.UploadImageResult;

/* JADX INFO: loaded from: classes5.dex */
public class UploadPhotoStartMessageHandler extends BaseMessageHandler<UploadPhotoStartResponse> {
    private boolean hasCustomResponse() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadComplete(int i) {
        try {
            UploadImageManager.getInstance().uploadComplete(i, null);
        } catch (Exception unused) {
        }
    }

    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(UploadPhotoStartResponse uploadPhotoStartResponse) {
        TimeoutManager.getInstance().onMessageReply(773, true);
        int result = uploadPhotoStartResponse.getResult();
        SundialLog.com("上传初始化应答： " + result);
        if (result == UploadPhotoStartResponse.Result.SUCCESS.getValue()) {
            boolean zHasCustomResponse = hasCustomResponse();
            UploadPhotoPacketRequest packageRequest = UploadImageManager.getInstance().getPackageRequest();
            SundialLog.com("开始发送照片数据");
            SundialManager.getInstance().sendMessage(packageRequest, !zHasCustomResponse ? new PacketResponseObserver.RequestResultListener() { // from class: cn.mucang.sundial.android.tcp.message.handler.UploadPhotoStartMessageHandler.1
                @Override // cn.mucang.sundial.android.tcp.PacketResponseObserver.RequestResultListener
                public void onResult(boolean z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("发送照片数据");
                    sb.append(z ? "[成功]" : "[失败]");
                    SundialLog.com(sb.toString());
                    UploadPhotoStartMessageHandler.this.uploadComplete(z ? UploadImageResult.SUCCESS : UploadImageResult.ERROR);
                }

                @Override // cn.mucang.sundial.android.tcp.PacketResponseObserver.RequestResultListener
                public void onTimeout() {
                    SundialLog.com("发送照片数据[超时]");
                }
            } : null);
        } else {
            uploadComplete(UploadImageResult.ERROR);
        }
        return null;
    }
}
