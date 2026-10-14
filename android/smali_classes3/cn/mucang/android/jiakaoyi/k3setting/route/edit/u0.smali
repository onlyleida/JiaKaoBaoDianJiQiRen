.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e1;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e1;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/u0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e1;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/u0;->b:Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/u0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/u0;->b:Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e1;->o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e1;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;Landroid/view/View;)V

    return-void
.end method
