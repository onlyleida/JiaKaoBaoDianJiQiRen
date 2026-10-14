.class public Lf/a/a/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/widget/ImageView;)Lcom/bumptech/glide/load/MultiTransformation;
    .locals 4

    .line 1
    sget-object v0, Lf/a/a/b/a/a$a;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    const/4 v3, 0x4

    if-eq p0, v3, :cond_0

    .line 2
    new-instance p0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v3, v1, v0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    aput-object v3, v1, v0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    return-object p0
.end method

.method private static b(Landroid/widget/ImageView;I)Lcom/bumptech/glide/load/MultiTransformation;
    .locals 4

    .line 1
    sget-object v0, Lf/a/a/b/a/a$a;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v3, 0x3

    if-eq p0, v3, :cond_1

    const/4 v3, 0x4

    if-eq p0, v3, :cond_1

    const/4 v3, 0x6

    if-eq p0, v3, :cond_0

    .line 2
    new-instance p0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v3, v1, v0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    aput-object v3, v1, v0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    aput-object v3, v1, v0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lf/a/a/b/a/a;->d(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    const-class v6, Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lf/a/a/b/a/a;->e(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/d;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    if-nez p5, :cond_2

    .line 3
    new-instance p5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p5, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 4
    :cond_2
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, p5}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    const-wide/16 p5, 0x0

    const-string p1, "Exception"

    cmp-long v1, p2, p5

    if-lez v1, :cond_3

    if-eqz p4, :cond_3

    .line 7
    :try_start_0
    invoke-interface {p0, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static f(Landroid/widget/ImageView;Ljava/lang/Object;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/request/RequestListener;ZI)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 2
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    :cond_2
    if-lez p3, :cond_3

    .line 3
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    :cond_3
    if-lez p4, :cond_4

    .line 4
    invoke-virtual {p2, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    :cond_4
    const/4 p3, 0x0

    if-eqz p6, :cond_5

    .line 5
    invoke-static {p0}, Lf/a/a/b/a/a;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/load/MultiTransformation;

    move-result-object p3

    goto :goto_0

    :cond_5
    if-lez p7, :cond_6

    .line 6
    invoke-static {p0, p7}, Lf/a/a/b/a/a;->b(Landroid/widget/ImageView;I)Lcom/bumptech/glide/load/MultiTransformation;

    move-result-object p3

    :cond_6
    :goto_0
    if-eqz p3, :cond_7

    .line 7
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    .line 8
    const-class p4, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    new-instance p6, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    invoke-direct {p6, p3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p2, p4, p6}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    .line 9
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    if-eqz p5, :cond_8

    .line 10
    invoke-virtual {p1, p5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 11
    :cond_8
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static g(Landroid/widget/ImageView;Ljava/lang/String;IILcom/bumptech/glide/request/RequestListener;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v7}, Lf/a/a/b/a/a;->f(Landroid/widget/ImageView;Ljava/lang/Object;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/request/RequestListener;ZI)V

    return-void
.end method

.method public static h(Landroid/widget/ImageView;Ljava/io/File;I)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 1
    invoke-static/range {v0 .. v7}, Lf/a/a/b/a/a;->f(Landroid/widget/ImageView;Ljava/lang/Object;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/request/RequestListener;ZI)V

    return-void
.end method

.method public static i(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 1
    invoke-static/range {v0 .. v7}, Lf/a/a/b/a/a;->f(Landroid/widget/ImageView;Ljava/lang/Object;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/request/RequestListener;ZI)V

    return-void
.end method

.method public static j(Landroid/widget/ImageView;Ljava/lang/String;ILcom/bumptech/glide/request/RequestListener;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 1
    invoke-static/range {v0 .. v7}, Lf/a/a/b/a/a;->f(Landroid/widget/ImageView;Ljava/lang/Object;Lcom/bumptech/glide/request/RequestOptions;IILcom/bumptech/glide/request/RequestListener;ZI)V

    return-void
.end method
