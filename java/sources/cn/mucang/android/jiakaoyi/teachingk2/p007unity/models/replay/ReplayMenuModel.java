package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay;

import cn.mucang.android.jiakaoyi.teachingk2.trace.TraceMenuModel;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ReplayMenuModel extends MessageModel {
    public List<TraceMenuModel> itemList;

    public ReplayMenuModel(List<TraceMenuModel> list) {
        this.itemList = list;
    }
}
