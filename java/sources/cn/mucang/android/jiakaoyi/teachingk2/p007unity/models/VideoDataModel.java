package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class VideoDataModel extends MessageModel {
    public List<VideoItem> itemList;
    public String path;

    public static class VideoItem implements Serializable {
        public int id;
        public String url;
        public int version;
        public String videoName;
        public int videoSubType;
        public int videoType;
    }
}
