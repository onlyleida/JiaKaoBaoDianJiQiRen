package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.model;

import cn.mucang.android.ui.framework.mvp.BaseModel;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GearsDataModel implements BaseModel {
    public String gearCategory;
    public List<GearsItemModel> gearsList;

    public static class GearsItemRangeModel implements BaseModel {
        public int maxLeft;
        public int maxTop;
        public int minBottom;
        public int minRight;
        public int minLeft = -50;
        public int maxRight = 50;
        public int minTop = -50;
        public int maxBottom = 50;

        public GearsItemRangeModel(GearsItemModel gearsItemModel) {
            this.maxLeft = gearsItemModel.right;
            this.minRight = gearsItemModel.left;
            this.maxTop = gearsItemModel.bottom;
            this.minBottom = gearsItemModel.top;
        }
    }

    public static class GearsItemModel implements BaseModel {
        public int bottom;
        public int left;
        public GearsItemRangeModel rangeModel;
        public int right;
        public int top;
        public String type;

        public GearsItemModel(String str, int i, int i2, int i3, int i4) {
            this.type = str;
            this.left = i;
            this.right = i2;
            this.top = i3;
            this.bottom = i4;
        }

        public boolean horiIntersect(GearsItemModel gearsItemModel) {
            return gearsItemModel.left < this.right && gearsItemModel.right > this.left;
        }

        public boolean vertiIntersect(GearsItemModel gearsItemModel) {
            return gearsItemModel.bottom > this.top && gearsItemModel.top < this.bottom;
        }

        public GearsItemModel() {
        }
    }
}
