.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/f;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/f;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/f;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/f;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;)V

    return-void
.end method
