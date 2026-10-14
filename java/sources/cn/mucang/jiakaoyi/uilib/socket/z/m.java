package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.message.DialogMessageDetail;
import cn.mucang.jiakaoyi.uilib.message.DialogMessageManager;
import cn.mucang.jiakaoyi.uilib.socket.model.DialogMessageModel;
import com.alibaba.fastjson.JSON;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class m extends t<DialogMessageModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public DialogMessageModel a(int i, ByteBuffer byteBuffer) {
        String str = new String(byteBuffer.array());
        cn.mucang.android.jiakaoyi.framework.log.f.f("收到0x70消息，弹窗消息指令:" + str);
        try {
            DialogMessageDetail dialogMessageDetail = (DialogMessageDetail) JSON.parseObject(str, DialogMessageDetail.class);
            DialogMessageModel dialogMessageModel = new DialogMessageModel(dialogMessageDetail);
            DialogMessageManager.f9433a.g(dialogMessageDetail);
            return dialogMessageModel;
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("收到0x70消息，解析消息出错 " + e2.getLocalizedMessage());
            return null;
        }
    }
}
