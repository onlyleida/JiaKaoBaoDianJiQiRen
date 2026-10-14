.class public Lcn/mucang/android/image/view/MucangCircleImageView;
.super Lcn/mucang/android/image/view/MucangImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/image/view/MucangImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/image/view/MucangCircleImageView$a;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    .line 3
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 4
    const-class v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p2, v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_0

    .line 5
    :pswitch_0
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    aput-object v4, v3, v2

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 7
    const-class v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p2, v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_0

    .line 8
    :pswitch_1
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    aput-object v4, v3, v2

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 9
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 10
    const-class v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p2, v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_0

    .line 11
    :pswitch_2
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v4, v3, v2

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 12
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 13
    const-class v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p2, v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 14
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/mucang/android/image/view/MucangImageView;->a(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
