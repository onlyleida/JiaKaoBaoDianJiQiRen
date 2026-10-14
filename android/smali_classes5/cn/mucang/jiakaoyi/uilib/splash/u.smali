.class public final synthetic Lcn/mucang/jiakaoyi/uilib/splash/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/u;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/u;->b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/u;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/u;->b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->A(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method
