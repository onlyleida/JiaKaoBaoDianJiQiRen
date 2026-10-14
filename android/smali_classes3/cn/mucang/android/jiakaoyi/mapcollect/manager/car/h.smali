.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/h;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V

    return-void
.end method
