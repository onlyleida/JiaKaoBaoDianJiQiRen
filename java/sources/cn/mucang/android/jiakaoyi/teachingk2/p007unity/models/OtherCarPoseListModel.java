package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class OtherCarPoseListModel extends MessageModel {
    public List<CarPosModel> itemList;

    public static class CarPosModel implements Serializable {
        public String carNum;
        public String deviceNum;
        public Pos pos;
        public int state;
        public float yaw;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CarPosModel) {
                return Objects.equals(this.deviceNum, ((CarPosModel) obj).deviceNum);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.deviceNum);
        }
    }
}
