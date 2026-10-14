.class public final Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/render/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000c\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u00002\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000bR\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender$Builder;",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "mapView",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
        "(Landroidx/lifecycle/LifecycleOwner;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V",
        "loadFinishCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "renderFlag",
        "",
        "build",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;",
        "setFinishCallback",
        "callback",
        "setRenderFlag",
        "flag",
        "mapcollect_release"
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
.field private final a:Landroidx/lifecycle/r;

.field private final b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private c:I

.field private d:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->a:Landroidx/lifecycle/r;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/mapcollect/render/g;
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->a:Landroidx/lifecycle/r;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->c:I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;-><init>(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILcn/mucang/android/jiakaoyi/framework/h/b;Lkotlin/jvm/internal/o;)V

    return-object v6
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object p0
.end method

.method public final c(I)Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g$a;->c:I

    return-object p0
.end method
