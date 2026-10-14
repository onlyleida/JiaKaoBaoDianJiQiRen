.class public final Lcn/mucang/android/facelib/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/facelib/v;->g(Lkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/facelib/TfLitePool$getDetector$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic a:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/facelib/y/e;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/b/l;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/facelib/y/e;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/facelib/v$a;->a:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lcn/mucang/android/facelib/v$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcn/mucang/android/facelib/v$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/v;->a()Lcn/mucang/android/facelib/y/e;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    sget-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    iget-object v0, p0, Lcn/mucang/android/facelib/v$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const-string v2, "\u521d\u59cb\u5316Tensorflow"

    .line 3
    invoke-static {v2}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "mobile_face_net.tflite"

    const/16 v4, 0x70

    .line 5
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    invoke-static {v2, v3, v4, v0, v1}, Lcn/mucang/android/facelib/y/f;->b(Landroid/content/res/AssetManager;Ljava/lang/String;IZZ)Lcn/mucang/android/facelib/y/e;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/facelib/v$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcn/mucang/android/facelib/v$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    iput-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 10
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tensorflow\u521d\u59cb\u5316\u5931\u8d25, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v2, 0xff1a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/facelib/y/e;

    const-string v1, "Tensorflow\u521d\u59cb\u5316\u6210\u529f"

    .line 13
    invoke-static {v1}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    check-cast v0, Lcn/mucang/android/facelib/y/e;

    .line 15
    invoke-static {v0}, Lcn/mucang/android/facelib/v;->e(Lcn/mucang/android/facelib/y/e;)V

    .line 16
    :cond_3
    invoke-static {}, Lcn/mucang/android/facelib/v;->a()Lcn/mucang/android/facelib/y/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcn/mucang/android/facelib/v$a;->a:Lkotlin/jvm/b/l;

    invoke-static {}, Lcn/mucang/android/facelib/v;->a()Lcn/mucang/android/facelib/y/e;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/facelib/v$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v1, :cond_6

    add-int/lit8 v1, v1, -0x1

    .line 19
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 20
    invoke-static {}, Lcn/mucang/android/facelib/v;->b()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_1
    return-void
.end method
