package cn.mucang.android.core.video;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
class WatermarkEntity implements Serializable {
    private String iconUrl;
    private Size imageSize;
    private Location location;
    private Size size;

    public static class Location implements Serializable {
        private float bottom;
        private float left;
        private float right;
        private float top;

        public float getBottom() {
            return this.bottom;
        }

        public float getLeft() {
            return this.left;
        }

        public float getRight() {
            return this.right;
        }

        public float getTop() {
            return this.top;
        }

        public void setBottom(float f2) {
            this.bottom = f2;
        }

        public void setLeft(float f2) {
            this.left = f2;
        }

        public void setRight(float f2) {
            this.right = f2;
        }

        public void setTop(float f2) {
            this.top = f2;
        }
    }

    public static class Size implements Serializable {
        private float height;
        private float width;

        public float getHeight() {
            return this.height;
        }

        public float getWidth() {
            return this.width;
        }

        public void setHeight(float f2) {
            this.height = f2;
        }

        public void setWidth(float f2) {
            this.width = f2;
        }
    }

    WatermarkEntity() {
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public Size getImageSize() {
        return this.imageSize;
    }

    public Location getLocation() {
        return this.location;
    }

    public Size getSize() {
        return this.size;
    }

    public boolean isValid() {
        Size size;
        String str = this.iconUrl;
        return str != null && str.length() > 0 && (size = this.size) != null && (size.getWidth() > BitmapDescriptorFactory.HUE_RED || this.size.getHeight() > BitmapDescriptorFactory.HUE_RED);
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setImageSize(Size size) {
        this.imageSize = size;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public void setSize(Size size) {
        this.size = size;
    }
}
