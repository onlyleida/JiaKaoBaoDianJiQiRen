.class public Lcom/serenegiant/mediastore/MediaStoreAdapter;
.super Landroidx/cursoradapter/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoader;,
        Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoaderDrawable;,
        Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;,
        Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;
    }
.end annotation


# static fields
.field private static final CACHE_RATE:I = 0x8

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static sThumbnailCache:Landroidx/collection/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

.field private final mCr:Landroid/content/ContentResolver;

.field private final mHashCode:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I

.field private mMediaInfoCursor:Landroid/database/Cursor;

.field private mMediaType:I

.field private final mMemClass:I

.field private final mQueryHandler:Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mShowTitle:Z

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroidx/cursoradapter/a/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailWidth:I

    iput v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailHeight:I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mHashCode:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mShowTitle:Z

    .line 5
    iput v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaType:I

    .line 6
    new-instance v0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    invoke-direct {v0}, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mCr:Landroid/content/ContentResolver;

    .line 9
    new-instance v1, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;

    invoke-direct {v1, v0, p0}, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/serenegiant/mediastore/MediaStoreAdapter;)V

    iput-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mQueryHandler:Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;

    const-string v0, "activity"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMemClass:I

    .line 11
    iput p2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mLayoutId:I

    .line 12
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->onContentChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/mediastore/MediaStoreAdapter;)Landroid/database/Cursor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaInfoCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/serenegiant/mediastore/MediaStoreAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaInfoCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/serenegiant/mediastore/MediaStoreAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/serenegiant/mediastore/MediaStoreAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mSelection:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/serenegiant/mediastore/MediaStoreAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaType:I

    return p0
.end method

