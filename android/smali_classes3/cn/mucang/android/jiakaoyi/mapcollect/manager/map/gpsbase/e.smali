.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/e;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/e;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Ljava/util/List;)V

    return-void
.end method
