.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$6$1;->b(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V

    return-void
.end method
