.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;->b:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->f(Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V

    return-void
.end method
