package com.google.android.exoplayer2.audio;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
public final class AudioAttributes implements Bundleable {
    private static final int FIELD_ALLOWED_CAPTURE_POLICY = 3;
    private static final int FIELD_CONTENT_TYPE = 0;
    private static final int FIELD_FLAGS = 1;
    private static final int FIELD_USAGE = 2;
    public final int allowedCapturePolicy;
    private android.media.AudioAttributes audioAttributesV21;
    public final int contentType;
    public final int flags;
    public final int usage;
    public static final AudioAttributes DEFAULT = new Builder().build();
    public static final Bundleable.Creator<AudioAttributes> CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.audio.a
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            return AudioAttributes.a(bundle);
        }
    };

    public static final class Builder {
        private int contentType = 0;
        private int flags = 0;
        private int usage = 1;
        private int allowedCapturePolicy = 1;

        public AudioAttributes build() {
            return new AudioAttributes(this.contentType, this.flags, this.usage, this.allowedCapturePolicy);
        }

        public Builder setAllowedCapturePolicy(int i) {
            this.allowedCapturePolicy = i;
            return this;
        }

        public Builder setContentType(int i) {
            this.contentType = i;
            return this;
        }

        public Builder setFlags(int i) {
            this.flags = i;
            return this;
        }

        public Builder setUsage(int i) {
            this.usage = i;
            return this;
        }
    }

    static /* synthetic */ AudioAttributes a(Bundle bundle) {
        Builder builder = new Builder();
        if (bundle.containsKey(keyForField(0))) {
            builder.setContentType(bundle.getInt(keyForField(0)));
        }
        if (bundle.containsKey(keyForField(1))) {
            builder.setFlags(bundle.getInt(keyForField(1)));
        }
        if (bundle.containsKey(keyForField(2))) {
            builder.setUsage(bundle.getInt(keyForField(2)));
        }
        if (bundle.containsKey(keyForField(3))) {
            builder.setAllowedCapturePolicy(bundle.getInt(keyForField(3)));
        }
        return builder.build();
    }

    private static String keyForField(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AudioAttributes.class != obj.getClass()) {
            return false;
        }
        AudioAttributes audioAttributes = (AudioAttributes) obj;
        return this.contentType == audioAttributes.contentType && this.flags == audioAttributes.flags && this.usage == audioAttributes.usage && this.allowedCapturePolicy == audioAttributes.allowedCapturePolicy;
    }

    public android.media.AudioAttributes getAudioAttributesV21() {
        if (this.audioAttributesV21 == null) {
            android.media.AudioAttributes.Builder usage = new android.media.AudioAttributes.Builder().setContentType(this.contentType).setFlags(this.flags).setUsage(this.usage);
            if (Util.SDK_INT >= 29) {
                usage.setAllowedCapturePolicy(this.allowedCapturePolicy);
            }
            this.audioAttributesV21 = usage.build();
        }
        return this.audioAttributesV21;
    }

    public int hashCode() {
        return ((((((527 + this.contentType) * 31) + this.flags) * 31) + this.usage) * 31) + this.allowedCapturePolicy;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(keyForField(0), this.contentType);
        bundle.putInt(keyForField(1), this.flags);
        bundle.putInt(keyForField(2), this.usage);
        bundle.putInt(keyForField(3), this.allowedCapturePolicy);
        return bundle;
    }

    private AudioAttributes(int i, int i2, int i3, int i4) {
        this.contentType = i;
        this.flags = i2;
        this.usage = i3;
        this.allowedCapturePolicy = i4;
    }
}
