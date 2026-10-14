.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/b;->a:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/b;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/b;->a:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/b;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e;->q(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e;Landroid/view/View;)V

    return-void
.end method
