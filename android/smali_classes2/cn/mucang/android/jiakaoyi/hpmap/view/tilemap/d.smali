.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->d(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
