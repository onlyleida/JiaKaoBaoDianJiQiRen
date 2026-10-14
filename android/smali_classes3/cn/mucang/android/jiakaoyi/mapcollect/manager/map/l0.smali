.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/l0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/l0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;->y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method
