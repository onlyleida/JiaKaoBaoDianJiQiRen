package cn.mucang.android.ui.widget.rangebar;

import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public enum MeasureSpecMode {
    AT_MOST(Integer.MIN_VALUE),
    EXACTLY(1073741824),
    UNSPECIFIED(0);

    private final int mModeValue;

    MeasureSpecMode(int i) {
        this.mModeValue = i;
    }

    public static MeasureSpecMode getMode(int i) {
        int mode = View.MeasureSpec.getMode(i);
        for (MeasureSpecMode measureSpecMode : values()) {
            if (measureSpecMode.getModeValue() == mode) {
                return measureSpecMode;
            }
        }
        return null;
    }

    public int getModeValue() {
        return this.mModeValue;
    }
}
