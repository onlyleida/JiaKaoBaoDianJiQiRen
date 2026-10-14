.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$c;
.super Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initView$4",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$SimpleWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "k3setting_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$c;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$a;->afterTextChanged(Landroid/text/Editable;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$c;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->K(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/text/l;->i(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setStepDistance(F)V

    :goto_1
    return-void
.end method
