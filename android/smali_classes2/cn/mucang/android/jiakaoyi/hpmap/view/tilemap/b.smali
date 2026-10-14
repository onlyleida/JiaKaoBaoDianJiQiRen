.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->n(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method
