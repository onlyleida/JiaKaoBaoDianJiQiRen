.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;
.super Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0014R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/SurfaceEncoder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder;",
        "filePath",
        "",
        "width",
        "",
        "height",
        "(Ljava/lang/String;II)V",
        "prepare",
        "",
        "release",
        "Companion",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final p:Z


# instance fields
.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;->p:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;-><init>()V

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;->n:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;->o:I

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->k(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;->p:Z

    const-string v2, "SurfaceEncoder"

    if-eqz v0, :cond_0

    const-string v3, "prepare:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, -0x1

    .line 2
    iput v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->g:I

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->f:Z

    const/4 v4, 0x1

    .line 4
    iput-boolean v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    .line 5
    iput-boolean v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->e:Z

    const-string v5, "video/avc"

    .line 6
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->i(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "Unable to find an appropriate codec for video/avc"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "selected codec: "

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 10
    iget v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;->n:I

    iget v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;->o:I

    invoke-static {v5, v0, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    const-string v0, "createVideoFormat(MIME_TYPE, width, height)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {v6, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    move-object v0, v8

    :cond_3
    move-object v9, v0

    check-cast v9, [I

    if-nez v9, :cond_5

    :cond_4
    move-object v0, v8

    goto :goto_3

    .line 12
    :cond_5
    array-length v0, v9

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_4

    aget v10, v9, v6

    const/16 v11, 0x15

    if-ne v10, v11, :cond_6

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_3
    if-nez v0, :cond_c

    if-nez v9, :cond_9

    :cond_8
    move-object v0, v8

    goto :goto_6

    .line 13
    :cond_9
    array-length v0, v9

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v0, :cond_8

    aget v10, v9, v6

    const v11, 0x7f420888

    if-ne v10, v11, :cond_a

    const/4 v11, 0x1

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    if-nez v0, :cond_e

    if-nez v9, :cond_d

    goto :goto_7

    :cond_d
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    const-string v10, "\uff0c"

    .line 14
    invoke-static/range {v9 .. v17}, Lkotlin/collections/k;->M([ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_7
    const-string v0, "\u627e\u4e0d\u5230\u652f\u6301\u7684colorFormats\uff0c"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "color-format"

    invoke-virtual {v7, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x2

    const-string v6, "bitrate-mode"

    .line 16
    invoke-virtual {v7, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v0, 0x7a120

    const-string v6, "bitrate"

    .line 17
    invoke-virtual {v7, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0xa

    const-string v6, "frame-rate"

    .line 18
    invoke-virtual {v7, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    .line 19
    invoke-virtual {v7, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 20
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;->p:Z

    if-eqz v0, :cond_f

    const-string v6, "format: "

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_f
    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    .line 22
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v5, v7, v8, v8, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 23
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    if-eqz v0, :cond_10

    .line 24
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->k:Ljava/lang/String;

    const-string v4, "output will go to "

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_10
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->k:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->l:Landroid/media/MediaMuxer;

    .line 26
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->i:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;

    if-eqz v0, :cond_11

    .line 27
    :try_start_1
    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 28
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_8
    return-void
.end method

.method protected h()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceEncoder"

    const-string v1, "release:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    const-string v1, "mSync"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