.method static synthetic access$400(Lcom/serenegiant/mediastore/MediaStoreAdapter;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mSelectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/serenegiant/mediastore/MediaStoreAdapter;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mSelectionArgs:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(JJ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getKey(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Landroidx/collection/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getImageThumbnail(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getVideoThumbnail(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static clearBitmapCache(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    if-eqz v0, :cond_3

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/collection/e;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "%d_"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    sget-object v2, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    invoke-virtual {v2, v1}, Landroidx/collection/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroidx/collection/e;->evictAll()V

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    return-void
.end method

.method private final createBitmapCache(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->clearBitmapCache(I)V

    .line 3
    :cond_0
    sget-object p1, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    if-nez p1, :cond_1

    const/high16 p1, 0x100000

    .line 4
    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMemClass:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x8

    .line 5
    new-instance p1, Lcom/serenegiant/mediastore/MediaStoreAdapter$1;

    invoke-direct {p1, p0, v0}, Lcom/serenegiant/mediastore/MediaStoreAdapter$1;-><init>(Lcom/serenegiant/mediastore/MediaStoreAdapter;I)V

    sput-object p1, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    .line 6
    :cond_1
    invoke-static {}, Lcom/serenegiant/utils/ThreadPool;->preStartAllCoreThreads()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/collection/e;->evictAll()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    :cond_0
    return-void
.end method

.method private static final getImageThumbnail(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getKey(JJ)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    invoke-virtual {p2, p1}, Landroidx/collection/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_4

    if-lez p5, :cond_3

    if-gtz p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/16 v2, 0x60

    if-gt p5, v2, :cond_1

    if-gt p6, v2, :cond_1

    mul-int p5, p5, p6

    const/16 p6, 0x4000

    if-le p5, p6, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 3
    :cond_2
    :try_start_0
    invoke-static {p0, p3, p4, v1, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    .line 4
    :cond_3
    :goto_0
    invoke-static {p0, p3, p4, p5, p6}, Lcom/serenegiant/mediastore/MediaStoreHelper;->getImage(Landroid/content/ContentResolver;JII)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    move-object p2, p0

    :goto_2
    if-eqz p2, :cond_4

    .line 5
    sget-object p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p2
.end method

.method private static getKey(JJ)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%d_%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getVideoThumbnail(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getKey(JJ)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    invoke-virtual {p2, p1}, Landroidx/collection/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/16 v2, 0x60

    if-gt p5, v2, :cond_0

    if-gt p6, v2, :cond_0

    mul-int p5, p5, p6

    const/16 p6, 0x4000

    if-le p5, p6, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p0, p3, p4, v1, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    sget-object p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->sThumbnailCache:Landroidx/collection/e;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_2
    sget-object p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "failed to get video thumbnail ofr id="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object p2
.end method

.method private getViewHolder(Landroid/view/View;)Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;
    .locals 4

    .line 1
    sget v0, Lcom/serenegiant/common/R$id;->mediastorephotoadapter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;

    if-nez v1, :cond_3

    .line 2
    new-instance v1, Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;-><init>(Lcom/serenegiant/mediastore/MediaStoreAdapter$1;)V

    .line 3
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 4
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    sget v2, Lcom/serenegiant/common/R$id;->thumbnail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 7
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 9
    :cond_1
    sget v2, Lcom/serenegiant/common/R$id;->title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 10
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 11
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 12
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getViewHolder(Landroid/view/View;)Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 3
    iget-object p1, p1, Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    if-nez v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->createLoaderDrawable(Landroid/content/ContentResolver;)Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    check-cast v0, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    const/4 p2, 0x2

    .line 9
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iget v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mHashCode:I

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, p2, v1, v3, v4}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->startLoad(IIJ)V

    if-eqz p1, :cond_2

    .line 11
    iget-boolean p2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mShowTitle:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-boolean p2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mShowTitle:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 13
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected createLoaderDrawable(Landroid/content/ContentResolver;)Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;
    .locals 3

    .line 1
    new-instance v0, Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoaderDrawable;

    iget v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailWidth:I

    iget v2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailHeight:I

    invoke-direct {v0, p1, v1, v2}, Lcom/serenegiant/mediastore/MediaStoreAdapter$ThumbnailLoaderDrawable;-><init>(Landroid/content/ContentResolver;II)V

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/cursoradapter/a/a;->changeCursor(Landroid/database/Cursor;)V

    .line 2
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaInfoCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4
    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaInfoCursor:Landroid/database/Cursor;

    .line 5
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getImage(III)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Landroidx/cursoradapter/a/a;->getItemId(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2, p3}, Lcom/serenegiant/mediastore/MediaStoreHelper;->getImage(Landroid/content/ContentResolver;JII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Landroid/graphics/Bitmap;
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getMediaInfo(ILcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;)Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    .line 3
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    iget v0, v0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->mediaType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mCr:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mHashCode:I

    int-to-long v3, v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/cursoradapter/a/a;->getItemId(I)J

    move-result-wide v5

    iget v7, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailWidth:I

    iget v8, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailHeight:I

    .line 6
    invoke-static/range {v2 .. v8}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getImageThumbnail(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mCr:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mHashCode:I

    int-to-long v3, v0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/cursoradapter/a/a;->getItemId(I)J

    move-result-wide v5

    iget v7, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailWidth:I

    iget v8, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailHeight:I

    .line 11
    invoke-static/range {v2 .. v8}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getVideoThumbnail(Landroid/content/ContentResolver;JJII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 12
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 13
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getItem(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getMediaInfo(I)Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getMediaInfo(ILcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;)Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getMediaInfo(ILcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;)Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;
    .locals 7

    monitor-enter p0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance p2, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    invoke-direct {p2}, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;-><init>()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaInfoCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mCr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/serenegiant/mediastore/MediaStoreHelper;->QUERY_URI:Landroid/net/Uri;

    sget-object v3, Lcom/serenegiant/mediastore/MediaStoreHelper;->PROJ_MEDIA:[Ljava/lang/String;

    iget-object v4, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mSelection:Ljava/lang/String;

    iget-object v5, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaInfoCursor:Landroid/database/Cursor;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaInfoCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaInfoCursor:Landroid/database/Cursor;

    invoke-virtual {p2, p1}, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->loadFromCursor(Landroid/database/Cursor;)Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMediaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaType:I

    rem-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getPositionFromId(J)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/cursoradapter/a/a;->getCount()I

    move-result v0

    .line 2
    new-instance v1, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    invoke-direct {v1}, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p0, v2, v1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getMediaInfo(ILcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;)Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    .line 4
    iget-wide v3, v1, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->id:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method public getShowTitle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mShowTitle:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mLayoutId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->getViewHolder(Landroid/view/View;)Lcom/serenegiant/mediastore/MediaStoreAdapter$ViewHolder;

    return-object p1
.end method

.method protected onContentChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->createBitmapCache(Z)V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mQueryHandler:Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/serenegiant/mediastore/MediaStoreAdapter$MyAsyncQueryHandler;->requery()V

    return-void
.end method

.method public setMediaType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaType:I

    rem-int/lit8 p1, p1, 0x3

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mMediaType:I

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mShowTitle:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mShowTitle:Z

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public setThumbnailSize(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailHeight:I

    if-eq v0, p1, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailHeight:I

    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailWidth:I

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->createBitmapCache(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->onContentChanged()V

    :cond_1
    return-void
.end method

.method public setThumbnailSize(II)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailHeight:I

    if-eq v0, p2, :cond_1

    .line 6
    :cond_0
    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailWidth:I

    .line 7
    iput p2, p0, Lcom/serenegiant/mediastore/MediaStoreAdapter;->mThumbnailHeight:I

    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->createBitmapCache(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreAdapter;->onContentChanged()V

    :cond_1
    return-void
.end method
