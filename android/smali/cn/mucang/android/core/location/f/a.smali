.class public final synthetic Lcn/mucang/android/core/location/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/location/f/c$a;

.field public final synthetic b:[Lcom/amap/api/location/AMapLocationClient;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/location/f/c$a;[Lcom/amap/api/location/AMapLocationClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/location/f/a;->a:Lcn/mucang/android/core/location/f/c$a;

    iput-object p2, p0, Lcn/mucang/android/core/location/f/a;->b:[Lcom/amap/api/location/AMapLocationClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/location/f/a;->a:Lcn/mucang/android/core/location/f/c$a;

    iget-object v1, p0, Lcn/mucang/android/core/location/f/a;->b:[Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/location/f/c$a;->c([Lcom/amap/api/location/AMapLocationClient;)V

    return-void
.end method
