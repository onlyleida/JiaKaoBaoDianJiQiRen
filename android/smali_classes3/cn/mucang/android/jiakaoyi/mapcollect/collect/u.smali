.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->K(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;)V

    return-void
.end method
