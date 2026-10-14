.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/render/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/e;->a:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/e;->a:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;)V

    return-void
.end method
