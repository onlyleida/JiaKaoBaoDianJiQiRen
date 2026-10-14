package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.QueryPhotoRequest;
import cn.mucang.sundial.android.tcp.message.training.send.QueryPhotoResponse;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;

/* JADX INFO: loaded from: classes5.dex */
public class QueryPhotoMessageHandler extends BaseMessageHandler<QueryPhotoRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(QueryPhotoRequest queryPhotoRequest) {
        t.h(ProtocolConfig.SUNDIAL, "收到查询照片的消息。。。");
        SundialLog.com("收到查询照片的消息。。。");
        QueryPhotoResponse queryPhotoResponse = new QueryPhotoResponse();
        if (queryPhotoRequest.getQueryType() != 1) {
            queryPhotoResponse.setResult(9);
            SundialManager.getInstance().sendMessage(queryPhotoResponse);
            return null;
        }
        queryPhotoResponse.setResult(1);
        SundialManager.getInstance().sendMessage(queryPhotoResponse);
        UploadImageManager.getInstance().queryPhotoRecord(DeviceUtils.toTimestamp(queryPhotoRequest.getStartTime()), DeviceUtils.toTimestamp(queryPhotoRequest.getEndTime()));
        return null;
    }
}
