package com.amap.api.maps.model;

import android.text.TextUtils;
import com.amap.api.maps.interfaces.IGlOverlayLayer;
import com.autonavi.amap.mapcore.interfaces.ICircle;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Circle extends BaseOverlay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WeakReference<IGlOverlayLayer> f11518a;
    private ICircle iCircleDel;
    private CircleOptions options;

    public Circle(ICircle iCircle) {
        this.iCircleDel = iCircle;
    }

    private void a() {
        try {
            IGlOverlayLayer iGlOverlayLayer = this.f11518a.get();
            if (iGlOverlayLayer != null) {
                iGlOverlayLayer.processCircleHoleOption(this.options);
            }
            if (TextUtils.isEmpty(this.overlayName) || iGlOverlayLayer == null) {
                return;
            }
            iGlOverlayLayer.updateOption(this.overlayName, this.options);
        } catch (Throwable unused) {
        }
    }

    public boolean contains(LatLng latLng) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.contains(latLng);
            }
            IGlOverlayLayer iGlOverlayLayer = this.f11518a.get();
            if (iGlOverlayLayer != null) {
                return iGlOverlayLayer.IsCircleContainPoint(this.options, latLng);
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Circle)) {
            try {
                ICircle iCircle = this.iCircleDel;
                if (iCircle != null) {
                    return iCircle.equalsRemote(((Circle) obj).iCircleDel);
                }
                return super.equals(obj) || ((Circle) obj).getId() == getId();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public LatLng getCenter() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.getCenter();
            }
            CircleOptions circleOptions = this.options;
            if (circleOptions != null) {
                return circleOptions.getCenter();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public int getFillColor() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.getFillColor();
            }
            CircleOptions circleOptions = this.options;
            if (circleOptions != null) {
                return circleOptions.getFillColor();
            }
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public List<BaseHoleOptions> getHoleOptions() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.getHoleOptions();
            }
            CircleOptions circleOptions = this.options;
            if (circleOptions != null) {
                return circleOptions.getHoleOptions();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public String getId() {
        try {
            ICircle iCircle = this.iCircleDel;
            return iCircle != null ? iCircle.getId() : this.overlayName;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public double getRadius() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.getRadius();
            }
            CircleOptions circleOptions = this.options;
            if (circleOptions != null) {
                return circleOptions.getRadius();
            }
            return 0.0d;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0.0d;
        }
    }

    public int getStrokeColor() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.getStrokeColor();
            }
            CircleOptions circleOptions = this.options;
            if (circleOptions != null) {
                return circleOptions.getStrokeColor();
            }
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public int getStrokeDottedLineType() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.getDottedLineType();
            }
            CircleOptions circleOptions = this.options;
            if (circleOptions != null) {
                return circleOptions.getStrokeDottedLineType();
            }
            return -1;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    public float getStrokeWidth() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.getStrokeWidth();
            }
            CircleOptions circleOptions = this.options;
            return circleOptions != null ? circleOptions.getStrokeWidth() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public float getZIndex() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.getZIndex();
            }
            CircleOptions circleOptions = this.options;
            return circleOptions != null ? circleOptions.getZIndex() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public int hashCode() {
        try {
            ICircle iCircle = this.iCircleDel;
            return iCircle != null ? iCircle.hashCodeRemote() : super.hashCode();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public boolean isVisible() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                return iCircle.isVisible();
            }
            CircleOptions circleOptions = this.options;
            if (circleOptions != null) {
                return circleOptions.isVisible();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public void remove() {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.remove();
            } else {
                IGlOverlayLayer iGlOverlayLayer = this.f11518a.get();
                if (iGlOverlayLayer != null) {
                    iGlOverlayLayer.removeOverlay(this.overlayName);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setCenter(LatLng latLng) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setCenter(latLng);
            } else {
                CircleOptions circleOptions = this.options;
                if (circleOptions != null) {
                    circleOptions.center(latLng);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setFillColor(int i) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setFillColor(i);
            } else {
                CircleOptions circleOptions = this.options;
                if (circleOptions != null) {
                    circleOptions.fillColor(i);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setHoleOptions(List<BaseHoleOptions> list) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setHoleOptions(list);
            } else if (list != null) {
                synchronized (list) {
                    this.options.getHoleOptions().clear();
                    this.options.addHoles(list);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setRadius(double d2) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setRadius(d2);
            } else {
                CircleOptions circleOptions = this.options;
                if (circleOptions != null) {
                    circleOptions.radius(d2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setStrokeColor(int i) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setStrokeColor(i);
            } else {
                CircleOptions circleOptions = this.options;
                if (circleOptions != null) {
                    circleOptions.strokeColor(i);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setStrokeDottedLineType(int i) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setDottedLineType(i);
            } else {
                CircleOptions circleOptions = this.options;
                if (circleOptions != null) {
                    circleOptions.setStrokeDottedLineType(i);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setStrokeWidth(float f2) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setStrokeWidth(f2);
            } else {
                CircleOptions circleOptions = this.options;
                if (circleOptions != null) {
                    circleOptions.strokeWidth(f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setVisible(boolean z) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setVisible(z);
            } else {
                CircleOptions circleOptions = this.options;
                if (circleOptions != null) {
                    circleOptions.visible(z);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setZIndex(float f2) {
        try {
            ICircle iCircle = this.iCircleDel;
            if (iCircle != null) {
                iCircle.setZIndex(f2);
            } else {
                CircleOptions circleOptions = this.options;
                if (circleOptions != null) {
                    circleOptions.zIndex(f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public Circle(IGlOverlayLayer iGlOverlayLayer, CircleOptions circleOptions) {
        this.f11518a = new WeakReference<>(iGlOverlayLayer);
        this.options = circleOptions;
    }
}
