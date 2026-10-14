package com.alivc.component.encoder;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Log;
import android.util.Range;

/* JADX INFO: loaded from: classes5.dex */
public class VideoCodecInfo {
    private static final String TAG = "VideoCodecInfo";
    public int mHeightAlign;
    public int mMaxBitrate;
    public int mMaxHeight;
    public int mMaxWidth;
    final String mMimeType = "video/avc";
    public int mMinBitrate;
    public int mMinHeight;
    public int mMinWidth;
    public MediaCodecInfo.VideoCapabilities mVideoCapabilities;
    public int mWidthAlign;

    public VideoCodecInfo() {
        String str;
        this.mMaxBitrate = Integer.MAX_VALUE;
        this.mMinBitrate = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMinWidth = 0;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mMinHeight = 0;
        this.mWidthAlign = 16;
        this.mHeightAlign = 16;
        this.mVideoCapabilities = null;
        if (Build.VERSION.SDK_INT >= 21) {
            Log.i(TAG, "try to got CodecCapabilities");
            MediaCodecInfo mediaCodecInfoSelectCodecInfo = selectCodecInfo("video/avc");
            if (mediaCodecInfoSelectCodecInfo == null) {
                str = "failed to got mediaCodecinfo video/avc";
            } else {
                MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoSelectCodecInfo.getCapabilitiesForType("video/avc");
                if (capabilitiesForType == null) {
                    str = "failed to got CodecCapabilities video/avc";
                } else {
                    MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                    this.mVideoCapabilities = videoCapabilities;
                    if (videoCapabilities == null) {
                        str = "failed to got VideoCapabilities video/avc";
                    } else {
                        Range<Integer> bitrateRange = videoCapabilities.getBitrateRange();
                        this.mMaxBitrate = ((Integer) bitrateRange.getUpper()).intValue();
                        this.mMinBitrate = ((Integer) bitrateRange.getLower()).intValue();
                        this.mWidthAlign = this.mVideoCapabilities.getWidthAlignment();
                        this.mHeightAlign = this.mVideoCapabilities.getHeightAlignment();
                        Range<Integer> supportedWidths = this.mVideoCapabilities.getSupportedWidths();
                        this.mMaxWidth = ((Integer) supportedWidths.getUpper()).intValue();
                        this.mMinWidth = ((Integer) supportedWidths.getLower()).intValue();
                        Range<Integer> supportedHeights = this.mVideoCapabilities.getSupportedHeights();
                        this.mMaxHeight = ((Integer) supportedHeights.getUpper()).intValue();
                        this.mMinHeight = ((Integer) supportedHeights.getLower()).intValue();
                        str = "bitrateRange [" + this.mMinBitrate + "," + this.mMaxBitrate + "], widthAlignment = " + this.mWidthAlign + ", heightAlignment = " + this.mHeightAlign + ", widthRange [" + this.mMinWidth + "," + this.mMaxWidth + "], heightRange [" + this.mMinHeight + "," + this.mMaxHeight + "]";
                    }
                }
            }
        } else {
            str = "bitrateRange [" + this.mMinBitrate + "," + this.mMaxBitrate + "], widthAlignment = " + this.mWidthAlign + ", heightAlignment = " + this.mHeightAlign + ", widthRange [" + this.mMinWidth + "," + this.mMaxWidth + "], heightRange [" + this.mMinHeight + "," + this.mMaxHeight + "]";
        }
        Log.e(TAG, str);
    }

    private MediaCodecInfo selectCodecInfo(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        return codecInfoAt;
                    }
                }
            }
        }
        return null;
    }

    public void getSupportFormats() {
    }

    public void getSupportProfile() {
    }

    public boolean isSizeSupported(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (Build.VERSION.SDK_INT < 21 || (videoCapabilities = this.mVideoCapabilities) == null) {
            return true;
        }
        return videoCapabilities.isSizeSupported(i, i2);
    }
}
