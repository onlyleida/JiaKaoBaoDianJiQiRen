.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/k0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/e;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/e;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method
