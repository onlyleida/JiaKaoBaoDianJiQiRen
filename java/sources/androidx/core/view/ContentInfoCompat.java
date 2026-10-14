package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import androidx.core.util.h;
import androidx.core.util.i;
import com.tencent.open.SocialConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    final ClipData mClip;
    final Bundle mExtras;
    final int mFlags;
    final Uri mLinkUri;
    final int mSource;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    ContentInfoCompat(Builder builder) {
        ClipData clipData = builder.mClip;
        h.f(clipData);
        this.mClip = clipData;
        int i = builder.mSource;
        h.c(i, 0, 3, SocialConstants.PARAM_SOURCE);
        this.mSource = i;
        int i2 = builder.mFlags;
        h.e(i2, 1);
        this.mFlags = i2;
        this.mLinkUri = builder.mLinkUri;
        this.mExtras = builder.mExtras;
    }

    private static ClipData buildClipData(ClipDescription clipDescription, List<ClipData.Item> list) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), list.get(0));
        for (int i = 1; i < list.size(); i++) {
            clipData.addItem(list.get(i));
        }
        return clipData;
    }

    static String flagsToString(int i) {
        return (i & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i);
    }

    static String sourceToString(int i) {
        if (i == 0) {
            return "SOURCE_APP";
        }
        if (i == 1) {
            return "SOURCE_CLIPBOARD";
        }
        if (i != 2) {
            return i != 3 ? String.valueOf(i) : "SOURCE_DRAG_AND_DROP";
        }
        return "SOURCE_INPUT_METHOD";
    }

    public ClipData getClip() {
        return this.mClip;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public Uri getLinkUri() {
        return this.mLinkUri;
    }

    public int getSource() {
        return this.mSource;
    }

    public Pair<ContentInfoCompat, ContentInfoCompat> partition(i<ClipData.Item> iVar) {
        if (this.mClip.getItemCount() == 1) {
            boolean zTest = iVar.test(this.mClip.getItemAt(0));
            return Pair.create(zTest ? this : null, zTest ? null : this);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.mClip.getItemCount(); i++) {
            ClipData.Item itemAt = this.mClip.getItemAt(i);
            if (iVar.test(itemAt)) {
                arrayList.add(itemAt);
            } else {
                arrayList2.add(itemAt);
            }
        }
        if (arrayList.isEmpty()) {
            return Pair.create(null, this);
        }
        return arrayList2.isEmpty() ? Pair.create(this, null) : Pair.create(new Builder(this).setClip(buildClipData(this.mClip.getDescription(), arrayList)).build(), new Builder(this).setClip(buildClipData(this.mClip.getDescription(), arrayList2)).build());
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("ContentInfoCompat{clip=");
        sb.append(this.mClip.getDescription());
        sb.append(", source=");
        sb.append(sourceToString(this.mSource));
        sb.append(", flags=");
        sb.append(flagsToString(this.mFlags));
        if (this.mLinkUri == null) {
            str = "";
        } else {
            str = ", hasLinkUri(" + this.mLinkUri.toString().length() + ")";
        }
        sb.append(str);
        sb.append(this.mExtras != null ? ", hasExtras" : "");
        sb.append(VectorFormat.DEFAULT_SUFFIX);
        return sb.toString();
    }

    public static final class Builder {
        ClipData mClip;
        Bundle mExtras;
        int mFlags;
        Uri mLinkUri;
        int mSource;

        public Builder(ContentInfoCompat contentInfoCompat) {
            this.mClip = contentInfoCompat.mClip;
            this.mSource = contentInfoCompat.mSource;
            this.mFlags = contentInfoCompat.mFlags;
            this.mLinkUri = contentInfoCompat.mLinkUri;
            this.mExtras = contentInfoCompat.mExtras;
        }

        public ContentInfoCompat build() {
            return new ContentInfoCompat(this);
        }

        public Builder setClip(ClipData clipData) {
            this.mClip = clipData;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setFlags(int i) {
            this.mFlags = i;
            return this;
        }

        public Builder setLinkUri(Uri uri) {
            this.mLinkUri = uri;
            return this;
        }

        public Builder setSource(int i) {
            this.mSource = i;
            return this;
        }

        public Builder(ClipData clipData, int i) {
            this.mClip = clipData;
            this.mSource = i;
        }
    }
}
