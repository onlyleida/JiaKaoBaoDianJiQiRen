.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/q0;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/q0;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/q0;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/q0;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->s(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V

    return-void
.end method
