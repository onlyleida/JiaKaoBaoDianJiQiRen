.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

.field public final synthetic b:I

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;ILcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h0;->b:I

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h0;->c:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h0;->b:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h0;->c:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->s(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;ILcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V

    return-void
.end method
