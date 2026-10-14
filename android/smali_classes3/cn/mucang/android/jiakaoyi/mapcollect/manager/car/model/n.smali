.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/n;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/n;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/n;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/n;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Ljava/util/List;)V

    return-void
.end method
