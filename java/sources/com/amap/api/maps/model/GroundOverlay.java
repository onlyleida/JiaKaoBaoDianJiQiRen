package com.amap.api.maps.model;

import android.text.TextUtils;
import com.amap.api.maps.interfaces.IGlOverlayLayer;
import com.autonavi.amap.mapcore.interfaces.IGroundOverlay;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public final class GroundOverlay extends BaseOverlay {
    private WeakReference<IGlOverlayLayer> glOverlayLayerRef;
    private float high;
    private IGroundOverlay iGroundOverlayDelegate;
    private GroundOverlayOptions options;
    private LatLng point;
    private float width;

    public GroundOverlay(IGroundOverlay iGroundOverlay) {
        this.iGroundOverlayDelegate = iGroundOverlay;
    }

    private void a() {
        IGlOverlayLayer iGlOverlayLayer = this.glOverlayLayerRef.get();
        if (TextUtils.isEmpty(this.overlayName) || iGlOverlayLayer == null) {
            return;
        }
        iGlOverlayLayer.updateOption(this.overlayName, this.options);
    }

    public void destroy() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.destroy();
            } else {
                IGlOverlayLayer iGlOverlayLayer = this.glOverlayLayerRef.get();
                if (iGlOverlayLayer != null) {
                    iGlOverlayLayer.removeOverlay(this.overlayName);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof GroundOverlay)) {
            try {
                IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
                if (iGroundOverlay != null) {
                    return iGroundOverlay.equalsRemote(((GroundOverlay) obj).iGroundOverlayDelegate);
                }
                return super.equals(obj) || ((GroundOverlay) obj).getId() == getId();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public float getBearing() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                return iGroundOverlay.getBearing();
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            return groundOverlayOptions != null ? groundOverlayOptions.getBearing() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public LatLngBounds getBounds() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                return iGroundOverlay.getBounds();
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            if (groundOverlayOptions != null) {
                return groundOverlayOptions.getBounds();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public float getHeight() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                return iGroundOverlay.getHeight();
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            return groundOverlayOptions != null ? groundOverlayOptions.getHeight() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public String getId() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            return iGroundOverlay != null ? iGroundOverlay.getId() : this.overlayName;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public LatLng getPosition() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                return iGroundOverlay.getPosition();
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            if (groundOverlayOptions != null) {
                return groundOverlayOptions.getLocation();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public float getTransparency() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                return iGroundOverlay.getTransparency();
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            return groundOverlayOptions != null ? groundOverlayOptions.getTransparency() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public float getWidth() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                return iGroundOverlay.getWidth();
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            return groundOverlayOptions != null ? groundOverlayOptions.getWidth() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public float getZIndex() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                return iGroundOverlay.getZIndex();
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            return groundOverlayOptions != null ? groundOverlayOptions.getZIndex() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public int hashCode() {
        IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
        return iGroundOverlay != null ? iGroundOverlay.hashCode() : super.hashCode();
    }

    public boolean isVisible() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                return iGroundOverlay.isVisible();
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            if (groundOverlayOptions != null) {
                return groundOverlayOptions.isVisible();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public void remove() {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.remove();
                return;
            }
            IGlOverlayLayer iGlOverlayLayer = this.glOverlayLayerRef.get();
            if (iGlOverlayLayer != null) {
                iGlOverlayLayer.removeOverlay(this.overlayName);
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            if (groundOverlayOptions == null || groundOverlayOptions.getImage() == null) {
                return;
            }
            this.options.getImage().recycle();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setBearing(float f2) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setBearing(f2);
            } else {
                GroundOverlayOptions groundOverlayOptions = this.options;
                if (groundOverlayOptions != null) {
                    groundOverlayOptions.bearing(f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setDimensions(float f2) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setDimensions(f2);
                return;
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            if (groundOverlayOptions != null) {
                LatLng location = this.point;
                if (location == null) {
                    location = groundOverlayOptions.getLocation();
                }
                if (location == null) {
                    this.width = f2;
                } else {
                    this.options.position(location, f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setImage(BitmapDescriptor bitmapDescriptor) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setImage(bitmapDescriptor);
            } else {
                GroundOverlayOptions groundOverlayOptions = this.options;
                if (groundOverlayOptions != null) {
                    groundOverlayOptions.image(bitmapDescriptor);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setPosition(LatLng latLng) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setPosition(latLng);
                return;
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            if (groundOverlayOptions == null || latLng == null) {
                return;
            }
            float width = this.width;
            if (width <= BitmapDescriptorFactory.HUE_RED) {
                width = groundOverlayOptions.getWidth();
            }
            float height = this.high;
            if (height <= BitmapDescriptorFactory.HUE_RED) {
                height = this.options.getHeight();
            }
            if (width == BitmapDescriptorFactory.HUE_RED) {
                this.point = latLng;
                return;
            }
            if (height == BitmapDescriptorFactory.HUE_RED) {
                this.options.position(latLng, width);
                a();
            } else if (height > BitmapDescriptorFactory.HUE_RED) {
                this.options.position(latLng, width, height);
                a();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setPositionFromBounds(LatLngBounds latLngBounds) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setPositionFromBounds(latLngBounds);
            } else {
                GroundOverlayOptions groundOverlayOptions = this.options;
                if (groundOverlayOptions != null && latLngBounds != null) {
                    groundOverlayOptions.positionFromBounds(latLngBounds);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setTransparency(float f2) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setTransparency(f2);
            } else {
                GroundOverlayOptions groundOverlayOptions = this.options;
                if (groundOverlayOptions != null) {
                    groundOverlayOptions.transparency(f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setVisible(boolean z) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setVisible(z);
            } else {
                GroundOverlayOptions groundOverlayOptions = this.options;
                if (groundOverlayOptions != null) {
                    groundOverlayOptions.visible(z);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setZIndex(float f2) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setZIndex(f2);
            } else {
                GroundOverlayOptions groundOverlayOptions = this.options;
                if (groundOverlayOptions != null) {
                    groundOverlayOptions.zIndex(f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public GroundOverlay(IGlOverlayLayer iGlOverlayLayer, GroundOverlayOptions groundOverlayOptions) {
        this.glOverlayLayerRef = new WeakReference<>(iGlOverlayLayer);
        this.options = groundOverlayOptions;
        this.overlayName = "";
    }

    public void setDimensions(float f2, float f3) {
        try {
            IGroundOverlay iGroundOverlay = this.iGroundOverlayDelegate;
            if (iGroundOverlay != null) {
                iGroundOverlay.setDimensions(f2, f3);
                return;
            }
            GroundOverlayOptions groundOverlayOptions = this.options;
            if (groundOverlayOptions != null) {
                LatLng location = this.point;
                if (location == null) {
                    location = groundOverlayOptions.getLocation();
                }
                if (location == null) {
                    this.width = f2;
                    this.high = f3;
                } else {
                    GroundOverlayOptions groundOverlayOptions2 = this.options;
                    groundOverlayOptions2.position(groundOverlayOptions2.getLocation(), f2, f3);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
