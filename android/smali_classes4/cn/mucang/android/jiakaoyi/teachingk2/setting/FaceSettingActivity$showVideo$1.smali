.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->A(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$TestListener;",
        "bmp",
        "Landroid/graphics/Bitmap;",
        "getBmp",
        "()Landroid/graphics/Bitmap;",
        "setBmp",
        "(Landroid/graphics/Bitmap;)V",
        "showBrightnessImg",
        "",
        "mat",
        "Lorg/opencv/core/Mat;",
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


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;->b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/opencv/core/Mat;)V
    .locals 6

    const-string v0, "mat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->width()I

    move-result v0

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;->a:Landroid/graphics/Bitmap;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;->b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {p1}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1$showBrightnessImg$1;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;->b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1$showBrightnessImg$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
