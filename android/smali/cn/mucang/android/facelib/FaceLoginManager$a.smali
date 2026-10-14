.class public final Lcn/mucang/android/facelib/FaceLoginManager$a;
.super Lcn/mucang/jiakaoyi/uilib/login/face/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/facelib/FaceLoginManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000cH\u0016J(\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cH\u0016J \u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cH\u0016J\u0008\u0010\u0017\u001a\u00020\u0005H\u0016J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "cn/mucang/android/facelib/FaceLoginManager$faceMatchingListener$1",
        "Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;",
        "time",
        "",
        "onAngleWrong",
        "",
        "angleX",
        "",
        "angleY",
        "angleZ",
        "onBlurVar",
        "blur",
        "",
        "onBrightness",
        "brightness",
        "onCheckFace",
        "pos",
        "Lorg/opencv/core/Rect;",
        "landmark",
        "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;",
        "width",
        "height",
        "onCheckFarFace",
        "onCheckNoFace",
        "onCheckSuitableFace",
        "onHighLight",
        "highLightRate",
        "onSuccess",
        "face",
        "Landroid/graphics/Bitmap;",
        "result",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;",
        "facelib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/h;-><init>()V

    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager$a;->m()V

    return-void
.end method

.method public static synthetic k(Lorg/opencv/core/Rect;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/facelib/FaceLoginManager$a;->l(Lorg/opencv/core/Rect;I)V

    return-void
.end method

.method private static final l(Lorg/opencv/core/Rect;I)V
    .locals 3

    const-string v0, "$pos"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4eba\u8138"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "\u5339\u914d"

    goto :goto_0

    :cond_0
    const-string v1, "\u5b66\u4e60"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a\u4eba\u8138\u592a\u8fdc\u4e86 ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/opencv/core/Rect;->height:I

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static final m()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4eba\u8138"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "\u5339\u914d"

    goto :goto_0

    :cond_0
    const-string v1, "\u5b66\u4e60"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a\u6ca1\u68c0\u6d4b\u5230\u4eba\u8138"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/opencv/core/Rect;II)V
    .locals 2

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->a(Lorg/opencv/core/Rect;II)V

    .line 2
    :goto_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    const/16 v0, 0x7530

    new-instance v1, Lcn/mucang/android/facelib/d;

    invoke-direct {v1, p1, p3}, Lcn/mucang/android/facelib/d;-><init>(Lorg/opencv/core/Rect;I)V

    const-string p1, "onCheckFarFace"

    invoke-virtual {p2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public b(Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V
    .locals 1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landmark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->b(Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    sget-object v1, Lcn/mucang/android/facelib/c;->a:Lcn/mucang/android/facelib/c;

    const-string v2, "onCheckNoFace"

    const/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->c()V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->d(I)V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->e(I)V

    :goto_0
    return-void
.end method

.method public f(FFF)V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->f(FFF)V

    .line 2
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/facelib/FaceLoginManager$a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u5ea6\u4e0d\u5408\u9002\uff0c angleX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", Y:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", Z:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/facelib/FaceLoginManager$a;->a:J

    :cond_1
    return-void
.end method

.method public g(Lorg/opencv/core/Rect;)V
    .locals 1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->g(Lorg/opencv/core/Rect;)V

    :goto_0
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->h(I)V

    :goto_0
    return-void
.end method

.method public i(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 2

    const-string v0, "face"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->l()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->i(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V

    .line 2
    :goto_0
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->j()Lcn/mucang/android/facelib/TimeOut;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/facelib/TimeOut;->f()V

    .line 4
    :goto_1
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->i()Lcn/mucang/android/facelib/w/c/b;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/facelib/w/c/b;->d(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V

    goto :goto_3

    .line 5
    :cond_3
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 6
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->h()Lcn/mucang/android/facelib/TimeOut;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/facelib/TimeOut;->f()V

    .line 7
    :goto_2
    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->g()Lcn/mucang/android/facelib/w/b/a;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/facelib/w/b/a;->d(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V

    :cond_6
    :goto_3
    return-void
.end method
