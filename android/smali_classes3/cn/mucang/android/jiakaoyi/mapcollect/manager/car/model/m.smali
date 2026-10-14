.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/m;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/m;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->w(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method
