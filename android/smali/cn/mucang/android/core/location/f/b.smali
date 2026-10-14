.class public final synthetic Lcn/mucang/android/core/location/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/location/f/c;

.field public final synthetic b:[Lcom/amap/api/location/AMapLocationClient;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic d:[Lcn/mucang/android/core/location/c;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/location/f/c;[Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/location/f/b;->a:Lcn/mucang/android/core/location/f/c;

    iput-object p2, p0, Lcn/mucang/android/core/location/f/b;->b:[Lcom/amap/api/location/AMapLocationClient;

    iput-object p3, p0, Lcn/mucang/android/core/location/f/b;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcn/mucang/android/core/location/f/b;->d:[Lcn/mucang/android/core/location/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/core/location/f/b;->a:Lcn/mucang/android/core/location/f/c;

    iget-object v1, p0, Lcn/mucang/android/core/location/f/b;->b:[Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p0, Lcn/mucang/android/core/location/f/b;->c:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcn/mucang/android/core/location/f/b;->d:[Lcn/mucang/android/core/location/c;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/core/location/f/c;->k([Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V

    return-void
.end method
