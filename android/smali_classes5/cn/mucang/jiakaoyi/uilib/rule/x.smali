.class public final synthetic Lcn/mucang/jiakaoyi/uilib/rule/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/rule/k0;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/base/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/x;->a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/x;->b:Lcn/mucang/jiakaoyi/uilib/rule/k0;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/rule/x;->c:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/x;->a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/x;->b:Lcn/mucang/jiakaoyi/uilib/rule/k0;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/x;->c:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/rule/k0;->p(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method
