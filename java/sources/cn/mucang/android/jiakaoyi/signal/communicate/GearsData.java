package cn.mucang.android.jiakaoyi.signal.communicate;

import com.alibaba.fastjson.JSON;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GearsData implements Serializable {
    private String gearCategory = null;
    private List<Gear> gearsList = new ArrayList();

    public static class Gear implements Serializable {
        private int bottom;
        private int left;
        private int right;
        private int top;
        private String type;

        public Gear(String str, int i, int i2, int i3, int i4) {
            this.type = str;
            this.top = i;
            this.bottom = i2;
            this.left = i3;
            this.right = i4;
        }

        public int getBottom() {
            return this.bottom;
        }

        public int getLeft() {
            return this.left;
        }

        public int getRight() {
            return this.right;
        }

        public int getTop() {
            return this.top;
        }

        public String getType() {
            return this.type;
        }

        public void setBottom(int i) {
            this.bottom = i;
        }

        public void setLeft(int i) {
            this.left = i;
        }

        public void setRight(int i) {
            this.right = i;
        }

        public void setTop(int i) {
            this.top = i;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    public String getGearCategory() {
        return this.gearCategory;
    }

    public List<Gear> getGearsList() {
        return this.gearsList;
    }

    public void setGearCategory(String str) {
        this.gearCategory = str;
    }

    public void setGearsList(List<Gear> list) {
        this.gearsList = list;
    }

    public String toString() {
        return JSON.toJSONString(this);
    }
}
