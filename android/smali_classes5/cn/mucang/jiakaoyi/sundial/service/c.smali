.class public final Lcn/mucang/jiakaoyi/sundial/service/c;
.super Lcn/mucang/sundial/library/device/SundialDevice;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J.\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\rH\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\"\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/service/JkySundialDevice;",
        "Lcn/mucang/sundial/library/device/SundialDevice;",
        "()V",
        "<set-?>",
        "Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyDataStrategy;",
        "data",
        "getData",
        "()Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyDataStrategy;",
        "Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyLocationStrategy;",
        "location",
        "getLocation",
        "()Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyLocationStrategy;",
        "allowGotoBackground",
        "",
        "cameraUtil",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "cameraResult",
        "Lcn/mucang/sundial/library/device/CameraResult;",
        "textureView",
        "Landroid/view/TextureView;",
        "frameLayout",
        "Landroid/widget/FrameLayout;",
        "needPreview",
        "dataStrategy",
        "Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;",
        "gotoBackground",
        "",
        "context",
        "Landroid/content/Context;",
        "locationStrategy",
        "Lcn/mucang/sundial/android/location/LocationStrategy;",
        "sundial_release"
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
.field private a:Lcn/mucang/jiakaoyi/sundial/service/strategy/d;

.field private b:Lcn/mucang/jiakaoyi/sundial/service/strategy/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/device/SundialDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/jiakaoyi/sundial/service/strategy/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/c;->a:Lcn/mucang/jiakaoyi/sundial/service/strategy/d;

    return-object v0
.end method

.method public allowGotoBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcn/mucang/jiakaoyi/sundial/service/strategy/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/c;->b:Lcn/mucang/jiakaoyi/sundial/service/strategy/e;

    return-object v0
.end method

.method public cameraUtil(Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;-><init>(Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)V

    return-object v0
.end method

.method public dataStrategy()Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/c;->a:Lcn/mucang/jiakaoyi/sundial/service/strategy/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/d;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/c;->a:Lcn/mucang/jiakaoyi/sundial/service/strategy/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/c;->a:Lcn/mucang/jiakaoyi/sundial/service/strategy/d;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public gotoBackground(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/sundial/library/device/SundialDevice;->gotoBackground(Landroid/content/Context;)V

    const-string v0, "SundialLog"

    const-string v1, "gotoBackground"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/d;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public locationStrategy(Landroid/content/Context;)Lcn/mucang/sundial/android/location/LocationStrategy;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/c;->b:Lcn/mucang/jiakaoyi/sundial/service/strategy/e;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/jiakaoyi/sundial/service/strategy/e;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/sundial/service/strategy/e;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/c;->b:Lcn/mucang/jiakaoyi/sundial/service/strategy/e;

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/c;->b:Lcn/mucang/jiakaoyi/sundial/service/strategy/e;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    return-object p1
.end method
