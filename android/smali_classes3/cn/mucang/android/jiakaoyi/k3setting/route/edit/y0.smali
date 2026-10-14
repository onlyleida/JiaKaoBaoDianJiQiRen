.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g1;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g1;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/y0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g1;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/y0;->b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/y0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/y0;->b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g1;->o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g1;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V

    return-void
.end method
