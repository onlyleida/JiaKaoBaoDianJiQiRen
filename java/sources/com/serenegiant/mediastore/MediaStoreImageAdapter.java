package com.serenegiant.mediastore;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import com.serenegiant.common.R;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class MediaStoreImageAdapter extends PagerAdapter {
    private static final boolean DEBUG = false;
    private static final String TAG = "MediaStoreImageAdapter";
    protected ChangeObserver mChangeObserver;
    private final ContentResolver mCr;
    private Cursor mCursor;
    protected DataSetObserver mDataSetObserver;
    protected boolean mDataValid;
    private final LayoutInflater mInflater;
    private final int mLayoutId;
    private final MyAsyncQueryHandler mQueryHandler;
    protected int mRowIDColumn;
    private String mSelection;
    private String[] mSelectionArgs;
    private boolean mShowTitle;

    private class ChangeObserver extends ContentObserver {
        public ChangeObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            MediaStoreImageAdapter.this.startQuery();
        }
    }

    private static class ImageLoaderDrawable extends MediaStoreHelper.LoaderDrawable {
        public ImageLoaderDrawable(ContentResolver contentResolver, int i, int i2) {
            super(contentResolver, i, i2);
        }

        @Override // com.serenegiant.mediastore.MediaStoreHelper.LoaderDrawable
        protected Bitmap checkBitmapCache(int i, long j) {
            return null;
        }

        @Override // com.serenegiant.mediastore.MediaStoreHelper.LoaderDrawable
        protected MediaStoreHelper.ImageLoader createThumbnailLoader() {
            return new MyImageLoader(this);
        }
    }

    private static final class MyAsyncQueryHandler extends AsyncQueryHandler {
        private final MediaStoreImageAdapter mAdapter;

        public MyAsyncQueryHandler(ContentResolver contentResolver, MediaStoreImageAdapter mediaStoreImageAdapter) {
            super(contentResolver);
            this.mAdapter = mediaStoreImageAdapter;
        }

        @Override // android.content.AsyncQueryHandler
        protected void onQueryComplete(int i, Object obj, Cursor cursor) {
            Cursor cursorSwapCursor = this.mAdapter.swapCursor(cursor);
            if (cursorSwapCursor == null || cursorSwapCursor.isClosed()) {
                return;
            }
            cursorSwapCursor.close();
        }

        public void requery() {
            synchronized (this.mAdapter) {
                MediaStoreImageAdapter mediaStoreImageAdapter = this.mAdapter;
                startQuery(0, mediaStoreImageAdapter, MediaStoreHelper.QUERY_URI, MediaStoreHelper.PROJ_MEDIA, mediaStoreImageAdapter.mSelection, this.mAdapter.mSelectionArgs, null);
            }
        }
    }

    private class MyDataSetObserver extends DataSetObserver {
        private MyDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            MediaStoreImageAdapter mediaStoreImageAdapter = MediaStoreImageAdapter.this;
            mediaStoreImageAdapter.mDataValid = true;
            mediaStoreImageAdapter.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            MediaStoreImageAdapter mediaStoreImageAdapter = MediaStoreImageAdapter.this;
            mediaStoreImageAdapter.mDataValid = false;
            mediaStoreImageAdapter.notifyDataSetInvalidated();
        }
    }

    private static class MyImageLoader extends MediaStoreHelper.ImageLoader {
        public MyImageLoader(ImageLoaderDrawable imageLoaderDrawable) {
            super(imageLoaderDrawable);
        }

        @Override // com.serenegiant.mediastore.MediaStoreHelper.ImageLoader
        protected Bitmap loadBitmap(ContentResolver contentResolver, int i, int i2, long j, int i3, int i4) {
            Bitmap image;
            try {
                image = MediaStoreHelper.getImage(contentResolver, j, i3, i4);
                if (image != null) {
                    try {
                        int width = image.getWidth();
                        int height = image.getHeight();
                        Rect rect = new Rect();
                        this.mParent.copyBounds(rect);
                        int iCenterX = rect.centerX();
                        int iCenterY = rect.centerY();
                        rect.set(iCenterX - (width / 2), iCenterY - (height / width), iCenterX + (width / 2), iCenterY + (height / 2));
                        this.mParent.onBoundsChange(rect);
                    } catch (IOException e2) {
                        e = e2;
                        Log.w(MediaStoreImageAdapter.TAG, e);
                    }
                }
            } catch (IOException e3) {
                e = e3;
                image = null;
            }
            return image;
        }
    }

    private static final class ViewHolder {
        MediaStoreHelper.MediaInfo info;
        ImageView mImageView;
        TextView mTitleView;

        private ViewHolder() {
        }
    }

    public MediaStoreImageAdapter(Context context, int i) {
        this(context, i, true);
    }

    protected void changeCursor(Cursor cursor) {
        Cursor cursorSwapCursor = swapCursor(cursor);
        if (cursorSwapCursor == null || cursorSwapCursor.isClosed()) {
            return;
        }
        cursorSwapCursor.close();
    }

    protected MediaStoreHelper.LoaderDrawable createLoaderDrawable(ContentResolver contentResolver, MediaStoreHelper.MediaInfo mediaInfo) {
        return new ImageLoaderDrawable(contentResolver, mediaInfo.width, mediaInfo.height);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (obj instanceof View) {
            viewGroup.removeView((View) obj);
        }
    }

    protected void finalize() throws Throwable {
        changeCursor(null);
        super.finalize();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        Cursor cursor;
        if (!this.mDataValid || (cursor = this.mCursor) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    protected Cursor getCursor(int i) {
        Cursor cursor;
        if (!this.mDataValid || (cursor = this.mCursor) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.mCursor;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return super.getItemPosition(obj);
    }

    public int getItemPositionFromID(long j) {
        Cursor cursorQuery = this.mCr.query(MediaStoreHelper.QUERY_URI, MediaStoreHelper.PROJ_MEDIA, this.mSelection, this.mSelectionArgs, null);
        int i = -1;
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    int i2 = 0;
                    while (cursorQuery.getLong(0) != j) {
                        if (cursorQuery.moveToNext()) {
                            i2++;
                        }
                    }
                    i = i2;
                }
            } finally {
                cursorQuery.close();
            }
        }
        return i;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View viewInflate = this.mInflater.inflate(this.mLayoutId, viewGroup, false);
        if (viewInflate != null) {
            viewGroup.addView(viewInflate);
            ViewHolder viewHolder = (ViewHolder) viewInflate.getTag();
            if (viewHolder == null) {
                viewHolder = new ViewHolder();
            }
            TextView textView = (TextView) viewInflate.findViewById(R.id.title);
            viewHolder.mTitleView = textView;
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.thumbnail);
            viewHolder.mImageView = imageView;
            if (viewHolder.info == null) {
                viewHolder.info = new MediaStoreHelper.MediaInfo();
            }
            viewHolder.info.loadFromCursor(getCursor(i));
            Drawable drawable = imageView.getDrawable();
            if (!(drawable instanceof MediaStoreHelper.LoaderDrawable)) {
                drawable = createLoaderDrawable(this.mCr, viewHolder.info);
                imageView.setImageDrawable(drawable);
            }
            MediaStoreHelper.MediaInfo mediaInfo = viewHolder.info;
            ((MediaStoreHelper.LoaderDrawable) drawable).startLoad(mediaInfo.mediaType, 0, mediaInfo.id);
            if (textView != null) {
                textView.setVisibility(this.mShowTitle ? 0 : 8);
                if (this.mShowTitle) {
                    textView.setText(viewHolder.info.title);
                }
            }
        }
        return viewInflate;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view.equals(obj);
    }

    public void notifyDataSetInvalidated() {
    }

    public void startQuery() {
        this.mQueryHandler.requery();
    }

    protected Cursor swapCursor(Cursor cursor) {
        Cursor cursor2 = this.mCursor;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            ChangeObserver changeObserver = this.mChangeObserver;
            if (changeObserver != null) {
                cursor2.unregisterContentObserver(changeObserver);
            }
            DataSetObserver dataSetObserver = this.mDataSetObserver;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.mCursor = cursor;
        if (cursor != null) {
            ChangeObserver changeObserver2 = this.mChangeObserver;
            if (changeObserver2 != null) {
                cursor.registerContentObserver(changeObserver2);
            }
            DataSetObserver dataSetObserver2 = this.mDataSetObserver;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.mRowIDColumn = cursor.getColumnIndexOrThrow("_id");
            this.mDataValid = true;
            notifyDataSetChanged();
        } else {
            this.mRowIDColumn = -1;
            this.mDataValid = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    public MediaStoreImageAdapter(Context context, int i, boolean z) {
        this.mSelection = MediaStoreHelper.SELECTIONS[1];
        this.mSelectionArgs = null;
        this.mInflater = LayoutInflater.from(context);
        this.mLayoutId = i;
        ContentResolver contentResolver = context.getContentResolver();
        this.mCr = contentResolver;
        this.mQueryHandler = new MyAsyncQueryHandler(contentResolver, this);
        if (z) {
            startQuery();
        }
    }
}
