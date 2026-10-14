.class public final synthetic Lcn/mucang/jiakaoyi/uilib/activate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/b;->a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/b;->a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->u(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method
