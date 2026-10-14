package com.serenegiant.mediastore;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.utils.ThreadPool;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(16)
public class MediaStoreHelper {
    private static final boolean DEBUG = false;
    public static final int MEDIA_ALL = 0;
    public static final int MEDIA_IMAGE = 1;
    protected static final int MEDIA_TYPE_NUM = 3;
    public static final int MEDIA_VIDEO = 2;
    protected static final int PROJ_INDEX_DATA = 4;
    protected static final int PROJ_INDEX_DISPLAY_NAME = 5;
    protected static final int PROJ_INDEX_HEIGHT = 7;
    protected static final int PROJ_INDEX_ID = 0;
    protected static final int PROJ_INDEX_MEDIA_TYPE = 2;
    protected static final int PROJ_INDEX_MIME_TYPE = 3;
    protected static final int PROJ_INDEX_TITLE = 1;
    protected static final int PROJ_INDEX_WIDTH = 6;
    private static final String TAG = "MediaStoreHelper";
    protected static final String[] PROJ_MEDIA = {"_id", "title", "media_type", "mime_type", "_data", "_display_name", "width", "height"};
    protected static final String SELECTION_MEDIA_ALL = "media_type=1 OR media_type=3";
    protected static final String SELECTION_MEDIA_IMAGE = "media_type=1";
    protected static final String SELECTION_MEDIA_VIDEO = "media_type=3";
    protected static final String[] SELECTIONS = {SELECTION_MEDIA_ALL, SELECTION_MEDIA_IMAGE, SELECTION_MEDIA_VIDEO};
    protected static final Uri QUERY_URI = MediaStore.Files.getContentUri("external");

    protected static abstract class ImageLoader implements Runnable {
        private Bitmap mBitmap;
        private int mHashCode;
        private long mId;
        private int mMediaType;
        protected final LoaderDrawable mParent;
        private final FutureTask<Bitmap> mTask = new FutureTask<>(this, null);

        public ImageLoader(LoaderDrawable loaderDrawable) {
            this.mParent = loaderDrawable;
        }

        public void cancelLoad() {
            this.mTask.cancel(true);
        }

        public Bitmap getBitmap() {
            return this.mBitmap;
        }

        protected abstract Bitmap loadBitmap(ContentResolver contentResolver, int i, int i2, long j, int i3, int i4);

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            long j;
            synchronized (this) {
                i = this.mMediaType;
                i2 = this.mHashCode;
                j = this.mId;
            }
            if (!this.mTask.isCancelled()) {
                this.mBitmap = loadBitmap(this.mParent.mContentResolver, i, i2, j, this.mParent.mWidth, this.mParent.mHeight);
            }
            if (this.mTask.isCancelled() || j != this.mId || this.mBitmap == null) {
                return;
            }
            LoaderDrawable loaderDrawable = this.mParent;
            loaderDrawable.scheduleSelf(loaderDrawable, 0L);
        }

        public synchronized void startLoad(int i, int i2, long j) {
            this.mMediaType = i;
            this.mHashCode = i2;
            this.mId = j;
            this.mBitmap = null;
            ThreadPool.queueEvent(this.mTask);
        }
    }

    protected static abstract class LoaderDrawable extends Drawable implements Runnable {
        private Bitmap mBitmap;
        private final ContentResolver mContentResolver;
        private final Paint mDebugPaint;
        private final Matrix mDrawMatrix;
        private final int mHeight;
        private ImageLoader mLoader;
        private final Paint mPaint = new Paint();
        private int mRotation;
        private final int mWidth;

        public LoaderDrawable(ContentResolver contentResolver, int i, int i2) {
            Paint paint = new Paint();
            this.mDebugPaint = paint;
            this.mDrawMatrix = new Matrix();
            this.mRotation = 0;
            this.mContentResolver = contentResolver;
            paint.setColor(-65536);
            paint.setTextSize(18.0f);
            this.mWidth = i;
            this.mHeight = i2;
        }

        private void setBitmap(Bitmap bitmap) {
            if (bitmap != this.mBitmap) {
                this.mBitmap = bitmap;
                updateDrawMatrix(getBounds());
            }
        }

        private void updateDrawMatrix(Rect rect) {
            int i;
            float f2;
            if (this.mBitmap == null || rect.isEmpty()) {
                this.mDrawMatrix.reset();
                return;
            }
            float width = this.mBitmap.getWidth();
            float height = this.mBitmap.getHeight();
            int iWidth = rect.width();
            float fHeight = rect.height();
            float f3 = iWidth;
            int i2 = 0;
            if (width * fHeight > f3 * height) {
                f2 = fHeight / height;
                i2 = (int) (((f3 - (width * f2)) * 0.5f) + 0.5f);
                i = 0;
            } else {
                float f4 = f3 / width;
                i = (int) (((fHeight - (height * f4)) * 0.5f) + 0.5f);
                f2 = f4;
            }
            this.mDrawMatrix.setScale(f2, f2);
            this.mDrawMatrix.postTranslate(i2, i);
            invalidateSelf();
        }

        protected abstract Bitmap checkBitmapCache(int i, long j);

        protected abstract ImageLoader createThumbnailLoader();

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Rect bounds = getBounds();
            if (this.mBitmap == null) {
                this.mPaint.setColor(-3355444);
                canvas.drawRect(bounds, this.mPaint);
                return;
            }
            canvas.save();
            canvas.clipRect(bounds);
            canvas.concat(this.mDrawMatrix);
            canvas.rotate(this.mRotation, bounds.centerX(), bounds.centerY());
            canvas.drawBitmap(this.mBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.mPaint);
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.mHeight;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.mWidth;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            Bitmap bitmap = this.mBitmap;
            return (bitmap == null || bitmap.hasAlpha() || this.mPaint.getAlpha() < 255) ? -3 : -1;
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            updateDrawMatrix(getBounds());
        }

        @Override // java.lang.Runnable
        public void run() {
            setBitmap(this.mLoader.getBitmap());
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            if (i != this.mPaint.getAlpha()) {
                this.mPaint.setAlpha(i);
                invalidateSelf();
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.mPaint.setColorFilter(colorFilter);
            invalidateSelf();
        }

        public void startLoad(int i, int i2, long j) {
            ImageLoader imageLoader = this.mLoader;
            if (imageLoader != null) {
                imageLoader.cancelLoad();
            }
            Bitmap bitmapCheckBitmapCache = checkBitmapCache(i2, j);
            if (bitmapCheckBitmapCache == null) {
                this.mBitmap = null;
                ImageLoader imageLoaderCreateThumbnailLoader = createThumbnailLoader();
                this.mLoader = imageLoaderCreateThumbnailLoader;
                imageLoaderCreateThumbnailLoader.startLoad(i, i2, j);
            } else {
                setBitmap(bitmapCheckBitmapCache);
            }
            invalidateSelf();
        }
    }

    public static class MediaInfo {
        public String data;
        public String displayName;
        public int height;
        public long id;
        public int mediaType;
        public String mime;
        public String title;
        public int width;

        private String mediaType() {
            int i = this.mediaType;
            if (i == 0) {
                return "none";
            }
            if (i == 1) {
                return "image";
            }
            if (i == 2) {
                return "audio";
            }
            if (i != 3) {
                return i != 4 ? String.format(Locale.US, "unknown:%d", Integer.valueOf(i)) : "playlist";
            }
            return "video";
        }

        protected MediaInfo loadFromCursor(Cursor cursor) {
            if (cursor != null) {
                this.id = cursor.getLong(0);
                this.data = cursor.getString(4);
                this.title = cursor.getString(1);
                this.mime = cursor.getString(3);
                this.displayName = cursor.getString(5);
                this.mediaType = cursor.getInt(2);
                try {
                    this.width = cursor.getInt(6);
                    this.height = cursor.getInt(7);
                } catch (Exception unused) {
                }
            }
            return this;
        }

        public String toString() {
            return String.format("MediaInfo(title=%s,displayName=%s, mediaType=%s,mime=%s,data=%s)", this.title, this.displayName, mediaType(), this.mime, this.data);
        }
    }

    protected static final int calcSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3;
        int i4 = options.outWidth;
        int i5 = options.outHeight;
        if (i <= 0) {
            i3 = i2 > 0 ? (int) ((i4 * i2) / i5) : i4;
        } else {
            i3 = i;
        }
        if (i2 <= 0) {
            i2 = i > 0 ? (int) ((i * i5) / i5) : i5;
        }
        if (i5 > i2 || i4 > i3) {
            return i4 > i5 ? Math.round(i5 / i2) : Math.round(i4 / i3);
        }
        return 1;
    }

    protected static final Bitmap getImage(ContentResolver contentResolver, long j, int i, int i2) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, j), "r");
        Bitmap bitmapDecodeFileDescriptor = null;
        if (parcelFileDescriptorOpenFileDescriptor != null) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor(), null, options);
                options.inSampleSize = calcSampleSize(options, i, i2);
                options.inJustDecodeBounds = false;
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor(), null, options);
            } finally {
                parcelFileDescriptorOpenFileDescriptor.close();
            }
        }
        return bitmapDecodeFileDescriptor;
    }
}
